// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsha256_core.h"

extern XSha256_core_Config XSha256_core_ConfigTable[];

XSha256_core_Config *XSha256_core_LookupConfig(u16 DeviceId) {
	XSha256_core_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSHA256_CORE_NUM_INSTANCES; Index++) {
		if (XSha256_core_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSha256_core_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSha256_core_Initialize(XSha256_core *InstancePtr, u16 DeviceId) {
	XSha256_core_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSha256_core_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSha256_core_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

