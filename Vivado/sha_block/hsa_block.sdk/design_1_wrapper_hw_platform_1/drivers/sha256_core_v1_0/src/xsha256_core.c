// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsha256_core.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSha256_core_CfgInitialize(XSha256_core *InstancePtr, XSha256_core_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSha256_core_Start(XSha256_core *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_AP_CTRL) & 0x80;
    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSha256_core_IsDone(XSha256_core *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSha256_core_IsIdle(XSha256_core *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSha256_core_IsReady(XSha256_core *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSha256_core_EnableAutoRestart(XSha256_core *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_AP_CTRL, 0x80);
}

void XSha256_core_DisableAutoRestart(XSha256_core *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_AP_CTRL, 0);
}

void XSha256_core_Set_num_blocks(XSha256_core *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_NUM_BLOCKS_DATA, Data);
}

u32 XSha256_core_Get_num_blocks(XSha256_core *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_NUM_BLOCKS_DATA);
    return Data;
}

void XSha256_core_InterruptGlobalEnable(XSha256_core *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_GIE, 1);
}

void XSha256_core_InterruptGlobalDisable(XSha256_core *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_GIE, 0);
}

void XSha256_core_InterruptEnable(XSha256_core *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_IER);
    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_IER, Register | Mask);
}

void XSha256_core_InterruptDisable(XSha256_core *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_IER);
    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_IER, Register & (~Mask));
}

void XSha256_core_InterruptClear(XSha256_core *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_core_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_ISR, Mask);
}

u32 XSha256_core_InterruptGetEnabled(XSha256_core *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_IER);
}

u32 XSha256_core_InterruptGetStatus(XSha256_core *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSha256_core_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_CORE_CTRL_ADDR_ISR);
}

