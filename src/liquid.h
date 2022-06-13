#pragma once
// Support for Arduino
#ifdef ARDUINO
#include <complex.h>
#endif
#include "../include/liquid.h"

// Some Arduinos do not provide the crealf function
#if HAVE_CREALF==0
#define crealf(c) static_cast<float>(c.real())
#define creal(c) static_cast<double>(c.real())
#define creall(c) static_cast<long double>(c.real())
#endif

#if HAVE_CIMAGF==0
#define cimagf(c) static_cast<float>(c.imag())  
#define cimag(c) static_cast<double>(c.imag())  
#define cimagll(c) static_cast<long double>(c.imag())  
#endif