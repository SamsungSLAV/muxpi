#!/usr/bin/python

from codeformatter import CodeFormatter

cf = CodeFormatter()

print "key_power=" + cf.get_raw_code('0xe0e0', '0x40bf')
print "key_vendor=" + cf.get_raw_code('0xe0e0', '0xdc23')
