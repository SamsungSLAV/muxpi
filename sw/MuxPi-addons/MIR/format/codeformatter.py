#!/usr/bin/python

import argparse
import sys

class Options:
    def __init__(self, args):
       self.parser = argparse.ArgumentParser(description='Translating Samsung codes to raw format')
       self.args = args
       self.parser.add_argument('code', type=lambda x:hex(int(x,0)),
                                help='hex code to be translated')
       self.parser.add_argument('-p', type=lambda x:hex(int(x,0)),
                                help='code preambule. \nFor samsung remotes default preambule is 0xE0E0',
                                default='0xE0E0', dest='preambule')
       self.options = self.parser.parse_args()

    def get_options(self):
        return self.options

class CodeFormatter():
    def __init__(self):
        self.header = "4553,4500,"
        self.footer = "550"
        self.zero = "548,534,"
        self.one = "548,1663,"

    def format_raw_code(self, preambule, code):
        ''' format_raw_code composes raw format code from given hex value '''
        self.raw_code=self.header

        for part in [preambule, code]:
            data=format(int(part,16),'0>16b')
            for bit in data:
                if bit == '0':
                    self.raw_code+=self.zero
                else:
                    self.raw_code+=self.one
        self.raw_code+=self.footer

    def get_raw_code(self,preambule,code):
        self.format_raw_code(preambule, code)
        return self.raw_code

def main():
    options = Options(sys.argv).get_options()
    code_formatter = CodeFormatter()
    print code_formatter.get_raw_code(options.preambule,options.code)

if __name__ == "__main__":
    main()
