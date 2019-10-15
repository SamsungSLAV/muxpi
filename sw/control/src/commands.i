# 1 "commands.c"
# 1 "/home/a.malinowsk2/vcs/muxpi/sw/control/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "commands.c"
# 23 "commands.c"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4

# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 24 "commands.c" 2
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 1 3
# 10 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/newlib.h" 1 3
# 14 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/newlib.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/newlib.h" 2 3
# 11 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 15 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_types.h" 1 3






# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_types.h" 2 3
# 25 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h" 1 3
# 33 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/lock.h" 3
struct __lock;
typedef struct __lock * _LOCK_T;






extern void __retarget_lock_init(_LOCK_T *lock);

extern void __retarget_lock_init_recursive(_LOCK_T *lock);

extern void __retarget_lock_close(_LOCK_T lock);

extern void __retarget_lock_close_recursive(_LOCK_T lock);

extern void __retarget_lock_acquire(_LOCK_T lock);

extern void __retarget_lock_acquire_recursive(_LOCK_T lock);

extern int __retarget_lock_try_acquire(_LOCK_T lock);

extern int __retarget_lock_try_acquire_recursive(_LOCK_T lock);


extern void __retarget_lock_release(_LOCK_T lock);

extern void __retarget_lock_release_recursive(_LOCK_T lock);
# 26 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 88 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 129 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 357 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 608 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 814 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 48 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/cdefs.h" 2 3
# 13 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 2 3




# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 18 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 2 3
# 27 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 3


void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);
# 86 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 3
char *_strdup_r (struct _reent *, const char *);



char *_strndup_r (struct _reent *, const char *, size_t);
# 112 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);
# 134 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 3
char *strsignal (int __signo);
# 175 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/string.h" 1 3
# 176 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 2 3


# 25 "commands.c" 2
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/strings.h" 1 3
# 44 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);





int ffs(int) __attribute__((__const__));
# 64 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/strings.h" 3
char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));






# 26 "commands.c" 2

# 1 "../include/xprintf.h" 1
# 17 "../include/xprintf.h"

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
# 28 "commands.c" 2
# 1 "../include/cmd.h" 1
# 26 "../include/cmd.h"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdint.h" 1 3 4
# 9 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdint.h" 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h" 3 4

# 20 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdint.h" 2 3 4
# 27 "../include/cmd.h" 2
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdbool.h" 1 3 4
# 28 "../include/cmd.h" 2


# 29 "../include/cmd.h"
void cmd_setup(void);
void cmd_process_data(uint8_t data);
# 29 "commands.c" 2
# 1 "../include/control.h" 1
# 28 "../include/control.h"
# 1 "../libopencm3/include/libopencm3/stm32/gpio.h" 1
# 20 "../libopencm3/include/libopencm3/stm32/gpio.h"
# 1 "../libopencm3/include/libopencm3/cm3/common.h" 1
# 21 "../libopencm3/include/libopencm3/stm32/gpio.h" 2
# 1 "../libopencm3/include/libopencm3/stm32/memorymap.h" 1
# 24 "../libopencm3/include/libopencm3/stm32/memorymap.h"
# 1 "../libopencm3/include/libopencm3/stm32/f0/memorymap.h" 1
# 25 "../libopencm3/include/libopencm3/stm32/f0/memorymap.h"
# 1 "../libopencm3/include/libopencm3/cm3/memorymap.h" 1
# 26 "../libopencm3/include/libopencm3/stm32/f0/memorymap.h" 2
# 25 "../libopencm3/include/libopencm3/stm32/memorymap.h" 2
# 22 "../libopencm3/include/libopencm3/stm32/gpio.h" 2


# 1 "../libopencm3/include/libopencm3/stm32/f0/gpio.h" 1
# 34 "../libopencm3/include/libopencm3/stm32/f0/gpio.h"
# 1 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f24.h" 1
# 41 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f24.h"
# 1 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h" 1
# 41 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"
# 1 "../libopencm3/include/libopencm3/stm32/common/gpio_common_all.h" 1
# 72 "../libopencm3/include/libopencm3/stm32/common/gpio_common_all.h"


void gpio_set(uint32_t gpioport, uint16_t gpios);
void gpio_clear(uint32_t gpioport, uint16_t gpios);
uint16_t gpio_get(uint32_t gpioport, uint16_t gpios);
void gpio_toggle(uint32_t gpioport, uint16_t gpios);
uint16_t gpio_port_read(uint32_t gpioport);
void gpio_port_write(uint32_t gpioport, uint16_t data);
void gpio_port_config_lock(uint32_t gpioport, uint16_t gpios);


# 42 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h" 2
# 248 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"

# 258 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f234.h"
void gpio_mode_setup(uint32_t gpioport, uint8_t mode, uint8_t pull_up_down,
       uint16_t gpios);
void gpio_set_output_options(uint32_t gpioport, uint8_t otype, uint8_t speed,
        uint16_t gpios);
void gpio_set_af(uint32_t gpioport, uint8_t alt_func_num, uint16_t gpios);


# 42 "../libopencm3/include/libopencm3/stm32/common/gpio_common_f24.h" 2
# 35 "../libopencm3/include/libopencm3/stm32/f0/gpio.h" 2
# 71 "../libopencm3/include/libopencm3/stm32/f0/gpio.h"



# 25 "../libopencm3/include/libopencm3/stm32/gpio.h" 2
# 29 "../include/control.h" 2
# 51 "../include/control.h"
typedef enum {
    Mux_DUT,
    Mux_TS,
    Mux_IVNALID
} mux_state;

typedef enum {
    Power_Off,
    Power_On,
    Power_Invalid
} power_state;

typedef enum {
    Lthor_USB,
    Lthor_UART,
    Lthor_Invalid
} lthor_state;

void control_setup(void);

power_state power_state_from_string(char *string);
char* power_state_to_string(power_state state);

void power_set_state(power_state state);
power_state power_get_state(void);
void power_tick(uint32_t delay_ms);

void hdmi_set_state(
# 78 "../include/control.h" 3 4
                   _Bool 
# 78 "../include/control.h"
                        state);


# 80 "../include/control.h" 3 4
_Bool 
# 80 "../include/control.h"
    dyper_set_state(uint8_t dyper_num, 
# 80 "../include/control.h" 3 4
                                       _Bool 
# 80 "../include/control.h"
                                            state);

void mux_set_state(mux_state state);
mux_state mux_get_state(void);
void dut(void);
void ts(void);

lthor_state lthor_state_from_string(char *string);
char* lthor_state_to_string(lthor_state state);

lthor_state lthor_switch_get_state(void);
void lthor_switch_set_state(lthor_state state);
lthor_state lthor_id_get_state(void);
void lthor_id_set_state(lthor_state state);
power_state lthor_vbus_get_state(void);
void lthor_vbus_set_state(power_state state);
void lthor_do_combo(lthor_state state);
# 30 "commands.c" 2
# 1 "../include/leds.h" 1
# 28 "../include/leds.h"
# 1 "../libopencm3/include/libopencm3/stm32/gpio.h" 1
# 29 "../include/leds.h" 2
# 39 "../include/leds.h"
typedef struct {
    uint8_t red;
    uint8_t green;
    uint8_t blue;
} LedColor;

void leds_setup(void);
void led_toggle(uint32_t led);
void led_set_color(int led_nr, int r, int g, int b);
LedColor led_get_color(int led_nr);
# 31 "commands.c" 2
# 1 "./ws2812.h" 1
# 25 "./ws2812.h"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 1 3
# 36 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 37 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3



# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 1 3 4
# 40 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 3 4

# 40 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3
# 61 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 63 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 2 3
# 113 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 3
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef __int_least64_t time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_pthreadtypes.h" 1 3
# 240 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/types.h" 1 3
# 241 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/types.h" 2 3
# 62 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/stdio.h" 1 3
# 80 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3
# 186 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);



int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 266 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
# 396 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 577 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3

# 26 "./ws2812.h" 2
# 63 "./ws2812.h"

# 63 "./ws2812.h"
void ws2812_init(void);
void ws2812_update(void);
void ws2812_set_led_color(uint32_t LEDnumber, uint8_t RED, uint8_t GREEN,
        uint8_t BLUE);
LedColor ws2812_get_led_color(uint32_t led_number);
void setWHOLEcolor(uint8_t RED, uint8_t GREEN, uint8_t BLUE);
void fillBufferBlack(void);
void fillBufferWhite(void);
# 32 "commands.c" 2
# 1 "./oled.h" 1
# 26 "./oled.h"
# 1 "../libopencm3/include/libopencm3/stm32/gpio.h" 1
# 27 "./oled.h" 2
# 36 "./oled.h"
typedef enum {
    OC_on,
    OC_off,
    OC_inverse,
    OC_clean
} oled_color;

void oled_setup(void);
void oled_clean_screen(void);
void oled_init(void);
void oled_display_string(int x, int y, char ch[], oled_color color);
void oled_display_char(int x, int y, char ch, oled_color color) ;

void oled_draw_point(int x, int y, oled_color color);
void oled_draw_line(int x1, int y1, int x2, int y2, oled_color color);
void oled_draw_circle(int cx,int cy, int radius, oled_color color);
void oled_draw_rectangle(int x, int y, int width, int height, oled_color color);

oled_color oled_color_from_string(char *string);
# 33 "commands.c" 2
# 1 "./adc.h" 1
# 46 "./adc.h"
void adc_setup(void);

int adc_get_value(int channel);

int adc_get_voltage(int channel);

int adc_get_calibrated(int channel);

int adc_get_current(void);

int adc_get_resistance(void);

void adc_grab_channel1_and_set_to_zero(void);

void adc_release_channel1(void);
# 34 "commands.c" 2
# 1 "./keys.h" 1
# 28 "./keys.h"
# 1 "../libopencm3/include/libopencm3/stm32/gpio.h" 1
# 29 "./keys.h" 2
# 37 "./keys.h"
void keys_setup(void);

# 38 "./keys.h" 3 4
_Bool 
# 38 "./keys.h"
    keys_is_1_pressed(void);

# 39 "./keys.h" 3 4
_Bool 
# 39 "./keys.h"
    keys_is_2_pressed(void);
# 35 "commands.c" 2
# 1 "../include/uart.h" 1
# 26 "../include/uart.h"
# 1 "../libopencm3/include/libopencm3/stm32/gpio.h" 1
# 27 "../include/uart.h" 2
# 1 "../libopencm3/include/libopencm3/stm32/usart.h" 1
# 24 "../libopencm3/include/libopencm3/stm32/usart.h"
# 1 "../libopencm3/include/libopencm3/stm32/f0/usart.h" 1
# 34 "../libopencm3/include/libopencm3/stm32/f0/usart.h"
# 1 "../libopencm3/include/libopencm3/stm32/common/usart_common_all.h" 1
# 99 "../libopencm3/include/libopencm3/stm32/common/usart_common_all.h"


void usart_set_baudrate(uint32_t usart, uint32_t baud);
void usart_set_databits(uint32_t usart, uint32_t bits);
void usart_set_stopbits(uint32_t usart, uint32_t stopbits);
void usart_set_parity(uint32_t usart, uint32_t parity);
void usart_set_mode(uint32_t usart, uint32_t mode);
void usart_set_flow_control(uint32_t usart, uint32_t flowcontrol);
void usart_enable(uint32_t usart);
void usart_disable(uint32_t usart);
void usart_send(uint32_t usart, uint16_t data);
uint16_t usart_recv(uint32_t usart);
void usart_wait_send_ready(uint32_t usart);
void usart_wait_recv_ready(uint32_t usart);
void usart_send_blocking(uint32_t usart, uint16_t data);
uint16_t usart_recv_blocking(uint32_t usart);
void usart_enable_rx_dma(uint32_t usart);
void usart_disable_rx_dma(uint32_t usart);
void usart_enable_tx_dma(uint32_t usart);
void usart_disable_tx_dma(uint32_t usart);
void usart_enable_rx_interrupt(uint32_t usart);
void usart_disable_rx_interrupt(uint32_t usart);
void usart_enable_tx_interrupt(uint32_t usart);
void usart_disable_tx_interrupt(uint32_t usart);
void usart_enable_error_interrupt(uint32_t usart);
void usart_disable_error_interrupt(uint32_t usart);

# 125 "../libopencm3/include/libopencm3/stm32/common/usart_common_all.h" 3 4
_Bool 
# 125 "../libopencm3/include/libopencm3/stm32/common/usart_common_all.h"
    usart_get_flag(uint32_t usart, uint32_t flag);


# 35 "../libopencm3/include/libopencm3/stm32/f0/usart.h" 2
# 1 "../libopencm3/include/libopencm3/stm32/common/usart_common_v2.h" 1
# 26 "../libopencm3/include/libopencm3/stm32/common/usart_common_v2.h"
       
# 616 "../libopencm3/include/libopencm3/stm32/common/usart_common_v2.h"


void usart_enable_data_inversion(uint32_t usart);
void usart_disable_data_inversion(uint32_t usart);
void usart_enable_tx_inversion(uint32_t usart);
void usart_disable_tx_inversion(uint32_t usart);
void usart_enable_rx_inversion(uint32_t usart);
void usart_disable_rx_inversion(uint32_t usart);
void usart_enable_halfduplex(uint32_t usart);
void usart_disable_halfduplex(uint32_t usart);

void usart_set_rx_timeout_value(uint32_t usart, uint32_t value);
void usart_enable_rx_timeout(uint32_t usart);
void usart_disable_rx_timeout(uint32_t usart);
void usart_enable_rx_timeout_interrupt(uint32_t usart);
void usart_disable_rx_timeout_interrupt(uint32_t usart);


# 36 "../libopencm3/include/libopencm3/stm32/f0/usart.h" 2
# 58 "../libopencm3/include/libopencm3/stm32/f0/usart.h"



# 25 "../libopencm3/include/libopencm3/stm32/usart.h" 2
# 28 "../include/uart.h" 2

# 1 "../FreeRTOS/Source/include/FreeRTOS.h" 1
# 34 "../FreeRTOS/Source/include/FreeRTOS.h"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 35 "../FreeRTOS/Source/include/FreeRTOS.h" 2
# 56 "../FreeRTOS/Source/include/FreeRTOS.h"
# 1 "./FreeRTOSConfig.h" 1
# 57 "../FreeRTOS/Source/include/FreeRTOS.h" 2


# 1 "../FreeRTOS/Source/include/projdefs.h" 1
# 35 "../FreeRTOS/Source/include/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "../FreeRTOS/Source/include/FreeRTOS.h" 2


# 1 "../FreeRTOS/Source/include/portable.h" 1
# 45 "../FreeRTOS/Source/include/portable.h"
# 1 "../FreeRTOS/Source/include/deprecated_definitions.h" 1
# 46 "../FreeRTOS/Source/include/portable.h" 2






# 1 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h" 1
# 55 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





 typedef uint32_t TickType_t;
# 80 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
extern void vPortYield( void );
# 90 "../FreeRTOS/Source/portable/GCC/ARM_CM0/portmacro.h"
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );
extern uint32_t ulSetInterruptMaskFromISR( void ) __attribute__((naked));
extern void vClearInterruptMaskFromISR( uint32_t ulMask ) __attribute__((naked));
# 53 "../FreeRTOS/Source/include/portable.h" 2
# 91 "../FreeRTOS/Source/include/portable.h"
# 1 "../FreeRTOS/Source/include/mpu_wrappers.h" 1
# 92 "../FreeRTOS/Source/include/portable.h" 2
# 102 "../FreeRTOS/Source/include/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;



typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 123 "../FreeRTOS/Source/include/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "../FreeRTOS/Source/include/FreeRTOS.h" 2
# 963 "../FreeRTOS/Source/include/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{
 UBaseType_t uxDummy1;
 void *pvDummy2;
 StaticMiniListItem_t xDummy3;
} StaticList_t;
# 999 "../FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 5 ) ];
# 1034 "../FreeRTOS/Source/include/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;
# 1047 "../FreeRTOS/Source/include/FreeRTOS.h"
} StaticTask_t;
# 1063 "../FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];






  void *pvDummy7;







} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1107 "../FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;
# 1120 "../FreeRTOS/Source/include/FreeRTOS.h"
} StaticEventGroup_t;
# 1136 "../FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 UBaseType_t uxDummy4;
 void *pvDummy5;
 TaskFunction_t pvDummy6;
# 1152 "../FreeRTOS/Source/include/FreeRTOS.h"
} StaticTimer_t;
# 1168 "../FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;



} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 30 "../include/uart.h" 2
# 1 "../FreeRTOS/Source/include/queue.h" 1
# 40 "../FreeRTOS/Source/include/queue.h"
# 1 "../FreeRTOS/Source/include/task.h" 1
# 36 "../FreeRTOS/Source/include/task.h"
# 1 "../FreeRTOS/Source/include/list.h" 1
# 139 "../FreeRTOS/Source/include/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "../FreeRTOS/Source/include/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "../FreeRTOS/Source/include/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "../FreeRTOS/Source/include/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "../FreeRTOS/Source/include/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "../FreeRTOS/Source/include/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "../FreeRTOS/Source/include/task.h" 2
# 61 "../FreeRTOS/Source/include/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 322 "../FreeRTOS/Source/include/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 657 "../FreeRTOS/Source/include/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 698 "../FreeRTOS/Source/include/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 750 "../FreeRTOS/Source/include/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 809 "../FreeRTOS/Source/include/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 834 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 881 "../FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 907 "../FreeRTOS/Source/include/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 963 "../FreeRTOS/Source/include/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1005 "../FreeRTOS/Source/include/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1056 "../FreeRTOS/Source/include/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1105 "../FreeRTOS/Source/include/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1134 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1167 "../FreeRTOS/Source/include/task.h"
void vTaskStartScheduler( void ) ;
# 1223 "../FreeRTOS/Source/include/task.h"
void vTaskEndScheduler( void ) ;
# 1274 "../FreeRTOS/Source/include/task.h"
void vTaskSuspendAll( void ) ;
# 1328 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1343 "../FreeRTOS/Source/include/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1359 "../FreeRTOS/Source/include/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1373 "../FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1386 "../FreeRTOS/Source/include/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1402 "../FreeRTOS/Source/include/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1423 "../FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1476 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1485 "../FreeRTOS/Source/include/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1584 "../FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1631 "../FreeRTOS/Source/include/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1685 "../FreeRTOS/Source/include/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1766 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1857 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1934 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2035 "../FreeRTOS/Source/include/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2104 "../FreeRTOS/Source/include/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2120 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2141 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2174 "../FreeRTOS/Source/include/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2188 "../FreeRTOS/Source/include/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2214 "../FreeRTOS/Source/include/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2225 "../FreeRTOS/Source/include/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2281 "../FreeRTOS/Source/include/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2302 "../FreeRTOS/Source/include/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2318 "../FreeRTOS/Source/include/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 41 "../FreeRTOS/Source/include/queue.h" 2






struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;
# 650 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "../FreeRTOS/Source/include/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "../FreeRTOS/Source/include/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "../FreeRTOS/Source/include/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1295 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;
# 1458 "../FreeRTOS/Source/include/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "../FreeRTOS/Source/include/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "../FreeRTOS/Source/include/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "../FreeRTOS/Source/include/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1556 "../FreeRTOS/Source/include/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "../FreeRTOS/Source/include/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "../FreeRTOS/Source/include/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 31 "../include/uart.h" 2




extern QueueHandle_t usart_incoming_queue;
extern QueueHandle_t usart_outgoing_queue;
extern QueueSetHandle_t usart_queue_set;

void uart_setup(void);
void uart_send(char *data);
void uart_printf(const char *fmt, ...);
void uart_putc(char data);

void uart_set_voltage(int mvolts);
int uart_get_voltage(void);
# 36 "commands.c" 2
# 1 "./firmware.h" 1
# 26 "./firmware.h"
char* getVersion(void);
# 37 "commands.c" 2
# 1 "./state.h" 1
# 29 "./state.h"
void state_setup(void);



int state_get_idle_current(void);


void state_set_idle_current(int mA);



# 39 "./state.h" 3 4
_Bool 
# 39 "./state.h"
    state_get_echo(void);


void state_set_echo(
# 42 "./state.h" 3 4
                   _Bool 
# 42 "./state.h"
                        state);
# 38 "commands.c" 2
# 1 "../include/misc.h" 1
# 26 "../include/misc.h"
char* strtok_lite(char *str, const char* delim);
int str_split(char **dst, int maxcount, char *src, char *tokens);
# 39 "commands.c" 2

# 1 "../include/commands.h" 1
# 26 "../include/commands.h"
typedef int (*cmd_textCallback)(char **args, int argscnt);

typedef struct {
    char *name;
    cmd_textCallback textCallback;
    char *help;
} client_command;

const client_command* find_command(char *cmd);

void process_command(char *cmd);
# 41 "commands.c" 2

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
    {"help", cb_txt_help, "This help" },
    {"version", cb_txt_version, "Display version of the firmware" },
    {"echo", cb_txt_echo, "Get (no arguments) or set ('on' or 'off') echo on serial \"console\": echo [on|off]. The default value is on." },
    {"power", cb_txt_power, "Get (no arguments) or set ('on' or 'off') or switch off and on ('tick') power supply for DUT: power [on|off|tick]" },
    {"hdmi", cb_txt_hdmi, "Get (no arguments) or set ('on' or 'off') HDMI HOTPLUG pin: hdmi [on|off]" },
    {"dyper", cb_txt_dyper, "Get (no second argument) or set ('on' or 'off') DyPer state: dyper 1|2 [on|off]" },
    {"mux", cb_txt_mux, "Connect microSD card to external connector (DUT) or card reader (ts): mux [dut|ts]" },
    {"dut", cb_txt_dut, "Connect microSD card and power to DUT: dut" },
    {"ts", cb_txt_ts, "Connect microSD card and power to TS: ts" },
    {"led", cb_txt_led, "Get (no second or third argument) or set ('R G B') color of led (1 | 2), ex: led 1 255 0 255" },
    {"clr", cb_txt_clr, "Clear oled display" },
    {"text", cb_txt_text, "Print text on the OLED display: text x y color content" },
    {"draw", cb_txt_draw, "Draw an object on the OLED display: draw object x1 y1 [x2 y2], objects are:\n"
                                    "               - point x y color - draws one point at given coordinates\n"
                                    "               - line x1 y1 x2 y2 color - draws line between given coordinates\n"
                                    "               - rectangle left top width height color - draws line between given coordinates\n"
                                    "               - circle x y radius color - draws line between given coordinates\n"
                                    "     color must be 'on', 'off' or 'inv'"},
    {"adc", cb_txt_adc, "Print current adc value of all (if no arguments are given) or one specified channel, ex: adc 1" },
    {"voltage", cb_txt_voltage, "Print current voltage [mV] of all (if no arguments are given) or one specified channel, ex: voltage 1" },
    {"current", cb_txt_current, "Print current current [mA] being consumed by DUT" },
    {"lthor", cb_txt_lthor, "Get (no second argument) or set state of lthor control signals:\n"
                                    "               - lthor switch [usb|uart] - redirect DUT's USB wires to NanoPi's 'usb' or 'uart'\n"
                                    "               - lthor id [usb|uart] - switch DUT's USB to 'usb' or 'uart' mode\n"
                                    "               - lthor vbus [on|off] - switch DUT's VBUS 'on' or 'off'\n"
                                    "               - lthor combo [usb|uart] - make DUT and MuxPi USB work in 'usb' or 'uart' mode - no get function\n" },
    {"key", cb_txt_key, "Get current state of given key or both if no key number is given: key [1|2]" },
    {"uart", cb_txt_uart, "Get current value of UART voltage or set if new value is given [in millivolts]" },
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

    xprintf("MuxPi firmware v%s\n", getVersion());

    return 0;
}

int cb_txt_echo(char **args, int args_cnt) {
    
# 114 "commands.c" 3 4
   _Bool 
# 114 "commands.c"
        state;

    if (args_cnt > 1) {
        if (strncasecmp("on", args[1], 2) == 0) {
            state = 
# 118 "commands.c" 3 4
                   1
# 118 "commands.c"
                       ;
        } else if(strncasecmp("off", args[1], 3) == 0) {
            state = 
# 120 "commands.c" 3 4
                   0
# 120 "commands.c"
                        ;
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
        } else if(strncasecmp("tick", args[1], 4) == 0) {
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
    
# 158 "commands.c" 3 4
   _Bool 
# 158 "commands.c"
        state = 
# 158 "commands.c" 3 4
                0
# 158 "commands.c"
                     ;

    if (args_cnt > 1) {
        if (strncasecmp("on", args[1], 2) == 0) {
            state = 
# 162 "commands.c" 3 4
                   1
# 162 "commands.c"
                       ;
        } else if(strncasecmp("off", args[1], 3) == 0) {
            state = 
# 164 "commands.c" 3 4
                   0
# 164 "commands.c"
                        ;
        } else {
            return -1;
        }
    }
    hdmi_set_state(state);

    return 0;
}

int cb_txt_dyper(char **args, int args_cnt) {
    
# 175 "commands.c" 3 4
   _Bool 
# 175 "commands.c"
        state = 
# 175 "commands.c" 3 4
                0
# 175 "commands.c"
                     ;

    if (args_cnt > 2) {
        if (strncasecmp("on", args[2], 2) == 0) {
            state = 
# 179 "commands.c" 3 4
                   1
# 179 "commands.c"
                       ;
        } else if(strncasecmp("off", args[2], 3) == 0) {
            state = 
# 181 "commands.c" 3 4
                   0
# 181 "commands.c"
                        ;
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
        if (led_num < 1 || led_num > (2)) {
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
    static char text_buf[17];

    if (args_cnt > 4) {
        long x, y;

        xatoi(&args[1], &x);
        xatoi(&args[2], &y);
        if ((x < 0 || x > (128)) || (y < 0 || y > (32))) {
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
        if (channel < 0 || channel > 5) {
            return -1;
        }
        print_adc(channel);
    } else {
        print_adc(1);
        print_adc(2);
        print_adc(3);
        print_adc(4);
        print_adc(5);
        xprintf("vrefint: %d\n", (*(volatile uint16_t *)(0x1FFFF7BA)));
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
        if (channel < 0 || channel > 5) {
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
    
# 472 "commands.c" 3 4
   _Bool 
# 472 "commands.c"
        state = key_num == 1 ? keys_is_1_pressed() : keys_is_2_pressed();
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
        xprintf("key1: "); display_key_state(1);
        xprintf("key2: "); display_key_state(2);
    }

    return 0;
}

int cb_txt_uart(char **args, int args_cnt) {
    if (args_cnt > 1) {
        long mvolts;
        if (!xatoi(&args[1], &mvolts)) {
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

    return 
# 512 "commands.c" 3 4
          ((void *)0)
# 512 "commands.c"
              ;
}


void process_command(char *cmd) {
    char *line[10];
    int argscnt = str_split(line, 10, cmd, " \t\n\v\f\r");

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
