/*
 * Copyright (c) 2007 - 2022 Joseph Gaeddert
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

//
// FFT API: floating-point (single precision)
//

#include "liquid.internal.h"

// Macro definitions
#define FFT(name)           LIQUID_CONCAT(fft,name)
#define DOTPROD(name)       LIQUID_CONCAT(dotprod_cccf,name)

#define T                   float           /* primitive type */
#define TC                  float complex   /* primitive type (complex) */

#define PRINTVAL_T(X,F)     PRINTVAL_FLOAT(X,F)
#define PRINTVAL_TC(X,F)    PRINTVAL_CFLOAT(X,F)

// include prototypes
#include "fft_common.proto.inc"       // common source must come first (object definition)
#include "fft_dft.proto.inc"          // FFT definitions for DFT
#include "fft_radix2.proto.inc"       // FFT definitions for radix-2 transforms
#include "fft_mixed_radix.proto.inc"  // FFT definitions for mixed-radix transforms (Cooley-Tukey)
#include "fft_rader.proto.inc"        // FFT definitions for transforms of prime length (Rader's algorithm)
#include "fft_rader2.proto.inc"       // FFT definitions for transforms of prime length (Rader's alternate algorithm)
#include "fft_r2r_1d.proto.inc"       // real-to-real definitions (DCT/DST)

