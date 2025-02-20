// Super simple test code that flips a single segmented EPD from black to white and back.
// Data observed: https://docs.google.com/spreadsheets/d/e/2PACX-1vRZ1IP6aA6nD5b5gwWoDgC94A_Sf5SYh4aZRXxXRGM3K9M71ijWuYTVsRaHgNogG0n5v0ePAefdmEB9/pubhtml?gid=0&single=true


#define TXD1 2

HardwareSerial EPD(2);

void setup() {
  EPD.begin(115200, SERIAL_8N1, -1, TXD1);
}

void data1() {
  EPD.write(0xCA);  // Start byte
  EPD.write(0xFF);  // Data length 
  EPD.write(0x00);  // Command length
  EPD.write(0xFF);  // Command type
  for (int i = 0; i < 256; i++) {
    EPD.write(0x00); 
  }
  EPD.write(0x3F);
  EPD.write(0x03); // First byte of checksum
  EPD.write(0x07); // Second byte of checksum
}

void data2() {
  EPD.write(0xCA);  // Start byte
  EPD.write(0xFF);  // Data length 
  EPD.write(0x08);
  EPD.write(0x47);
  for (int i = 0; i < 256; i++) {
    EPD.write(0x00);
  }
  EPD.write(0x3F);
  EPD.write(0x02);
  EPD.write(0x57);
}

void data3() {
  EPD.write(0xCA);  // Start byte
  EPD.write(0xFF);  // Data length 
  EPD.write(0x08);
  EPD.write(0x47);
  for (int i = 0; i < 8; i++) {
    EPD.write(0xFF);
  }
  for (int i = 0; i < 248; i++) {
    EPD.write(0x00);
  }
  EPD.write(0x3F);
  EPD.write(0x0A);
  EPD.write(0x4F);
}

//No sleep: 250 ms OK. With sleep: 270 OK.
void loop() {
  data1();
  //delay(50);
  data2();
  delay(2000);
  data1();
  //delay(50);
  data3();
  delay(2000);
}
