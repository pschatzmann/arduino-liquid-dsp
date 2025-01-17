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
// Floating-point matrix (single precision)
// 

#include "liquid.internal.h"

#define MATRIX(name)    LIQUID_CONCAT(matrixf, name)
#define MATRIX_NAME     "matrixf"

#define T               float           // general type
#define TP              float           // primitive type
#define T_COMPLEX       0               // is type complex?

#define T_ABS(X)        fabsf(X)
#define TP_ABS(X)       fabsf(X)

#define MATRIX_PRINT_ELEMENT(X,R,C,r,c) \
    printf("%12.7f", matrix_access(X,R,C,r,c));

// prototypes
#include "matrix.base.proto.inc"
#include "matrix.cgsolve.proto.inc"
#include "matrix.chol.proto.inc"
#include "matrix.gramschmidt.proto.inc"
#include "matrix.inv.proto.inc"
#include "matrix.linsolve.proto.inc"
#include "matrix.ludecomp.proto.inc"
#include "matrix.qrdecomp.proto.inc"
#include "matrix.math.proto.inc"

