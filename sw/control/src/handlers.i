# 1 "handlers.c"
# 1 "/home/a.malinowsk2/vcs/muxpi/sw/control/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "handlers.c"
# 23 "handlers.c"
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
# 24 "handlers.c" 2
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
# 25 "handlers.c" 2

void sv_call_handler(void);
void pend_sv_handler(void);
void sys_tick_handler(void);

void SVC_Handler(void);
void SysTick_Handler(void);
void PendSV_Handler(void);

void vApplicationMallocFailedHook(void);
void vApplicationIdleHook(void);
void vApplicationTickHook(void);
void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName);


void vApplicationMallocFailedHook( void ) {
 xprintf("Malloc fialed\n");
    for ( ;; );
}


void vApplicationIdleHook( void ) {

}


void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName) {
    (void) pcTaskName;
    (void) pxTask;
 xprintf("Stack overflow: %s\n", pcTaskName);
}


void vApplicationTickHook( void ) {
}

void sv_call_handler(void) {
      SVC_Handler();
}
 void pend_sv_handler(void) {
      PendSV_Handler();
}
void sys_tick_handler(void) {
      SysTick_Handler();
}
