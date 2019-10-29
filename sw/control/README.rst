#####
Build
#####

=============
Prerequisites
=============
* arm-none-eabi-gcc compiler
* python 2.7

NOTE: Version of gcc compiler must not be newer than **4.8.4**! Version 5.0.0 and later do not produce valid binary.
Some information about the problem can be found here: `FreeRTOS forum <https://sourceforge.net/p/freertos/discussion/382005/thread/707618f02e/?limit=25#b6dd>`_ After not finding any useful help on the forum, the issue was not further investigated.

python is needed only for building libopencm3 submodule

=====
Steps
=====

.. code::

 git clone git@github.com:SamsungSLAV/muxpi.git

 cd muxpi/sw/control

 git submodule update --init

 cd libopencm3

 make TARGET=stm32/f0

 cd ../src

 make bin


As an output, ``firmware.bin`` should be generated.

#######
Install
#######

=============
Prerequisites
=============
* stm32flash external tool available in Armbian Ubuntu for NanoPi or `here <https://sourceforge.net/p/stm32flash/wiki/Home/>`_

* power script - can be found in this repository: /sw/nanopi/power/muxpi-power

=====
Steps
=====

Copy ``firmware.bin`` to NanoPi and use stm32flash tool to write the firmware into the M0 microcontroller:

.. code::

  muxpi-power off

  muxpi-power flashing

  stm32flash -w firmware.bin /dev/ttyS2

  muxpi-power off

  muxpi-power on

Done!
