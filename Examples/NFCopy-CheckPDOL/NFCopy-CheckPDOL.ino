/**
 * Example to read a Visa NFC card  
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

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_PN532.h>

#define PN532_SCK  (17)
#define PN532_MOSI (16)
#define PN532_SS   (18)
#define PN532_MISO (19)

#define L1         (14) //LED1 indicates activity
#define L2         (5)  //LED2 indicates the emulation process 
#define L3         (4)  

#define NPIN       (27) //NFC Button

Adafruit_PN532 nfc(PN532_SCK, PN532_MISO, PN532_MOSI, PN532_SS);

void setup(){
  pinMode(L1, OUTPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, OUTPUT);
  pinMode(NPIN, INPUT_PULLUP);

  Serial.begin(115200);
  //while(!Serial){}
  Serial.println("Hello!");

  nfc.begin();

  uint32_t versiondata = nfc.getFirmwareVersion();
  if (! versiondata) {
    Serial.print("Didn't find PN53x board");
    while (1); // halt
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

}

void blink(int pin, int msdelay, int times){
  for (int i = 0; i < times; i++){
    digitalWrite(pin, HIGH);
    delay(msdelay);
    digitalWrite(pin, LOW);
    delay(msdelay);
  }
}

void printData(uint8_t* buff, uint8_t lenbuffer, bool cmd){
  char tmp[1];
  
  if (cmd)
    Serial.print("Command: ");
  else
    Serial.print("\nCard answer: ");
  
  for (uint8_t u = 0; u < lenbuffer; u++) {
    sprintf(tmp, "0x%.2X",buff[u]);
    Serial.print(tmp); Serial.print(" ");
  }
  
  if (!cmd)
    Serial.println("\n-----");
}

/* Checking for PDOL
 * 
 * PDOL tag(9F38) contains requierement specs for the transaction, useful for analysis
 * 
 */
void chkPDOL(uint8_t* buff, uint8_t lenbuffer){
  bool existpdol;
  char tmp[1];
  
  for (uint8_t u = 0; u < lenbuffer; u++) {
    if (buff[u] == 0x9F && buff[u+1] == 0x38){
      existpdol = true;
      Serial.print("-->PDOL found: ");
      for (uint8_t e = 0; e <= buff[u+2]; e++){
        sprintf(tmp, "0x%.2X",buff[u+e+2]);
        Serial.print(tmp); Serial.print(" ");
      }
      Serial.println("\n-----");
    }
  }
  if (!existpdol)
    Serial.print("Info: could not find the PDOL!");
}

/* Reading a Visa Card function
 * 
 * ppse: ppse is the first command to initialize the comunnication
 * visa: second command to select the Visa application
 * processing: assuming that the card does not cointain a PDOL
 * sfi: to read the file where the track 2 is usually located
 */
void readcard(){ //NFC reading process 
  uint8_t apdubuffer[255]= {}, apdulen;
  
  uint8_t ppse[] = {0x00, 0xA4, 0x04, 0x00, 0x0e, 0x32, 0x50, 0x41, 0x59, 0x2e, 0x53, 0x59, 0x53, 0x2e, 0x44, 0x44, 0x46, 0x30, 0x31, 0x00}; //20
  uint8_t visa[] = {0x00, 0xA4, 0x04, 0x00, 0x07, 0xa0, 0x00, 0x00, 0x00, 0x03, 0x10, 0x10, 0x00}; //13
  uint8_t processing [] = {0x80, 0xA8, 0x00, 0x00, 0x02, 0x83, 0x00, 0x00}; //8
  uint8_t sfi[] = {0x00, 0xb2, 0x01, 0x0c, 0x00}; //5
  
  uint8_t *apdus[] = {ppse, visa, processing, sfi}; 
  uint8_t apdusLen [] = { sizeof(ppse), sizeof(visa), sizeof(processing), sizeof(sfi)};
  
  for (uint8_t i = 0; i < 4; i++){
    blink(L2, 150, 1);
    printData(apdus[i], apdusLen[i], true);
    if (nfc.inDataExchange(apdus[i], apdusLen[i], &apdubuffer[0], &apdulen)) {
      printData(apdubuffer, apdulen, false);
      if (i == 1){
        chkPDOL(apdubuffer, apdulen);
      }
    }
  }
}

bool waitcard(){ // Wait and try to read a Visa NFC card
  return nfc.inListPassiveTarget();
}

void nfcbutton(){ // Activate NFC reading or emulate card from a previous reading
  if (digitalRead(NPIN) == 0){
    blink(L2, 150, 1);
    Serial.println("Activating NFC...");
    
    if (!waitcard())
      Serial.println("Error: Could not find a NFC card...");  
    else    
      readcard();
      
    blink(L1, 100, 3);
    delay(400);
  }
}

void loop(){ // Main loop
  nfcbutton();
}
