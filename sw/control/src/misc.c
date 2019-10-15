/*
 * Copyright (C) 2018 Samsung Electronics Co., Ltd All Rights Reserved
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
/**
 * @file        misc.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       misc source file
 */

#include <stddef.h>

#include <misc.h>

char* strtok_lite(char *str, const char* delim) {
    static char* _buffer;

    if (str != NULL) {
        _buffer = str;
    }

    if (_buffer[0] == '\0') {
        return NULL;
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
    for (i = 0; i < maxcount; i++, src = NULL)
        if (!(dst[i] = strtok_lite(src, tokens)))
            break;
    return i;
}
