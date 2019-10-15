# 1 "uart.c"
# 1 "/home/a.malinowsk2/vcs/muxpi/sw/control/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "uart.c"
# 23 "uart.c"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4

# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 24 "uart.c" 2

# 1 "../libopencm3/include/libopencm3/stm32/gpio.h" 1
# 20 "../libopencm3/include/libopencm3/stm32/gpio.h"
# 1 "../libopencm3/include/libopencm3/cm3/common.h" 1
# 23 "../libopencm3/include/libopencm3/cm3/common.h"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdint.h" 1 3 4
# 9 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdint.h" 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdint.h" 1 3 4
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
# 24 "../libopencm3/include/libopencm3/cm3/common.h" 2
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdbool.h" 1 3 4
# 25 "../libopencm3/include/libopencm3/cm3/common.h" 2
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



# 74 "../libopencm3/include/libopencm3/stm32/common/gpio_common_all.h"
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
# 26 "uart.c" 2
# 1 "../libopencm3/include/libopencm3/cm3/nvic.h" 1
# 133 "../libopencm3/include/libopencm3/cm3/nvic.h"
# 1 "../libopencm3/include/libopencm3/dispatch/nvic.h" 1





# 1 "../libopencm3/include/libopencm3/stm32/f0/nvic.h" 1
# 9 "../libopencm3/include/libopencm3/stm32/f0/nvic.h"
# 1 "../libopencm3/include/libopencm3/cm3/nvic.h" 1
# 10 "../libopencm3/include/libopencm3/stm32/f0/nvic.h" 2
# 58 "../libopencm3/include/libopencm3/stm32/f0/nvic.h"


void wwdg_isr(void);
void pvd_isr(void);
void rtc_isr(void);
void flash_isr(void);
void rcc_isr(void);
void exti0_1_isr(void);
void exti2_3_isr(void);
void exti4_15_isr(void);
void tsc_isr(void);
void dma1_channel1_isr(void);
void dma1_channel2_3_isr(void);
void dma1_channel4_5_isr(void);
void adc_comp_isr(void);
void tim1_brk_up_trg_com_isr(void);
void tim1_cc_isr(void);
void tim2_isr(void);
void tim3_isr(void);
void tim6_dac_isr(void);
void tim7_isr(void);
void tim14_isr(void);
void tim15_isr(void);
void tim16_isr(void);
void tim17_isr(void);
void i2c1_isr(void);
void i2c2_isr(void);
void spi1_isr(void);
void spi2_isr(void);
void usart1_isr(void);
void usart2_isr(void);
void usart3_4_isr(void);
void cec_can_isr(void);
void usb_isr(void);


# 7 "../libopencm3/include/libopencm3/dispatch/nvic.h" 2
# 134 "../libopencm3/include/libopencm3/cm3/nvic.h" 2





void nvic_enable_irq(uint8_t irqn);
void nvic_disable_irq(uint8_t irqn);
uint8_t nvic_get_pending_irq(uint8_t irqn);
void nvic_set_pending_irq(uint8_t irqn);
void nvic_clear_pending_irq(uint8_t irqn);
uint8_t nvic_get_irq_enabled(uint8_t irqn);
void nvic_set_priority(uint8_t irqn, uint8_t priority);







void reset_handler(void);
void nmi_handler(void);
void hard_fault_handler(void);
void sv_call_handler(void);
void pend_sv_handler(void);
void sys_tick_handler(void);
# 168 "../libopencm3/include/libopencm3/cm3/nvic.h"

# 27 "uart.c" 2
# 1 "../libopencm3/include/libopencm3/stm32/timer.h" 1
# 26 "../libopencm3/include/libopencm3/stm32/timer.h"
# 1 "../libopencm3/include/libopencm3/stm32/f0/timer.h" 1
# 35 "../libopencm3/include/libopencm3/stm32/f0/timer.h"
# 1 "../libopencm3/include/libopencm3/stm32/common/timer_common_f24.h" 1
# 36 "../libopencm3/include/libopencm3/stm32/common/timer_common_f24.h"
# 1 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h" 1
# 1090 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h"
enum tim_oc_id {
 TIM_OC1 = 0,
 TIM_OC1N,
 TIM_OC2,
 TIM_OC2N,
 TIM_OC3,
 TIM_OC3N,
 TIM_OC4,
};


enum tim_oc_mode {
 TIM_OCM_FROZEN,
 TIM_OCM_ACTIVE,
 TIM_OCM_INACTIVE,
 TIM_OCM_TOGGLE,
 TIM_OCM_FORCE_LOW,
 TIM_OCM_FORCE_HIGH,
 TIM_OCM_PWM1,
 TIM_OCM_PWM2,
};


enum tim_ic_id {
 TIM_IC1,
 TIM_IC2,
 TIM_IC3,
 TIM_IC4,
};
# 1127 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h"
enum tim_ic_filter {
 TIM_IC_OFF,
 TIM_IC_CK_INT_N_2,
 TIM_IC_CK_INT_N_4,
 TIM_IC_CK_INT_N_8,
 TIM_IC_DTF_DIV_2_N_6,
 TIM_IC_DTF_DIV_2_N_8,
 TIM_IC_DTF_DIV_4_N_6,
 TIM_IC_DTF_DIV_4_N_8,
 TIM_IC_DTF_DIV_8_N_6,
 TIM_IC_DTF_DIV_8_N_8,
 TIM_IC_DTF_DIV_16_N_5,
 TIM_IC_DTF_DIV_16_N_6,
 TIM_IC_DTF_DIV_16_N_8,
 TIM_IC_DTF_DIV_32_N_5,
 TIM_IC_DTF_DIV_32_N_6,
 TIM_IC_DTF_DIV_32_N_8,
};




enum tim_ic_psc {
 TIM_IC_PSC_OFF,
 TIM_IC_PSC_2,
 TIM_IC_PSC_4,
 TIM_IC_PSC_8,
};





enum tim_ic_input {
 TIM_IC_OUT = 0,
 TIM_IC_IN_TI1 = 1,
 TIM_IC_IN_TI2 = 2,
 TIM_IC_IN_TRC = 3,
 TIM_IC_IN_TI3 = 5,
 TIM_IC_IN_TI4 = 6,
};


enum tim_et_pol {
 TIM_ET_RISING,
 TIM_ET_FALLING,
};





void timer_enable_irq(uint32_t timer_peripheral, uint32_t irq);
void timer_disable_irq(uint32_t timer_peripheral, uint32_t irq);

# 1181 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h" 3 4
_Bool 
# 1181 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h"
    timer_interrupt_source(uint32_t timer_peripheral, uint32_t flag);

# 1182 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h" 3 4
_Bool 
# 1182 "../libopencm3/include/libopencm3/stm32/common/timer_common_all.h"
    timer_get_flag(uint32_t timer_peripheral, uint32_t flag);
void timer_clear_flag(uint32_t timer_peripheral, uint32_t flag);
void timer_set_mode(uint32_t timer_peripheral, uint32_t clock_div,
      uint32_t alignment, uint32_t direction);
void timer_set_clock_division(uint32_t timer_peripheral, uint32_t clock_div);
void timer_enable_preload(uint32_t timer_peripheral);
void timer_disable_preload(uint32_t timer_peripheral);
void timer_set_alignment(uint32_t timer_peripheral, uint32_t alignment);
void timer_direction_up(uint32_t timer_peripheral);
void timer_direction_down(uint32_t timer_peripheral);
void timer_one_shot_mode(uint32_t timer_peripheral);
void timer_continuous_mode(uint32_t timer_peripheral);
void timer_update_on_any(uint32_t timer_peripheral);
void timer_update_on_overflow(uint32_t timer_peripheral);
void timer_enable_update_event(uint32_t timer_peripheral);
void timer_disable_update_event(uint32_t timer_peripheral);
void timer_enable_counter(uint32_t timer_peripheral);
void timer_disable_counter(uint32_t timer_peripheral);
void timer_set_output_idle_state(uint32_t timer_peripheral, uint32_t outputs);
void timer_reset_output_idle_state(uint32_t timer_peripheral, uint32_t outputs);
void timer_set_ti1_ch123_xor(uint32_t timer_peripheral);
void timer_set_ti1_ch1(uint32_t timer_peripheral);
void timer_set_master_mode(uint32_t timer_peripheral, uint32_t mode);
void timer_set_dma_on_compare_event(uint32_t timer_peripheral);
void timer_set_dma_on_update_event(uint32_t timer_peripheral);
void timer_enable_compare_control_update_on_trigger(uint32_t timer_peripheral);
void timer_disable_compare_control_update_on_trigger(uint32_t timer_peripheral);
void timer_enable_preload_complementry_enable_bits(uint32_t timer_peripheral);
void timer_disable_preload_complementry_enable_bits(uint32_t timer_peripheral);
void timer_set_prescaler(uint32_t timer_peripheral, uint32_t value);
void timer_set_repetition_counter(uint32_t timer_peripheral, uint32_t value);
void timer_set_period(uint32_t timer_peripheral, uint32_t period);
void timer_enable_oc_clear(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_disable_oc_clear(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_set_oc_fast_mode(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_set_oc_slow_mode(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_set_oc_mode(uint32_t timer_peripheral, enum tim_oc_id oc_id,
         enum tim_oc_mode oc_mode);
void timer_enable_oc_preload(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_disable_oc_preload(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_set_oc_polarity_high(uint32_t timer_peripheral,
    enum tim_oc_id oc_id);
void timer_set_oc_polarity_low(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_enable_oc_output(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_disable_oc_output(uint32_t timer_peripheral, enum tim_oc_id oc_id);
void timer_set_oc_idle_state_set(uint32_t timer_peripheral,
     enum tim_oc_id oc_id);
void timer_set_oc_idle_state_unset(uint32_t timer_peripheral,
       enum tim_oc_id oc_id);
void timer_set_oc_value(uint32_t timer_peripheral, enum tim_oc_id oc_id,
   uint32_t value);
void timer_enable_break_main_output(uint32_t timer_peripheral);
void timer_disable_break_main_output(uint32_t timer_peripheral);
void timer_enable_break_automatic_output(uint32_t timer_peripheral);
void timer_disable_break_automatic_output(uint32_t timer_peripheral);
void timer_set_break_polarity_high(uint32_t timer_peripheral);
void timer_set_break_polarity_low(uint32_t timer_peripheral);
void timer_enable_break(uint32_t timer_peripheral);
void timer_disable_break(uint32_t timer_peripheral);
void timer_set_enabled_off_state_in_run_mode(uint32_t timer_peripheral);
void timer_set_disabled_off_state_in_run_mode(uint32_t timer_peripheral);
void timer_set_enabled_off_state_in_idle_mode(uint32_t timer_peripheral);
void timer_set_disabled_off_state_in_idle_mode(uint32_t timer_peripheral);
void timer_set_break_lock(uint32_t timer_peripheral, uint32_t lock);
void timer_set_deadtime(uint32_t timer_peripheral, uint32_t deadtime);
void timer_generate_event(uint32_t timer_peripheral, uint32_t event);
uint32_t timer_get_counter(uint32_t timer_peripheral);
void timer_set_counter(uint32_t timer_peripheral, uint32_t count);

void timer_ic_set_filter(uint32_t timer, enum tim_ic_id ic,
    enum tim_ic_filter flt);
void timer_ic_set_prescaler(uint32_t timer, enum tim_ic_id ic,
       enum tim_ic_psc psc);
void timer_ic_set_input(uint32_t timer, enum tim_ic_id ic,
   enum tim_ic_input in);
void timer_ic_enable(uint32_t timer, enum tim_ic_id ic);
void timer_ic_disable(uint32_t timer, enum tim_ic_id ic);

void timer_slave_set_filter(uint32_t timer, enum tim_ic_filter flt);
void timer_slave_set_prescaler(uint32_t timer, enum tim_ic_psc psc);
void timer_slave_set_polarity(uint32_t timer, enum tim_et_pol pol);
void timer_slave_set_mode(uint32_t timer, uint8_t mode);
void timer_slave_set_trigger(uint32_t timer, uint8_t trigger);


# 37 "../libopencm3/include/libopencm3/stm32/common/timer_common_f24.h" 2
# 92 "../libopencm3/include/libopencm3/stm32/common/timer_common_f24.h"
enum tim_ic_pol {
 TIM_IC_RISING,
 TIM_IC_FALLING,
 TIM_IC_BOTH,
};





void timer_set_option(uint32_t timer_peripheral, uint32_t option);
void timer_ic_set_polarity(uint32_t timer, enum tim_ic_id ic,
      enum tim_ic_pol pol);


# 36 "../libopencm3/include/libopencm3/stm32/f0/timer.h" 2
# 27 "../libopencm3/include/libopencm3/stm32/timer.h" 2
# 28 "uart.c" 2
# 1 "../libopencm3/include/libopencm3/stm32/rcc.h" 1
# 24 "../libopencm3/include/libopencm3/stm32/rcc.h"
# 1 "../libopencm3/include/libopencm3/stm32/f0/rcc.h" 1
# 400 "../libopencm3/include/libopencm3/stm32/f0/rcc.h"
extern uint32_t rcc_ahb_frequency;
extern uint32_t rcc_apb1_frequency;





enum rcc_osc {
 RCC_HSI14, RCC_HSI, RCC_HSE, RCC_PLL, RCC_LSI, RCC_LSE, RCC_HSI48
};



enum rcc_periph_clken {

 RCC_DMA = (((0x14) << 5) + (0)),
 RCC_DMA1 = (((0x14) << 5) + (0)),
 RCC_DMA2 = (((0x14) << 5) + (1)),
 RCC_SRAM = (((0x14) << 5) + (2)),
 RCC_FLTIF = (((0x14) << 5) + (4)),
 RCC_CRC = (((0x14) << 5) + (6)),
 RCC_GPIOA = (((0x14) << 5) + (17)),
 RCC_GPIOB = (((0x14) << 5) + (18)),
 RCC_GPIOC = (((0x14) << 5) + (19)),
 RCC_GPIOD = (((0x14) << 5) + (20)),
 RCC_GPIOE = (((0x14) << 5) + (21)),
 RCC_GPIOF = (((0x14) << 5) + (22)),
 RCC_TSC = (((0x14) << 5) + (24)),


 RCC_SYSCFG_COMP = (((0x18) << 5) + (0)),
 RCC_USART6 = (((0x18) << 5) + (5)),
 RCC_USART7 = (((0x18) << 5) + (6)),
 RCC_USART8 = (((0x18) << 5) + (7)),
 RCC_ADC = (((0x18) << 5) + (9)),
 RCC_ADC1 = (((0x18) << 5) + (9)),
 RCC_TIM1 = (((0x18) << 5) + (11)),
 RCC_SPI1 = (((0x18) << 5) + (12)),
 RCC_USART1 = (((0x18) << 5) + (14)),
 RCC_TIM15 = (((0x18) << 5) + (16)),
 RCC_TIM16 = (((0x18) << 5) + (17)),
 RCC_TIM17 = (((0x18) << 5) + (18)),
 RCC_DBGMCU = (((0x18) << 5) + (22)),


 RCC_TIM2 = (((0x1C) << 5) + (0)),
 RCC_TIM3 = (((0x1C) << 5) + (1)),
 RCC_TIM6 = (((0x1C) << 5) + (4)),
 RCC_TIM7 = (((0x1C) << 5) + (5)),
 RCC_TIM14 = (((0x1C) << 5) + (8)),
 RCC_WWDG = (((0x1C) << 5) + (11)),
 RCC_SPI2 = (((0x1C) << 5) + (14)),
 RCC_USART2 = (((0x1C) << 5) + (17)),
 RCC_USART3 = (((0x1C) << 5) + (18)),
 RCC_USART4 = (((0x1C) << 5) + (19)),
 RCC_USART5 = (((0x1C) << 5) + (20)),
 RCC_I2C1 = (((0x1C) << 5) + (21)),
 RCC_I2C2 = (((0x1C) << 5) + (22)),
 RCC_USB = (((0x1C) << 5) + (23)),
 RCC_CAN = (((0x1C) << 5) + (25)),
 RCC_CAN1 = (((0x1C) << 5) + (25)),
 RCC_CRS = (((0x1C) << 5) + (27)),
 RCC_PWR = (((0x1C) << 5) + (28)),
 RCC_DAC = (((0x1C) << 5) + (29)),
 RCC_DAC1 = (((0x1C) << 5) + (29)),
 RCC_CEC = (((0x1C) << 5) + (30)),


 RCC_RTC = (((0x20) << 5) + (15)),
};

enum rcc_periph_rst {

 RST_SYSCFG = (((0x0C) << 5) + (0)),
 RST_ADC = (((0x0C) << 5) + (9)),
 RST_ADC1 = (((0x0C) << 5) + (9)),
 RST_TIM1 = (((0x0C) << 5) + (11)),
 RST_SPI1 = (((0x0C) << 5) + (12)),
 RST_USART1 = (((0x0C) << 5) + (14)),
 RST_TIM15 = (((0x0C) << 5) + (16)),
 RST_TIM16 = (((0x0C) << 5) + (17)),
 RST_TIM17 = (((0x0C) << 5) + (18)),
 RST_DBGMCU = (((0x0C) << 5) + (22)),


 RST_TIM2 = (((0x10) << 5) + (0)),
 RST_TIM3 = (((0x10) << 5) + (1)),
 RST_TIM6 = (((0x10) << 5) + (4)),
 RST_TIM7 = (((0x10) << 5) + (5)),
 RST_TIM14 = (((0x10) << 5) + (8)),
 RST_WWDG = (((0x10) << 5) + (11)),
 RST_SPI2 = (((0x10) << 5) + (14)),
 RST_USART2 = (((0x10) << 5) + (17)),
 RST_USART3 = (((0x10) << 5) + (18)),
 RST_USART4 = (((0x10) << 5) + (19)),
 RST_I2C1 = (((0x10) << 5) + (21)),
 RST_I2C2 = (((0x10) << 5) + (22)),
 RST_USB = (((0x10) << 5) + (23)),
 RST_CAN = (((0x10) << 5) + (25)),
 RST_CAN1 = (((0x10) << 5) + (25)),
 RST_CRS = (((0x10) << 5) + (27)),
 RST_PWR = (((0x10) << 5) + (28)),
 RST_DAC = (((0x10) << 5) + (29)),
 RST_DAC1 = (((0x10) << 5) + (29)),
 RST_CEC = (((0x10) << 5) + (30)),


 RST_BACKUPDOMAIN = (((0x20) << 5) + (16)),


 RST_GPIOA = (((0x28) << 5) + (17)),
 RST_GPIOB = (((0x28) << 5) + (18)),
 RST_GPIOC = (((0x28) << 5) + (19)),
 RST_GPIOD = (((0x28) << 5) + (20)),
 RST_GPIOE = (((0x28) << 5) + (21)),
 RST_GPIOF = (((0x28) << 5) + (22)),
 RST_TSC = (((0x28) << 5) + (24)),
};






# 1 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h" 1
# 39 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h"


void rcc_peripheral_enable_clock(volatile uint32_t *reg, uint32_t en);
void rcc_peripheral_disable_clock(volatile uint32_t *reg, uint32_t en);
void rcc_peripheral_reset(volatile uint32_t *reg, uint32_t reset);
void rcc_peripheral_clear_reset(volatile uint32_t *reg, uint32_t clear_reset);

void rcc_periph_clock_enable(enum rcc_periph_clken clken);
void rcc_periph_clock_disable(enum rcc_periph_clken clken);
void rcc_periph_reset_pulse(enum rcc_periph_rst rst);
void rcc_periph_reset_hold(enum rcc_periph_rst rst);
void rcc_periph_reset_release(enum rcc_periph_rst rst);

void rcc_set_mco(uint32_t mcosrc);
void rcc_osc_bypass_enable(enum rcc_osc osc);
void rcc_osc_bypass_disable(enum rcc_osc osc);







# 61 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h" 3 4
_Bool 
# 61 "../libopencm3/include/libopencm3/stm32/common/rcc_common_all.h"
    rcc_is_osc_ready(enum rcc_osc osc);






void rcc_wait_for_osc_ready(enum rcc_osc osc);


# 525 "../libopencm3/include/libopencm3/stm32/f0/rcc.h" 2



void rcc_osc_ready_int_clear(enum rcc_osc osc);
void rcc_osc_ready_int_enable(enum rcc_osc osc);
void rcc_osc_ready_int_disable(enum rcc_osc osc);
int rcc_osc_ready_int_flag(enum rcc_osc osc);
void rcc_osc_on(enum rcc_osc osc);
void rcc_osc_off(enum rcc_osc osc);
void rcc_css_enable(void);
void rcc_css_disable(void);
void rcc_css_int_clear(void);
int rcc_css_int_flag(void);
void rcc_set_sysclk_source(enum rcc_osc clk);
void rcc_set_usbclk_source(enum rcc_osc clk);
void rcc_set_rtc_clock_source(enum rcc_osc clk);
void rcc_enable_rtc_clock(void);
void rcc_disable_rtc_clock(void);
void rcc_set_pll_multiplication_factor(uint32_t mul);
void rcc_set_pll_source(uint32_t pllsrc);
void rcc_set_pllxtpre(uint32_t pllxtpre);
void rcc_set_ppre(uint32_t ppre);
void rcc_set_hpre(uint32_t hpre);
void rcc_set_prediv(uint32_t prediv);
enum rcc_osc rcc_system_clock_source(void);
void rcc_set_i2c_clock_hsi(uint32_t i2c);
void rcc_set_i2c_clock_sysclk(uint32_t i2c);
uint32_t rcc_get_i2c_clocks(void);
enum rcc_osc rcc_usb_clock_source(void);
void rcc_clock_setup_in_hse_8mhz_out_48mhz(void);
void rcc_clock_setup_in_hsi_out_48mhz(void);
void rcc_clock_setup_in_hsi48_out_48mhz(void);


# 25 "../libopencm3/include/libopencm3/stm32/rcc.h" 2
# 29 "uart.c" 2
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
# 30 "uart.c" 2

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
# 32 "uart.c" 2

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
# 34 "uart.c" 2





QueueHandle_t usart_incoming_queue;



void usart1_isr(void) {
    long xHigherPriorityTaskWoken = ( ( BaseType_t ) 0 );
    if ((((*(volatile uint32_t *)(((((0x40000000U) + 0x00000000) + 0x13800)) + 0x00)) & (1 << 5)) != 0) &&
        (((*(volatile uint32_t *)(((((0x40000000U) + 0x00000000) + 0x13800)) + 0x1C)) & (1 << 5)) != 0)) {
        uint8_t data = usart_recv((((0x40000000U) + 0x00000000) + 0x13800));
        xQueueGenericSendFromISR( ( usart_incoming_queue ), ( &data ), ( &xHigherPriorityTaskWoken ), ( ( BaseType_t ) 0 ) );
    }
    if( xHigherPriorityTaskWoken ) ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL );
}



static void pwm_setup(void) {
    gpio_mode_setup((((0x40000000U) + 0x08000000) + 0x0400), 0x2, 0x0, (1 << 9));
    gpio_set_af((((0x40000000U) + 0x08000000) + 0x0400), 0x2, (1 << 9));

    rcc_periph_reset_pulse(RST_TIM17);

    timer_set_mode((((0x40000000U) + 0x00000000) + 0x14800), (0x2 << 8), (0x0 << 5), (0 << 4));
    timer_set_prescaler((((0x40000000U) + 0x00000000) + 0x14800), 0);
    timer_set_period((((0x40000000U) + 0x00000000) + 0x14800), 100 - 1);
    timer_set_oc_value((((0x40000000U) + 0x00000000) + 0x14800), TIM_OC1, 100);
    (*(volatile uint32_t *)(((((0x40000000U) + 0x00000000) + 0x14800)) + 0x18)) |= (0x6 << 4) | (0x1 << 4);

    timer_enable_oc_output((((0x40000000U) + 0x00000000) + 0x14800), TIM_OC1);
    (*(volatile uint32_t *)(((((0x40000000U) + 0x00000000) + 0x14800)) + 0x44)) |= (1 << 15);

    timer_generate_event((((0x40000000U) + 0x00000000) + 0x14800), (1 << 0));
    timer_enable_counter((((0x40000000U) + 0x00000000) + 0x14800));
}

void uart_set_voltage(int mvolts) {

    int period = 100 - mvolts / 50;
    timer_set_oc_value((((0x40000000U) + 0x00000000) + 0x14800), TIM_OC1, period);
}

int uart_get_voltage(void) {
    int duty = (*(volatile uint32_t *)(((((0x40000000U) + 0x00000000) + 0x14800)) + 0x34));
    return 100 * 50 / 100 * duty;
}

void uart_setup(void) {



    usart_incoming_queue = xQueueGenericCreate( ( 32 ), ( sizeof(char) ), ( ( ( uint8_t ) 0U ) ) );




    xfunc_out = (void(*)(unsigned char))(uart_putc);

    nvic_enable_irq(27);

    gpio_mode_setup((((0x40000000U) + 0x08000000) + 0x0000), 0x2, 0x0, (1 << 9) | (1 << 10));
    gpio_set_af((((0x40000000U) + 0x08000000) + 0x0000), 0x1, (1 << 9) | (1 << 10));

    usart_set_baudrate((((0x40000000U) + 0x00000000) + 0x13800), 115200);
    usart_set_databits((((0x40000000U) + 0x00000000) + 0x13800), 8);
    usart_set_stopbits((((0x40000000U) + 0x00000000) + 0x13800), (0x00 << 12));
    usart_set_parity((((0x40000000U) + 0x00000000) + 0x13800), 0x00);
    usart_set_flow_control((((0x40000000U) + 0x00000000) + 0x13800), 0x00);
    usart_set_mode((((0x40000000U) + 0x00000000) + 0x13800), ((1 << 2) | (1 << 3)));

    usart_enable_rx_interrupt((((0x40000000U) + 0x00000000) + 0x13800));

    usart_enable((((0x40000000U) + 0x00000000) + 0x13800));

    pwm_setup();
}

void uart_send(char *data) {
    (void)data;
}

void uart_putc(char data) {
    usart_send_blocking((((0x40000000U) + 0x00000000) + 0x13800), data);
}
