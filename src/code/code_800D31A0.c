#include <global.h>
#include <padmgr.h>

extern PadMgr gPadMgr;

u32 D_8012DBC0 = 0;

void func_800D31A0() {
    osSyncPrintf("\x1b[31m\n**** Freeze!! ****\n\x1b[m");
    while (true) {
        func_800FF4AC(1000); // msleep
    }
}

void func_800D31F0() {
    PadMgr* padMgr = (PadMgr*)(u32)&gPadMgr; // cast required to match

    D_8012DBC0 = (padMgr->unk_2A8 & 2) != 0;
}

void func_800D3210() {
    D_8012DBC0 = false;
}
