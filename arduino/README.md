## Setup of Arduino Library

The liquid-dsp project can not be used directly in Arduino.

For Arduino the following changes are relevant in order to resolve the compile errors:

- make the .h files that can be found here available in the root of the src directory
- deletes all tests subdirectories
- deletes all benchmark subdirectories
- renames all *.proto.c file to *.proto.inc
- replaces a #include *.proto.c with the renamed files
- wraps all platform specific implementation files with #ifndef Arduino 