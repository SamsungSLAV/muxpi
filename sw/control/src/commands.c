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
 * @file        commands.c
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       commands source file
 */

#include <stddef.h>
#include <string.h>
#include <strings.h>

#include <xprintf.h>
#include <cmd.h>
#include <control.h>
#include <leds.h>
#include <ws2812.h>
#include <oled.h>
#include <adc.h>
#include <keys.h>
#include <uart.h>
#include <firmware.h>
#include <state.h>
#include <misc.h>

#include <commands.h>

int cb_txt_help(char **args, int args_cnt);
int cb_txt_version(char **args, int args_cnt);
int cb_txt_echo(char **args, int args_cnt);
int cb_txt_power(char **args, int args_cnt);
int cb_txt_hdmi(char **args, int args_cnt);
int cb_txt_dyper(char **args, int args_cnt);
int cb_txt_mux(char **args, int args_cnt);
int cb_txt_dut(char **args, int args_cnt);
int cb_txt_ts(char **args, int args_cnt);
int cb_txt_led(char **args, int args_cnt);
int cb_txt_text(char **args, int args_cnt);
int cb_txt_draw(char **args, int args_cnt);
int cb_txt_clr(char **args, int args_cnt);
int cb_txt_adc(char **args, int args_cnt);
int cb_txt_voltage(char **args, int args_cnt);
int cb_txt_current(char **args, int args_cnt);
int cb_txt_lthor(char **args, int args_cnt);
int cb_txt_key(char **args, int args_cnt);
int cb_txt_uart(char **args, int args_cnt);

const client_command commands[] = {
    {"help",     cb_txt_help,       "This help" },
    {"version",  cb_txt_version,    "Display version of the firmware" },
    {"echo",     cb_txt_echo,       "Get (no arguments) or set ('on' or 'off') echo on serial \"console\": echo [on|off]. The default value is on." },
    {"power",    cb_txt_power,      "Get (no arguments) or set ('on' or 'off') or switch off and on ('tick') power supply for DUT: power [on|off|tick]" },
    {"hdmi",     cb_txt_hdmi,       "Get (no arguments) or set ('on' or 'off') HDMI HOTPLUG pin: hdmi [on|off]" },
    {"dyper",    cb_txt_dyper,      "Get (no second argument) or set ('on' or 'off') DyPer state: dyper 1|2 [on|off]" },
    {"mux",      cb_txt_mux,        "Connect microSD card to external connector (DUT) or card reader (ts): mux [dut|ts]" },
    {"dut",      cb_txt_dut,        "Connect microSD card and power to DUT: dut" },
    {"ts",       cb_txt_ts,         "Connect microSD card and power to TS: ts" },
    {"led",      cb_txt_led,        "Get (no second or third argument) or set ('R G B') color of led (1 | 2), ex: led 1 255 0 255" },
    {"clr",      cb_txt_clr,        "Clear oled display" },
    {"text",     cb_txt_text,       "Print text on the OLED display: text x y color content" },
    {"draw",     cb_txt_draw,       "Draw an object on the OLED display: draw object x1 y1 [x2 y2], objects are:\n"
                                    "               - point x y color - draws one point at given coordinates\n"
                                    "               - line x1 y1 x2 y2 color - draws line between given coordinates\n"
                                    "               - rectangle left top width height color - draws line between given coordinates\n"
                                    "               - circle x y radius color - draws line between given coordinates\n"
                                    "     color must be 'on', 'off' or 'inv'"},
    {"adc",      cb_txt_adc,        "Print current adc value of all (if no arguments are given) or one specified channel, ex: adc 1" },
    {"voltage",  cb_txt_voltage,    "Print current voltage [mV] of all (if no arguments are given) or one specified channel, ex: voltage 1" },
    {"current",  cb_txt_current,    "Print current current [mA] being consumed by DUT" },
    {"lthor",    cb_txt_lthor,      "Get (no second argument) or set state of lthor control signals:\n"
                                    "               - lthor switch [usb|uart] - redirect DUT's USB wires to NanoPi's 'usb' or 'uart'\n"
                                    "               - lthor id [usb|uart] - switch DUT's USB to 'usb' or 'uart' mode\n"
                                    "               - lthor vbus [on|off] - switch DUT's VBUS 'on' or 'off'\n"
                                    "               - lthor combo [usb|uart] - make DUT and MuxPi USB work in 'usb' or 'uart' mode - no get function\n" },
    {"key",      cb_txt_key,        "Get current state of given key or both if no key number is given: key [1|2]" },
    {"uart",     cb_txt_uart,       "Get current value of UART voltage or set if new value is given [in millivolts]" },
};

int cb_txt_help(char **args, int args_cnt) {
    (void)args;
    (void)args_cnt;

    for (unsigned int i = 0; i < sizeof(commands)/sizeof(commands[0]); i++) {
        xprintf("%10s --- %s\n", commands[i].name, commands[i].help);
    }

    return 0;
}

int cb_txt_version(char **args, int args_cnt) {
    (void)args;
    (void)args_cnt;

    xprintf("MuxPi firmware v%s\n", getVersion()); // A little bit of temporary solution here.

    return 0;
}

int cb_txt_echo(char **args, int args_cnt) {
    bool state;

    if (args_cnt > 1) {
        if (strncasecmp("on", args[1], 2) == 0) {
            state = true;
        } else if(strncasecmp("off", args[1], 3) == 0) {
            state = false;
        } else {
            return -1;
        }
    } else {
        state = !state_get_echo();
    }

    state_set_echo(state);
    xprintf("Echo is %s now.\n", state ? "on" : "off");

    return 0;
}

int cb_txt_power(char **args, int args_cnt) {
    if (args_cnt > 1) {
        if (strncasecmp("on", args[1], 2) == 0) {
            power_set_state(Power_On);
        } else if(strncasecmp("off", args[1], 3) == 0) {
            power_set_state(Power_Off);
        }  else if(strncasecmp("tick", args[1], 4) == 0) {
            long delay_ms = 0;
            if (args_cnt > 2) {
                xatoi(&args[2], &delay_ms);
            }
            power_tick(delay_ms);
        } else {
            return -1;
        }
    } else {
        power_state state = power_get_state();
        xprintf("%s\n", state == Power_On ? "on" : "off");
    }

    return 0;
}

int cb_txt_hdmi(char **args, int args_cnt) {
    bool state = false;

    if (args_cnt > 1) {
        if (strncasecmp("on", args[1], 2) == 0) {
            state = true;
        } else if(strncasecmp("off", args[1], 3) == 0) {
            state = false;
        } else {
            return -1;
        }
    }
    hdmi_set_state(state);

    return 0;
}

int cb_txt_dyper(char **args, int args_cnt) {
    bool state = false;

    if (args_cnt > 2) {
        if (strncasecmp("on", args[2], 2) == 0) {
            state = true;
        } else if(strncasecmp("off", args[2], 3) == 0) {
            state = false;
        } else {
            return -1;
        }

        long dyper_num;
        if (xatoi(&args[1], &dyper_num) == 1) {
            if (!dyper_set_state(dyper_num, state)) {
                return -1;
            }
        }
    } else {
        return -1;
    }

    return 0;
}

int cb_txt_mux(char **args, int args_cnt) {
    if (args_cnt > 1) {
        if (strncasecmp("ts", args[1], 2) == 0) {
            mux_set_state(Mux_TS);
        } else if(strncasecmp("dut", args[1], 3) == 0) {
            mux_set_state(Mux_DUT);
        } else {
            return -1;
        }
    } else {
        mux_state state = mux_get_state();
        xprintf(state == Mux_TS ? "ts" : state == Mux_DUT ? "dut" : "invalid");
    }

    return 0;
}

int cb_txt_dut(char **args, int args_cnt) {
    (void)args;
    (void)args_cnt;

//    state_set_idle_current(adc_get_current());
    dut();

    return 0;
}

int cb_txt_ts(char **args, int args_cnt) {
    (void)args;
    (void)args_cnt;

    ts();

    return 0;
}

static void print_color(int led_num) {
    LedColor color = led_get_color(led_num);
    xprintf("led%d: %d,%d,%d\n", led_num + 1, color.red, color. green, color.blue);
}

int cb_txt_led(char **args, int args_cnt) {
    if (args_cnt > 1) {
        long led_num;
        xatoi(&args[1], &led_num);
        if (led_num < 1 || led_num > LED_NUMBER) {
            return -1;
        }
        led_num--;
        if (args_cnt == 2) {
            print_color(led_num);
        } else if (args_cnt == 5) {
            long red, green, blue;
            xatoi(&args[2], &red);
            xatoi(&args[3], &green);
            xatoi(&args[4], &blue);
            led_set_color(led_num, red, green, blue);
        } else {
            return -1;
        }
    } else {
        print_color(0);
        print_color(1);
    }

    return 0;
}

int cb_txt_clr(char **args, int args_cnt) {
    (void)args;
    (void)args_cnt;

    oled_clean_screen();

    return 0;
}

int cb_txt_text(char **args, int args_cnt) {
    static char text_buf[17]; // Maximum of 16 characters can be displayed in a one row.

    if (args_cnt > 4) {
        long x, y;

        xatoi(&args[1], &x);
        xatoi(&args[2], &y);
        if ((x < 0 || x > OLED_WIDTH) || (y < 0 || y > OLED_HEIGHT)) {
            return -1;
        }
        oled_color color = oled_color_from_string(args[3]);

        memset(text_buf, 0, sizeof(text_buf));
        for (int s = 4; s < args_cnt; s++) {
            strcat(text_buf, args[s]);
            if (s != (args_cnt - 1)) {
                strcat(text_buf, " ");
            }
        }

        oled_display_string(x, y, text_buf, color);
        return 0;
    }

    return -1;
}


int cb_txt_draw(char **args, int args_cnt) {
    if (args_cnt > 1) {
        if (strncasecmp(args[1], "point", 5) == 0) {
            if (args_cnt < 5) {
                return -1;
            }
            long x, y;
            xatoi(&args[2], &x);
            xatoi(&args[3], &y);
            oled_color color = oled_color_from_string(args[4]);
            oled_draw_point(x, y, color);
            return 0;
        }

        if (strncasecmp(args[1], "line", 4) == 0) {
            if (args_cnt < 7) {
                return -1;
            }
            long x1, y1, x2, y2;
            xatoi(&args[2], &x1);
            xatoi(&args[3], &y1);
            xatoi(&args[4], &x2);
            xatoi(&args[5], &y2);
            oled_color color = oled_color_from_string(args[6]);
            oled_draw_line(x1, y1, x2, y2, color);
            return 0;
        }

        if (strncasecmp(args[1], "circle", 6) == 0) {
            if (args_cnt < 5) {
                return -1;
            }
            long x, y, radius;
            xatoi(&args[2], &x);
            xatoi(&args[3], &y);
            xatoi(&args[4], &radius);
            oled_color color = oled_color_from_string(args[5]);
            oled_draw_circle(x, y, radius, color);
            return 0;
        }

        if (strncasecmp(args[1], "rectangle", 9) == 0) {
            if (args_cnt < 7) {
                return -1;
            }
            long left, top, width, height;
            xatoi(&args[2], &left);
            xatoi(&args[3], &top);
            xatoi(&args[4], &width);
            xatoi(&args[5], &height);
            oled_color color = oled_color_from_string(args[6]);
            oled_draw_rectangle(left, top, width, height, color);
            return 0;
        }
    }

    return -1;
}

static void print_adc(int channel) {
    int adc = adc_get_value(channel);
    xprintf("adc%d: %d\n", channel, adc);
}

int cb_txt_adc(char **args, int args_cnt) {
    if (args_cnt > 1) {
        long channel;
        xatoi(&args[1], &channel);
        if (channel < 0 || channel > ADC_CHANNEL_COUNT) {
            return -1;
        }
        print_adc(channel);
    } else {
        print_adc(1);
        print_adc(2);
        print_adc(3);
        print_adc(4);
        print_adc(5);
        xprintf("vrefint: %d\n", ST_VREFINT_CAL);
    }

    return 0;
}

static void print_voltage(int channel) {
    int volts = adc_get_voltage(channel);
    xprintf("adc%d: %d\n", channel, volts);
}

int cb_txt_voltage(char **args, int args_cnt) {
    if (args_cnt > 1) {
        long channel;
        xatoi(&args[1], &channel);
        if (channel < 0 || channel > ADC_CHANNEL_COUNT) {
            return -1;
        }
        print_voltage(channel);
    } else {
        print_voltage(1);
        print_voltage(2);
        print_voltage(3);
        print_voltage(4);
    }

    return 0;
}

int cb_txt_current(char **args, int args_cnt) {
    (void)args;
    (void)args_cnt;

    long current = 0;
    if (args_cnt > 1) {
        if (strncasecmp("auto", args[1], 4) == 0) {
            state_set_idle_current(adc_get_current());
            return 0;
        } else if (!xatoi(&args[1], &current)) {
            return -1;
        }
        state_set_idle_current(current);
    } else {
        if (power_get_state() == Power_On) {
            current = adc_get_current() - state_get_idle_current();
            current = current < 0 ? 0 : current;
        }
    }

    xprintf("%d\n", current);

    return 0;
}

int cb_txt_lthor(char **args, int args_cnt) {
    if (args_cnt > 1) {
        if (strncasecmp("switch", args[1], 6) == 0) {
            if (args_cnt > 2) {
                lthor_switch_set_state(lthor_state_from_string(args[2]));
            } else {
                xprintf("%s\n", lthor_state_to_string(lthor_switch_get_state()));
            }
            return 0;
        } else if (strncasecmp("id", args[1], 2) == 0) {
            if (args_cnt > 2) {
                lthor_id_set_state(lthor_state_from_string(args[2]));
            } else {
                xprintf("%s\n", lthor_state_to_string(lthor_id_get_state()));
            }
            return 0;
        } else if (strncasecmp("vbus", args[1], 4) == 0) {
            if (args_cnt > 2) {
                lthor_vbus_set_state(power_state_from_string(args[2]));
            } else {
                xprintf("%s\n", power_state_to_string(lthor_vbus_get_state()));
            }
            return 0;
        } else if (strncasecmp("combo", args[1], 4) == 0) {
            if (args_cnt > 2) {
                lthor_do_combo(lthor_state_from_string(args[2]));
                return 0;
            }
        }
    }

    return -1;
}

static void display_key_state(int key_num) {
    bool state = key_num == 1 ? keys_is_1_pressed() : keys_is_2_pressed();
    xprintf("%s\n", state ? "pressed" : "released");
}

int cb_txt_key(char **args, int args_cnt) {
    long key;
    if (args_cnt > 1) {
        if (!xatoi(&args[1], &key)) {
            return -1;
        }
        display_key_state(key);
    } else {
        xprintf("key1: "); display_key_state(KEY_1);
        xprintf("key2: "); display_key_state(KEY_2);
    }

    return 0;
}

int cb_txt_uart(char **args, int args_cnt) {
    if (args_cnt > 1) {
        long mvolts;
        if (!xatoi(&args[1], &mvolts))  {
            return -1;
        }
        uart_set_voltage(mvolts);
    } else {
        xprintf("%d\n", uart_get_voltage());
    }

    return 0;
}

const client_command* find_command(char *cmd) {
    unsigned int i;

    for (i = 0; i < sizeof(commands)/sizeof(commands[0]); i++)
        if(commands[i].name && !strcmp(commands[i].name, cmd))
            return &commands[i];

    return NULL;
}

#define ARGCNT 10
void process_command(char *cmd) {
    char *line[ARGCNT];
    int argscnt = str_split(line, ARGCNT, cmd, " \t\n\v\f\r");

    if (argscnt) {
        const client_command *_cmd = find_command(line[0]);
        if (_cmd) {
            if (_cmd->textCallback(line, argscnt) == 0) {
                xprintf("OK\n");
            } else {
                xprintf("Error processing command\n");
            }
        } else {
            xprintf("Unknown command\n");
        }
    }
}
