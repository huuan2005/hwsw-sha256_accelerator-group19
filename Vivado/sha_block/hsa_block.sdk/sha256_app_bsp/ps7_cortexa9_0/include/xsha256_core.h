// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSHA256_CORE_H
#define XSHA256_CORE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsha256_core_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XSha256_core_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XSha256_core;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSha256_core_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSha256_core_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSha256_core_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSha256_core_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSha256_core_Initialize(XSha256_core *InstancePtr, u16 DeviceId);
XSha256_core_Config* XSha256_core_LookupConfig(u16 DeviceId);
int XSha256_core_CfgInitialize(XSha256_core *InstancePtr, XSha256_core_Config *ConfigPtr);
#else
int XSha256_core_Initialize(XSha256_core *InstancePtr, const char* InstanceName);
int XSha256_core_Release(XSha256_core *InstancePtr);
#endif

void XSha256_core_Start(XSha256_core *InstancePtr);
u32 XSha256_core_IsDone(XSha256_core *InstancePtr);
u32 XSha256_core_IsIdle(XSha256_core *InstancePtr);
u32 XSha256_core_IsReady(XSha256_core *InstancePtr);
void XSha256_core_EnableAutoRestart(XSha256_core *InstancePtr);
void XSha256_core_DisableAutoRestart(XSha256_core *InstancePtr);

void XSha256_core_Set_num_blocks(XSha256_core *InstancePtr, u32 Data);
u32 XSha256_core_Get_num_blocks(XSha256_core *InstancePtr);

void XSha256_core_InterruptGlobalEnable(XSha256_core *InstancePtr);
void XSha256_core_InterruptGlobalDisable(XSha256_core *InstancePtr);
void XSha256_core_InterruptEnable(XSha256_core *InstancePtr, u32 Mask);
void XSha256_core_InterruptDisable(XSha256_core *InstancePtr, u32 Mask);
void XSha256_core_InterruptClear(XSha256_core *InstancePtr, u32 Mask);
u32 XSha256_core_InterruptGetEnabled(XSha256_core *InstancePtr);
u32 XSha256_core_InterruptGetStatus(XSha256_core *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
