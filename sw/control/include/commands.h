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
 * @file        commands.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       commands include file
 */

#ifndef INCLUDE_COMMANDS_H_
#define INCLUDE_COMMANDS_H_

typedef int (*cmd_textCallback)(char **args, int argscnt);

typedef struct {
    char *name;
    cmd_textCallback textCallback;
    char *help;
} client_command;

const client_command* find_command(char *cmd);

void process_command(char *cmd);

#endif /* INCLUDE_COMMANDS_H_ */
