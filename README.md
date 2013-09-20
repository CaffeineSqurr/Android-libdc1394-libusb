Android-libcd1394-libusb
========================

This is a combination of the libusb1 and libdc1394 libraries.
It contains the software necessary to progromatically connect
and control Firewire cameras from android.

This project was motivated by my work in computer vision and
from discussions with other computer vision researchers.

Usage
=====
Shared Library
--------------
By default these libraries compile as shared libraries and must
be copied to the target android device and placed in `/system/lib`.

Inside of the root directory run `ndk-build` push the generated libraries
from `./libs/<target-platform>/` to `/system/lib`

Static Library
--------------
