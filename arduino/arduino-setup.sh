#!/bin/bash

cp liquid.h ../src/
cp liquid.internal.h ../src/
cp library.propertis ..
rm -r ../src/agc/bench
rm -r ../src/agc/tests
rm -r ../src/fec/bench
rm -r ../src/fec/tests
rm -r ../src/quantization/bench
rm -r ../src/quantization/tests
rm -r ../src/audio/bench
rm -r ../src/audio/tests
rm -r ../src/fft/bench
rm -r ../src/fft/tests
rm -r ../src/math/bench
rm -r ../src/math/tests
rm -r ../src/random/bench
rm -r ../src/random/tests
rm -r ../src/autotest
rm -r ../src/filter/bench
rm -r ../src/filter/tests
rm -r ../src/matrix/bench
rm -r ../src/matrix/tests
rm -r ../src/sequence/bench
rm -r ../src/sequence/tests
rm -r ../src/buffer/bench
rm -r ../src/buffer/tests
rm -r ../src/framing/bench
rm -r ../src/framing/tests
rm -r ../src/modem/bench
rm -r ../src/modem/tests
rm -r ../src/utility/bench
rm -r ../src/utility/tests
rm -r ../src/channel/bench
rm -r ../src/channel/tests
rm -r ../src/multichannel/bench
rm -r ../src/multichannel/tests
rm -r ../src/vector/bench
rm -r ../src/vector/tests
rm -r ../src/dotprod/bench
rm -r ../src/dotprod/tests
rm -r ../src/nco/bench
rm -r ../src/nco/tests
rm -r ../src/equalization/bench
rm -r ../src/equalization/tests
rm -r ../src/optim/bench
rm -r ../src/optim/tests

mv ../src/multichannel/src/firpfbch.proto.c ../src/multichannel/src/firpfbch.proto.inc
mv ../src/multichannel/src/firpfbch2.proto.c ../src/multichannel/src/firpfbch2.proto.inc
mv ../src/dotprod/src/dotprod.proto.c ../src/dotprod/src/dotprod.proto.inc
mv ../src/math/src/poly.expand.proto.c ../src/math/src/poly.expand.proto.inc
mv ../src/math/src/poly.common.proto.c ../src/math/src/poly.common.proto.inc
mv ../src/math/src/poly.lagrange.proto.c ../src/math/src/poly.lagrange.proto.inc
mv ../src/quantization/src/quantizer.proto.c ../src/quantization/src/quantizer.proto.inc
mv ../src/channel/src/channel.proto.c ../src/channel/src/channel.proto.inc
mv ../src/channel/src/tvmpch.proto.c ../src/channel/src/tvmpch.proto.inc
mv ../src/nco/src/nco.proto.c ../src/nco/src/nco.proto.inc
mv ../src/nco/src/synth.proto.c ../src/nco/src/synth.proto.inc
mv ../src/modem/src/modem_arb.proto.c ../src/modem/src/modem_arb.proto.inc
mv ../src/modem/src/modem_qam.proto.c ../src/modem/src/modem_qam.proto.inc
mv ../src/modem/src/modem_ask.proto.c ../src/modem/src/modem_ask.proto.inc
mv ../src/modem/src/modem_sqam32.proto.c ../src/modem/src/modem_sqam32.proto.inc
mv ../src/modem/src/modem_pi4dqpsk.proto.c ../src/modem/src/modem_pi4dqpsk.proto.inc
mv ../src/modem/src/modem_sqam128.proto.c ../src/modem/src/modem_sqam128.proto.inc
mv ../src/modem/src/modem_dpsk.proto.c ../src/modem/src/modem_dpsk.proto.inc
mv ../src/modem/src/modem_ook.proto.c ../src/modem/src/modem_ook.proto.inc
mv ../src/modem/src/freqdem.proto.c ../src/modem/src/freqdem.proto.inc
mv ../src/modem/src/modem_apsk.proto.c ../src/modem/src/modem_apsk.proto.inc
mv ../src/modem/src/modem_qpsk.proto.c ../src/modem/src/modem_qpsk.proto.inc
mv ../src/modem/src/modem_bpsk.proto.c ../src/modem/src/modem_bpsk.proto.inc
mv ../src/modem/src/modem_psk.proto.c ../src/modem/src/modem_psk.proto.inc
mv ../src/modem/src/freqmod.proto.c ../src/modem/src/freqmod.proto.inc
mv ../src/modem/src/modem_common.proto.c ../src/modem/src/modem_common.proto.inc
mv ../src/fft/src/fft_dft.proto.c ../src/fft/src/fft_dft.proto.inc
mv ../src/fft/src/spgram.proto.c ../src/fft/src/spgram.proto.inc
mv ../src/fft/src/asgram.proto.c ../src/fft/src/asgram.proto.inc
mv ../src/fft/src/fft_r2r_1d.proto.c ../src/fft/src/fft_r2r_1d.proto.inc
mv ../src/fft/src/spwaterfall.proto.c ../src/fft/src/spwaterfall.proto.inc
mv ../src/fft/src/fft_mixed_radix.proto.c ../src/fft/src/fft_mixed_radix.proto.inc
mv ../src/fft/src/fft_common.proto.c ../src/fft/src/fft_common.proto.inc
mv ../src/fft/src/fft_radix2.proto.c ../src/fft/src/fft_radix2.proto.inc
mv ../src/fft/src/dct_execute.proto.c ../src/fft/src/dct_execute.proto.inc
mv ../src/fft/src/fft_rader.proto.c ../src/fft/src/fft_rader.proto.inc
mv ../src/fft/src/fft_rader2.proto.c ../src/fft/src/fft_rader2.proto.inc
mv ../src/fft/src/fct_execute.proto.c ../src/fft/src/fct_execute.proto.inc
mv ../src/filter/src/firinterp.proto.c ../src/filter/src/firinterp.proto.inc
mv ../src/filter/src/resamp.proto.c ../src/filter/src/resamp.proto.inc
mv ../src/filter/src/iirinterp.proto.c ../src/filter/src/iirinterp.proto.inc
mv ../src/filter/src/fftfilt.proto.c ../src/filter/src/fftfilt.proto.inc
mv ../src/filter/src/resamp.fixed.proto.c ../src/filter/src/resamp.fixed.proto.inc
mv ../src/filter/src/ordfilt.proto.c ../src/filter/src/ordfilt.proto.inc
mv ../src/filter/src/firdecim.proto.c ../src/filter/src/firdecim.proto.inc
mv ../src/filter/src/iirdecim.proto.c ../src/filter/src/iirdecim.proto.inc
mv ../src/filter/src/iirfilt.proto.c ../src/filter/src/iirfilt.proto.inc
mv ../src/filter/src/firhilb.proto.c ../src/filter/src/firhilb.proto.inc
mv ../src/filter/src/msresamp.proto.c ../src/filter/src/msresamp.proto.inc
mv ../src/filter/src/firfarrow.proto.c ../src/filter/src/firfarrow.proto.inc
mv ../src/filter/src/dds.proto.c ../src/filter/src/dds.proto.inc
mv ../src/filter/src/symsync.proto.c ../src/filter/src/symsync.proto.inc
mv ../src/filter/src/fdelay.proto.c ../src/filter/src/fdelay.proto.inc
mv ../src/filter/src/rresamp.proto.c ../src/filter/src/rresamp.proto.inc
mv ../src/filter/src/iirfiltsos.proto.c ../src/filter/src/iirfiltsos.proto.inc
mv ../src/filter/src/firfilt.proto.c ../src/filter/src/firfilt.proto.inc
mv ../src/filter/src/autocorr.proto.c ../src/filter/src/autocorr.proto.inc
mv ../src/filter/src/msresamp2.proto.c ../src/filter/src/msresamp2.proto.inc
mv ../src/filter/src/resamp2.proto.c ../src/filter/src/resamp2.proto.inc
mv ../src/filter/src/firpfb.proto.c ../src/filter/src/firpfb.proto.inc
mv ../src/filter/src/iirhilb.proto.c ../src/filter/src/iirhilb.proto.inc
mv ../src/framing/src/bpresync.proto.c ../src/framing/src/bpresync.proto.inc
mv ../src/framing/src/bsync.proto.c ../src/framing/src/bsync.proto.inc
mv ../src/framing/src/presync.proto.c ../src/framing/src/presync.proto.inc
mv ../src/framing/src/symstreamr.proto.c ../src/framing/src/symstreamr.proto.inc
mv ../src/framing/src/symtrack.proto.c ../src/framing/src/symtrack.proto.inc
mv ../src/framing/src/msource.proto.c ../src/framing/src/msource.proto.inc
mv ../src/framing/src/symstream.proto.c ../src/framing/src/symstream.proto.inc
mv ../src/framing/src/qsource.proto.c ../src/framing/src/qsource.proto.inc
mv ../src/equalization/src/eqrls.proto.c ../src/equalization/src/eqrls.proto.inc
mv ../src/equalization/src/eqlms.proto.c ../src/equalization/src/eqlms.proto.inc
mv ../src/vector/src/vector_mul.proto.c ../src/vector/src/vector_mul.proto.inc
mv ../src/vector/src/vector_norm.proto.c ../src/vector/src/vector_norm.proto.inc
mv ../src/vector/src/vector_trig.proto.c ../src/vector/src/vector_trig.proto.inc
mv ../src/vector/src/vector_add.proto.c ../src/vector/src/vector_add.proto.inc
mv ../src/matrix/src/matrix.linsolve.proto.c ../src/matrix/src/matrix.linsolve.proto.inc
mv ../src/matrix/src/matrix.math.proto.c ../src/matrix/src/matrix.math.proto.inc
mv ../src/matrix/src/matrix.chol.proto.c ../src/matrix/src/matrix.chol.proto.inc
mv ../src/matrix/src/matrix.qrdecomp.proto.c ../src/matrix/src/matrix.qrdecomp.proto.inc
mv ../src/matrix/src/matrix.inv.proto.c ../src/matrix/src/matrix.inv.proto.inc
mv ../src/matrix/src/smatrix.proto.c ../src/matrix/src/smatrix.proto.inc
mv ../src/matrix/src/matrix.cgsolve.proto.c ../src/matrix/src/matrix.cgsolve.proto.inc
mv ../src/matrix/src/matrix.ludecomp.proto.c ../src/matrix/src/matrix.ludecomp.proto.inc
mv ../src/matrix/src/matrix.gramschmidt.proto.c ../src/matrix/src/matrix.gramschmidt.proto.inc
mv ../src/matrix/src/matrix.base.proto.c ../src/matrix/src/matrix.base.proto.inc
mv ../src/buffer/src/wdelay.proto.c ../src/buffer/src/wdelay.proto.inc
mv ../src/buffer/src/cbuffer.proto.c ../src/buffer/src/cbuffer.proto.inc
mv ../src/buffer/src/buffer.proto.c ../src/buffer/src/buffer.proto.inc
mv ../src/buffer/src/window.proto.c ../src/buffer/src/window.proto.inc