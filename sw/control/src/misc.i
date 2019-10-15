# 1 "misc.c"
# 1 "/home/a.malinowsk2/vcs/muxpi/sw/control/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "misc.c"
# 23 "misc.c"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4

# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 24 "misc.c" 2

# 1 "../include/misc.h" 1
# 26 "../include/misc.h"

# 26 "../include/misc.h"
char* strtok_lite(char *str, const char* delim);
int str_split(char **dst, int maxcount, char *src, char *tokens);
# 26 "misc.c" 2

char* strtok_lite(char *str, const char* delim) {
    static char* _buffer;

    if (str != 
# 30 "misc.c" 3 4
              ((void *)0)
# 30 "misc.c"
                  ) {
        _buffer = str;
    }

    if (_buffer[0] == '\0') {
        return 
# 35 "misc.c" 3 4
              ((void *)0)
# 35 "misc.c"
                  ;
    }

    char *ret = _buffer, *b;
    const char *d;

    for (b = _buffer; ; b++) {
        if (*b == '\0') {
            _buffer = '\0';
            break;
        }
        for (d = delim; *d != '\0'; d++) {
            if (*b == *d) {
                *b = '\0';
                _buffer = b + 1;

                if (b == ret) {
                    ret++;
                    continue;
                }
                return ret;
            }
        }
    }

    return ret;
}

int str_split(char **dst, int maxcount, char *src, char *tokens) {
    int i;
    for (i = 0; i < maxcount; i++, src = 
# 65 "misc.c" 3 4
                                        ((void *)0)
# 65 "misc.c"
                                            )
        if (!(dst[i] = strtok_lite(src, tokens)))
            break;
    return i;
}
