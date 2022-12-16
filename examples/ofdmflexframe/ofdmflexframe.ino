#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <liquid.h>
#include <complex>

void setup() {
    Serial.begin(115200);
    // options
    unsigned int M           = 64;          // number of subcarriers
    unsigned int cp_len      = 16;          // cyclic prefix length
    unsigned int taper_len   = 4;           // taper length
    unsigned int payload_len = 120;         // length of payload (bytes)

    // allocate memory for header, payload, sample buffer
    unsigned int  buf_len = 200;            // buffer size
    std::complex<float>  buf[buf_len];      // time-domain buffer
    unsigned char header[8];                // header
    unsigned char payload[payload_len];     // payload

    // create frame generator object with default properties
    ofdmflexframegen fg = ofdmflexframegen_create(M, cp_len, taper_len, NULL, NULL);

    unsigned int i;

    // initialize header/payload and assemble frame
    for (i=0; i<8; i++)           header[i]  = i      & 0xff;
    for (i=0; i<payload_len; i++) payload[i] = rand() & 0xff;
    ofdmflexframegen_assemble(fg, header, payload, payload_len);
    ofdmflexframegen_print(fg);

    // generate frame one OFDM symbol at a time
    int frame_complete = 0;
    while (!frame_complete) {
        // generate symbol (write samples to buffer)
        frame_complete = ofdmflexframegen_write(fg, (std::complex<float> *)buf, buf_len);

        // print status
        printf("ofdmflexframegen wrote to buffer%s\n",
            frame_complete ? " (frame complete)" : "");
    }

    // destroy objects and return
    ofdmflexframegen_destroy(fg);
    printf("done.\n");
}

void loop() {
  // put your main code here, to run repeatedly:

}