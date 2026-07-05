#include <stdio.h>
#include <stdlib.h>          // thêm cho memalign
#include "xparameters.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xtime_l.h"
#include "sleep.h"
#include "xil_io.h"          // thêm cho Xil_Out32

// Địa chỉ thanh ghi của SHA-256 IP (AXI4-Lite)
#define SHA256_CORE_BASEADDR XPAR_SHA256_CORE_0_S_AXI_CTRL_BASEADDR
#define DMA_DEV_ID XPAR_AXIDMA_0_DEVICE_ID


XAxiDma dma;

// Hàm khởi động IP
void sha256_start(int num_blocks) {
    Xil_Out32(SHA256_CORE_BASEADDR + 0x10, num_blocks); // thanh ghi num_blocks
    // Bắt đầu xử lý ngay khi num_blocks được ghi
}

int main() {
    XTime tStart, tEnd;
    int status;
    u8 *tx_buf;
    u32 rx_buf[8];  // 8 word = 32 byte hash
    u32 data_size = 1024 * 1024; // 1 MB
    int num_blocks = (data_size + 8 + 64) / 64; // tính số block 512-bit sau padding

    xil_printf("SHA-256 Accelerator Test\r\n");

    // Cấp phát bộ nhớ (cache-aligned)
    tx_buf = (u8*)memalign(32, data_size);
    if (!tx_buf) return -1;
    memset(tx_buf, 0xA5, data_size);

    // Flush cache trước khi DMA đọc
    Xil_DCacheFlushRange((UINTPTR)tx_buf, data_size);

    // Khởi tạo DMA
    XAxiDma_Config *cfg = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!cfg) return -1;
    status = XAxiDma_CfgInitialize(&dma, cfg);
    if (status != XST_SUCCESS) return -1;

    // ===== Bắt đầu đo thời gian =====
    XTime_GetTime(&tStart);

    // Khởi động SHA-256 core
    sha256_start(num_blocks);

    // DMA gửi dữ liệu từ DDR vào IP (MM2S)
    status = XAxiDma_SimpleTransfer(&dma, (UINTPTR)tx_buf,
                                    data_size, XAXIDMA_DMA_TO_DEVICE);
    if (status != XST_SUCCESS) return -1;

    // DMA nhận kết quả từ IP về DDR (S2MM)
    status = XAxiDma_SimpleTransfer(&dma, (UINTPTR)rx_buf,
                                    32, XAXIDMA_DEVICE_TO_DMA);
    if (status != XST_SUCCESS) return -1;

    // Chờ DMA hoàn tất
    while (XAxiDma_Busy(&dma, XAXIDMA_DEVICE_TO_DMA));

    XTime_GetTime(&tEnd);
    double hw_time = (double)(tEnd - tStart) / (COUNTS_PER_SECOND);
    xil_printf("HW time: %.3f ms\r\n", hw_time * 1000);

    // In kết quả hash
    xil_printf("Hash: ");
    for (int i = 0; i < 8; i++) {
        xil_printf("%08x", (unsigned int)rx_buf[i]);
    }
    xil_printf("\r\n");

    free(tx_buf);
    return 0;
}
