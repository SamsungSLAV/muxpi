#########
MIR addon
#########

This is a simple addon for controlling various devices through an infrared link.
It is based on ATmega328p microcontroller and IRRemote library for
Arduino. Check its documentation for details.
NanoPi's OS communicates with this addon through serial (UART)
connection available usually at /dev/ttyUSB0. If another USB<->serial
converter is connected to MuxPi then MIR addon might be available at
different device.

In muxpi/sw/MuxPi-addons/MIR_addon/NanoPi/demo folder you can find
sample codes and scripts for sending IR codes to Samsung TV.

The general idea is as follows
- read the codes: . exp_codes  (in demo folder)
- setup the serial port: stty -F /dev/ttyUSB0 57600 -hupcl
- send a code to the addon: echo $key_power > /dev/ttyUSB0

NOTE: after setting -hupcl in stty command, first attempt to
send anything to the addon will reset it. Just resend the key
again. It happens only after first call to 'stty -hupcl' switch after
MuxPi boot. Every next transmission will work properly.

Hardware documentation of this addon is available at
muxpi/hw/MIR folder.

