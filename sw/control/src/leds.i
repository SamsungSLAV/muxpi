# 1 "leds.c"
# 1 "/home/a.malinowsk2/vcs/muxpi/sw/control/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "leds.c"
# 23 "leds.c"
# 1 "../FreeRTOS/Source/include/FreeRTOS.h" 1
# 34 "../FreeRTOS/Source/include/FreeRTOS.h"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4

# 149 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 35 "../FreeRTOS/Source/include/FreeRTOS.h" 2
# 49 "../FreeRTOS/Source/include/FreeRTOS.h"
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
# 50 "../FreeRTOS/Source/include/FreeRTOS.h" 2






# 1 "./FreeRTOSConfig.h" 1
# 57 "../FreeRTOS/Source/include/FreeRTOS.h" 2


# 1 "../FreeRTOS/Source/include/projdefs.h" 1
# 35 "../FreeRTOS/Source/include/projdefs.h"

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
# 24 "leds.c" 2
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
# 25 "leds.c" 2

# 1 "../libopencm3/include/libopencm3/stm32/spi.h" 1
# 20 "../libopencm3/include/libopencm3/stm32/spi.h"
# 1 "../libopencm3/include/libopencm3/cm3/common.h" 1
# 24 "../libopencm3/include/libopencm3/cm3/common.h"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdbool.h" 1 3 4
# 25 "../libopencm3/include/libopencm3/cm3/common.h" 2
# 21 "../libopencm3/include/libopencm3/stm32/spi.h" 2
# 1 "../libopencm3/include/libopencm3/stm32/memorymap.h" 1
# 24 "../libopencm3/include/libopencm3/stm32/memorymap.h"
# 1 "../libopencm3/include/libopencm3/stm32/f0/memorymap.h" 1
# 25 "../libopencm3/include/libopencm3/stm32/f0/memorymap.h"
# 1 "../libopencm3/include/libopencm3/cm3/memorymap.h" 1
# 26 "../libopencm3/include/libopencm3/stm32/f0/memorymap.h" 2
# 25 "../libopencm3/include/libopencm3/stm32/memorymap.h" 2
# 22 "../libopencm3/include/libopencm3/stm32/spi.h" 2


# 1 "../libopencm3/include/libopencm3/stm32/f0/spi.h" 1
# 34 "../libopencm3/include/libopencm3/stm32/f0/spi.h"
# 1 "../libopencm3/include/libopencm3/stm32/common/spi_common_v2.h" 1
# 28 "../libopencm3/include/libopencm3/stm32/common/spi_common_v2.h"
       



# 1 "../libopencm3/include/libopencm3/stm32/common/spi_common_all.h" 1
# 345 "../libopencm3/include/libopencm3/stm32/common/spi_common_all.h"


void spi_reset(uint32_t spi_peripheral);
void spi_enable(uint32_t spi);
void spi_disable(uint32_t spi);
uint16_t spi_clean_disable(uint32_t spi);
void spi_write(uint32_t spi, uint16_t data);
void spi_send(uint32_t spi, uint16_t data);
uint16_t spi_read(uint32_t spi);
uint16_t spi_xfer(uint32_t spi, uint16_t data);
void spi_set_bidirectional_mode(uint32_t spi);
void spi_set_unidirectional_mode(uint32_t spi);
void spi_set_bidirectional_receive_only_mode(uint32_t spi);
void spi_set_bidirectional_transmit_only_mode(uint32_t spi);
void spi_enable_crc(uint32_t spi);
void spi_disable_crc(uint32_t spi);
void spi_set_next_tx_from_buffer(uint32_t spi);
void spi_set_next_tx_from_crc(uint32_t spi);
void spi_set_full_duplex_mode(uint32_t spi);
void spi_set_receive_only_mode(uint32_t spi);
void spi_disable_software_slave_management(uint32_t spi);
void spi_enable_software_slave_management(uint32_t spi);
void spi_set_nss_high(uint32_t spi);
void spi_set_nss_low(uint32_t spi);
void spi_send_lsb_first(uint32_t spi);
void spi_send_msb_first(uint32_t spi);
void spi_set_baudrate_prescaler(uint32_t spi, uint8_t baudrate);
void spi_set_master_mode(uint32_t spi);
void spi_set_slave_mode(uint32_t spi);
void spi_set_clock_polarity_1(uint32_t spi);
void spi_set_clock_polarity_0(uint32_t spi);
void spi_set_clock_phase_1(uint32_t spi);
void spi_set_clock_phase_0(uint32_t spi);
void spi_enable_tx_buffer_empty_interrupt(uint32_t spi);
void spi_disable_tx_buffer_empty_interrupt(uint32_t spi);
void spi_enable_rx_buffer_not_empty_interrupt(uint32_t spi);
void spi_disable_rx_buffer_not_empty_interrupt(uint32_t spi);
void spi_enable_error_interrupt(uint32_t spi);
void spi_disable_error_interrupt(uint32_t spi);
void spi_enable_ss_output(uint32_t spi);
void spi_disable_ss_output(uint32_t spi);
void spi_enable_tx_dma(uint32_t spi);
void spi_disable_tx_dma(uint32_t spi);
void spi_enable_rx_dma(uint32_t spi);
void spi_disable_rx_dma(uint32_t spi);
void spi_set_standard_mode(uint32_t spi, uint8_t mode);


# 33 "../libopencm3/include/libopencm3/stm32/common/spi_common_v2.h" 2
# 112 "../libopencm3/include/libopencm3/stm32/common/spi_common_v2.h"

int spi_init_master(uint32_t spi, uint32_t br, uint32_t cpol, uint32_t cpha,
  uint32_t lsbfirst);
void spi_set_crcl_8bit(uint32_t spi);
void spi_set_crcl_16bit(uint32_t spi);
void spi_set_data_size(uint32_t spi, uint16_t data_s);
void spi_fifo_reception_threshold_8bit(uint32_t spi);
void spi_fifo_reception_threshold_16bit(uint32_t spi);
void spi_i2s_mode_spi_mode(uint32_t spi);
void spi_send8(uint32_t spi, uint8_t data);
uint8_t spi_read8(uint32_t spi);


# 35 "../libopencm3/include/libopencm3/stm32/f0/spi.h" 2
# 25 "../libopencm3/include/libopencm3/stm32/spi.h" 2
# 27 "leds.c" 2
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
# 28 "leds.c" 2
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
# 29 "leds.c" 2

# 1 "./oled.h" 1
# 26 "./oled.h"
# 1 "../libopencm3/include/libopencm3/stm32/gpio.h" 1
# 24 "../libopencm3/include/libopencm3/stm32/gpio.h"
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
# 31 "leds.c" 2
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
# 32 "leds.c" 2

# 1 "./ws2812.h" 1
# 25 "./ws2812.h"
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 1 3
# 29 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/newlib.h" 1 3
# 11 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 2 3
# 30 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3





# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 48 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/cdefs.h" 2 3
# 36 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 37 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3



# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 1 3 4
# 40 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 3 4

# 40 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3
# 60 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/lib/gcc/arm-none-eabi/8.2.1/include/stddef.h" 1 3 4
# 15 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_types.h" 3
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_types.h" 1 3
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


typedef __builtin_va_list __va_list;
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
# 61 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/stdio.h" 2 3
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
# 1 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 1 3
# 17 "/home/a.malinowsk2/Programs/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/string.h" 3
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


# 27 "./ws2812.h" 2
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
# 34 "leds.c" 2


void leds_setup(void) {
    gpio_mode_setup((((0x40000000U) + 0x08000000) + 0x0400), 0x1, 0x0, (1 << 3) | (1 << 4) | (1 << 5));
    ws2812_init();
}

void led_toggle(uint32_t led) {
    if (led == (1 << 3) || led == (1 << 4) || led == (1 << 5)) {
        gpio_toggle((((0x40000000U) + 0x08000000) + 0x0400), led);
    }
}

void led_set_color(int led_nr, int r, int g, int b) {
    ws2812_set_led_color(led_nr, r, g, b);
}

LedColor led_get_color(int led_nr) {
    return ws2812_get_led_color(led_nr);
}
