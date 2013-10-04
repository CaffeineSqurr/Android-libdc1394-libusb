Android-libdc1394-libusb
========================

This is a combination of the libusb1 and libdc1394 libraries.
It contains the software necessary to access
and control cameras which conform to the IEEE 1394 spec from 
android programs.

This project was motivated by my work in computer vision and
from discussions with other computer vision researchers.

The most recent versions of [Libusb](http://www.libusb.org/) 
and [Libdc1394](http://damien.douxchamps.net/ieee1394/libdc1394/) 
can be downloaded from their respective developers.

Usage
=====
Shared Library
--------------
By default these libraries compile as shared libraries and must
be copied to the target android device and placed in `/system/lib`.

Inside of the root directory run `ndk-build` and then push the 
generated libraries from `./libs/<target-platform>/` to `/system/lib`

Static Library
--------------

To include this library as a static into another project set the 
variables `LIBUSB_TYPE = STATIC` and `LIBDC_TYPE = STATIC` before 
including this library's Android.mk
