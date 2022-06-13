
liquid-dsp
==========

Software-Defined Radio Digital Signal Processing Library -
[https://liquidsdr.org](https://liquidsdr.org)

[![Core CI](https://github.com/jgaeddert/liquid-dsp/actions/workflows/core.yml/badge.svg)](https://github.com/jgaeddert/liquid-dsp/actions/workflows/core.yml)
[![codecov](https://codecov.io/gh/jgaeddert/liquid-dsp/branch/master/graph/badge.svg?token=ht8VIhp302)](https://codecov.io/gh/jgaeddert/liquid-dsp)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://choosealicense.com/licenses/mit/)
[![Packaging status](https://repology.org/badge/tiny-repos/liquid-dsp.svg)](https://repology.org/project/liquid-dsp/versions)

liquid-dsp is a free and open-source digital signal processing (DSP)
library designed specifically for software-defined radios on embedded
platforms. The aim is to provide a lightweight DSP library that does not
rely on a myriad of external dependencies or proprietary and otherwise
cumbersome frameworks. All signal processing elements are designed to be
flexible, scalable, and dynamic, including filters, filter design,
oscillators, modems, synchronizers, complex mathematical operations, and
much more.

This is an adapted version of Joseph D. Gaeddert's [liquid-dsp](https://github.com/jgaeddert/liquid-dsp)  which can be used as Arduino library.

```c++
// get in, manipulate data, get out
#include <liquid.h>

void setup() {
    unsigned int M  = 4;     // interpolation factor
    unsigned int m  = 12;    // filter delay [symbols]
    float        As = 60.0f; // filter stop-band attenuation [dB]

    // create interpolator from prototype
    firinterp_crcf interp = firinterp_crcf_create_kaiser(M,m,As);
    std::complex<float> x = 1.0f;   // input sample
    std::complex<float> y[M];       // interpolated output buffer

    // repeat on input sample data as needed
    {
        firinterp_crcf_execute(interp, x, y);
    }

    // destroy interpolator object
    firinterp_crcf_destroy(interp);
    return 0;
}

void loop(){}
```

For more information, please refer to the
[documentation](https://liquidsdr.org/doc) online.

## Arduino Installation ##

You can download the library as zip and call include Library -> zip library. Or you can git clone this project into the Arduino libraries folder e.g. with

```
cd  ~/Documents/Arduino/libraries
git clone pschatzmann/arduino-liquid-dsp.git
```

I recommend to use git because you can easily update to the latest version just by executing the ```git pull``` command in the project folder.


### Examples ###

Nearly all signal processing elements have a corresponding example in
the `examples/` directory.  Most example scripts generate an output
`.m` file for plotting with [GNU octave](https://www.gnu.org/software/octave/)
All examples are built as stand-alone programs and can be compiled with
the make target `examples`:

    make examples

Sometimes, however, it is useful to build one example individually.
This can be accomplished by directly targeting its binary
(e.g. `make examples/modem_example`). The example then can be run at the
command line, viz. `./examples/modem_example`.


### PlatformIO ###

Install [platformio](https://platformio.org)
(`brew install platformio` on macOS,
`sudo -H python3 -m pip install -U platformio` on Linux).
Add `liquid-dsp` to your `platform.io` list of dependencies:

```ini
lib_deps = https://github.com/pschatzmann/arduino-liquid-dsp.git
```

## Available Modules ##

  * _agc_: automatic gain control, received signal strength
  * _audio_: source audio encoders/decoders: cvsd, filterbanks
  * _buffer_: internal buffering, circular/static, ports (threaded)
  * _channel_: additive noise, multi-path fading, carrier phase/frequency
        offsets, timing phase/rate offsets
  * _dotprod_: inner dot products (real, complex), vector sum of squares
  * _equalization_: adaptive equalizers: least mean-squares, recursive
        least squares, semi-blind
  * _fec_: basic forward error correction codes including several
        Hamming codes, single error correction/double error detection,
        Golay block code, as well as several checksums and cyclic
        redundancy checks, interleaving, soft decoding
  * _fft_: fast Fourier transforms (arbitrary length), discrete sin/cos
        transforms
  * _filter_: finite/infinite impulse response, polyphase, hilbert,
        interpolation, decimation, filter design, resampling, symbol
        timing recovery
  * _framing_: flexible framing structures for amazingly easy packet
        software radio; dynamically adjust modulation and coding on the
        fly with single- and multi-carrier framing structures
  * _math_: transcendental functions not in the C standard library
        (gamma, besseli, etc.), polynomial operations (curve-fitting,
        root-finding, etc.)
  * _matrix_: basic math, LU/QR/Cholesky factorization, inversion,
        Gauss elimination, Gram-Schmidt decomposition, linear solver,
        sparse matrix representation
  * _modem_: modulate, demodulate, PSK, differential PSK, QAM, optimal
        QAM, as well as analog and non-linear digital modulations GMSK)
  * _multichannel_: filterbank channelizers, OFDM
  * _nco_: numerically-controlled oscillator: mixing, frequency
        synthesis, phase-locked loops
  * _optim_: (non-linear optimization) Newton-Raphson, evoluationary
        algorithms, gradient descent, line search
  * _quantization_: analog/digital converters, compression/expansion
  * _random_: (random number generators) uniform, exponential, gamma,
        Nakagami-m, Gauss, Rice-K, Weibull
  * _sequence_: linear feedback shift registers, complementary codes,
        maximal-length sequences
  * _utility_: useful miscellany, mostly bit manipulation (shifting,
        packing, and unpacking of arrays)
  * _vector_: generic vector operations

### License ###

liquid projects are released under the X11/MIT license.
Short version: this code is copyrighted to me (Joseph D. Gaeddert),
I give you full permission to do whatever you want with it except remove my
name from the credits.
Seriously, go nuts.
See the LICENSE file or
[https://opensource.org/licenses/MIT](https://opensource.org/licenses/MIT)
for specific terms.

