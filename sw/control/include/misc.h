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
 * @file        misc.h
 * @author      Adam Malinowski <a.malinowsk2@partner.samsung.com>
 * @brief       misc include file
 */

#ifndef INCLUDE_MISC_H_
#define INCLUDE_MISC_H_

char* strtok_lite(char *str, const char* delim);
int str_split(char **dst, int maxcount, char *src, char *tokens);

#endif /* INCLUDE_MISC_H_ */
