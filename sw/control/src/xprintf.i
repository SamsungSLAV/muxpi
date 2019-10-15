# 1 "xprintf.c"
# 1 "/home/a.malinowsk2/vcs/muxpi/sw/control/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "xprintf.c"
# 14 "xprintf.c"
# 1 "../include/xprintf.h" 1
# 17 "../include/xprintf.h"
extern void (*xfunc_out)(unsigned char);
void xputc (char c);
void xputs (const char* str);
void xfputs (void (*func)(unsigned char), const char* str);
void xprintf (const char* fmt, ...);
void xsprintf (char* buff, const char* fmt, ...);
void xfprintf (void (*func)(unsigned char), const char* fmt, ...);
void put_dump (const void* buff, unsigned long addr, int len, int width);







extern unsigned char (*xfunc_in)(void);
int xgets (char* buff, int len);
int xfgets (unsigned char (*func)(void), char* buff, int len);
int xatoi (char** str, long* res);
# 15 "xprintf.c" 2



# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 1 3 4
# 40 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 3 4

# 40 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 19 "xprintf.c" 2

# 19 "xprintf.c"
void (*xfunc_out)(unsigned char) ;
static char *outptr;





void xputc (char c)
{
 if (1 && c == '\n') xputc('\r');

 if (outptr) {
  *outptr++ = (unsigned char)c;
  return;
 }

 if (xfunc_out) xfunc_out((unsigned char)c);
}







void xputs (
 const char* str
)
{
 while (*str)
  xputc(*str++);
}


void xfputs (
 void(*func)(unsigned char),
 const char* str
)
{
 void (*pf)(unsigned char);


 pf = xfunc_out;
 xfunc_out = func;
 while (*str)
  xputc(*str++);
 xfunc_out = pf;
}
# 87 "xprintf.c"
static
void xvprintf (
 const char* fmt,
 va_list arp
)
{
 unsigned int r, i, j, w, f;
 unsigned long v;
 char s[16], c, d, *p;


 for (;;) {
  c = *fmt++;
  if (!c) break;
  if (c != '%') {
   xputc(c); continue;
  }
  f = 0;
  c = *fmt++;
  if (c == '0') {
   f = 1; c = *fmt++;
  } else {
   if (c == '-') {
    f = 2; c = *fmt++;
   }
  }
  for (w = 0; c >= '0' && c <= '9'; c = *fmt++)
   w = w * 10 + c - '0';
  if (c == 'l' || c == 'L') {
   f |= 4; c = *fmt++;
  }
  if (!c) break;
  d = c;
  if (d >= 'a') d -= 0x20;
  switch (d) {
  case 'S' :
   p = 
# 123 "xprintf.c" 3 4
      __builtin_va_arg(
# 123 "xprintf.c"
      arp
# 123 "xprintf.c" 3 4
      ,
# 123 "xprintf.c"
      char*
# 123 "xprintf.c" 3 4
      )
# 123 "xprintf.c"
                        ;
   for (j = 0; p[j]; j++) ;
   while (!(f & 2) && j++ < w) xputc(' ');
   xputs(p);
   while (j++ < w) xputc(' ');
   continue;
  case 'C' :
   xputc((char)
# 130 "xprintf.c" 3 4
              __builtin_va_arg(
# 130 "xprintf.c"
              arp
# 130 "xprintf.c" 3 4
              ,
# 130 "xprintf.c"
              int
# 130 "xprintf.c" 3 4
              )
# 130 "xprintf.c"
                              ); continue;
  case 'B' :
   r = 2; break;
  case 'O' :
   r = 8; break;
  case 'D' :
  case 'U' :
   r = 10; break;
  case 'X' :
   r = 16; break;
  default:
   xputc(c); continue;
  }


  v = (f & 4) ? 
# 145 "xprintf.c" 3 4
               __builtin_va_arg(
# 145 "xprintf.c"
               arp
# 145 "xprintf.c" 3 4
               ,
# 145 "xprintf.c"
               long
# 145 "xprintf.c" 3 4
               ) 
# 145 "xprintf.c"
                                 : ((d == 'D') ? (long)
# 145 "xprintf.c" 3 4
                                                       __builtin_va_arg(
# 145 "xprintf.c"
                                                       arp
# 145 "xprintf.c" 3 4
                                                       ,
# 145 "xprintf.c"
                                                       int
# 145 "xprintf.c" 3 4
                                                       ) 
# 145 "xprintf.c"
                                                                        : (long)
# 145 "xprintf.c" 3 4
                                                                                __builtin_va_arg(
# 145 "xprintf.c"
                                                                                arp
# 145 "xprintf.c" 3 4
                                                                                ,
# 145 "xprintf.c"
                                                                                unsigned int
# 145 "xprintf.c" 3 4
                                                                                )
# 145 "xprintf.c"
                                                                                                         );
  if (d == 'D' && (v & 0x80000000)) {
   v = 0 - v;
   f |= 8;
  }
  i = 0;
  do {
   d = (char)(v % r); v /= r;
   if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
   s[i++] = d + '0';
  } while (v && i < sizeof(s));
  if (f & 8) s[i++] = '-';
  j = i; d = (f & 1) ? '0' : ' ';
  while (!(f & 2) && j++ < w) xputc(d);
  do xputc(s[--i]); while(i);
  while (j++ < w) xputc(' ');
 }
}


void xprintf (
 const char* fmt,
 ...
)
{
 va_list arp;


 
# 173 "xprintf.c" 3 4
__builtin_va_start(
# 173 "xprintf.c"
arp
# 173 "xprintf.c" 3 4
,
# 173 "xprintf.c"
fmt
# 173 "xprintf.c" 3 4
)
# 173 "xprintf.c"
                  ;
 xvprintf(fmt, arp);
 
# 175 "xprintf.c" 3 4
__builtin_va_end(
# 175 "xprintf.c"
arp
# 175 "xprintf.c" 3 4
)
# 175 "xprintf.c"
           ;
}


void xsprintf (
 char* buff,
 const char* fmt,
 ...
)
{
 va_list arp;


 outptr = buff;

 
# 190 "xprintf.c" 3 4
__builtin_va_start(
# 190 "xprintf.c"
arp
# 190 "xprintf.c" 3 4
,
# 190 "xprintf.c"
fmt
# 190 "xprintf.c" 3 4
)
# 190 "xprintf.c"
                  ;
 xvprintf(fmt, arp);
 
# 192 "xprintf.c" 3 4
__builtin_va_end(
# 192 "xprintf.c"
arp
# 192 "xprintf.c" 3 4
)
# 192 "xprintf.c"
           ;

 *outptr = 0;
 outptr = 0;
}


void xfprintf (
 void(*func)(unsigned char),
 const char* fmt,
 ...
)
{
 va_list arp;
 void (*pf)(unsigned char);


 pf = xfunc_out;
 xfunc_out = func;

 
# 212 "xprintf.c" 3 4
__builtin_va_start(
# 212 "xprintf.c"
arp
# 212 "xprintf.c" 3 4
,
# 212 "xprintf.c"
fmt
# 212 "xprintf.c" 3 4
)
# 212 "xprintf.c"
                  ;
 xvprintf(fmt, arp);
 
# 214 "xprintf.c" 3 4
__builtin_va_end(
# 214 "xprintf.c"
arp
# 214 "xprintf.c" 3 4
)
# 214 "xprintf.c"
           ;

 xfunc_out = pf;
}







void put_dump (
 const void* buff,
 unsigned long addr,
 int len,
 int width
)
{
 int i;
 const unsigned char *bp;
 const unsigned short *sp;
 const unsigned long *lp;


 xprintf("%08lX ", addr);

 switch (width) {
 case sizeof(char):
  bp = buff;
  for (i = 0; i < len; i++)
   xprintf(" %02X", bp[i]);
  xputc(' ');
  for (i = 0; i < len; i++)
   xputc((bp[i] >= ' ' && bp[i] <= '~') ? bp[i] : '.');
  break;
 case sizeof(short):
  sp = buff;
  do
   xprintf(" %04X", *sp++);
  while (--len);
  break;
 case sizeof(long):
  lp = buff;
  do
   xprintf(" %08LX", *lp++);
  while (--len);
  break;
 }

 xputc('\n');
}






unsigned char (*xfunc_in)(void);





int xgets (
 char* buff,
 int len
)
{
 int c, i;


 if (!xfunc_in) return 0;

 i = 0;
 for (;;) {
  c = xfunc_in();
  if (!c) return 0;
  if (c == '\r') break;
  if (c == '\b' && i) {
   i--;
   if (1) xputc(c);
   continue;
  }
  if (c >= ' ' && i < len - 1) {
   buff[i++] = c;
   if (1) xputc(c);
  }
 }
 buff[i] = 0;
 if (1) xputc('\n');
 return 1;
}


int xfgets (
 unsigned char (*func)(void),
 char* buff,
 int len
)
{
 unsigned char (*pf)(void);
 int n;


 pf = xfunc_in;
 xfunc_in = func;
 n = xgets(buff, len);
 xfunc_in = pf;

 return n;
}
# 339 "xprintf.c"
int xatoi (
 char **str,
 long *res
)
{
 unsigned long val;
 unsigned char c, r, s = 0;


 *res = 0;

 while ((c = **str) == ' ') (*str)++;

 if (c == '-') {
  s = 1;
  c = *(++(*str));
 }

 if (c == '0') {
  c = *(++(*str));
  switch (c) {
  case 'x':
   r = 16; c = *(++(*str));
   break;
  case 'b':
   r = 2; c = *(++(*str));
   break;
  default:
   if (c <= ' ') return 1;
   if (c < '0' || c > '9') return 0;
   r = 8;
  }
 } else {
  if (c < '0' || c > '9') return 0;
  r = 10;
 }

 val = 0;
 while (c > ' ') {
  if (c >= 'a') c -= 0x20;
  c -= '0';
  if (c >= 17) {
   c -= 7;
   if (c <= 9) return 0;
  }
  if (c >= r) return 0;
  val = val * r + c;
  c = *(++(*str));
 }
 if (s) val = 0 - val;

 *res = val;
 return 1;
}
