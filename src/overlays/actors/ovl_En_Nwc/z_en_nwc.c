/*
 * File: z_en_nwc.c
 * Overlay: ovl_En_Nwc
 * Description: Cluster of cucco chicks. Unfinished.
 */

#include "z_en_nwc.h"
#include "objects/object_nwc/object_nwc.h"

#define FLAGS 0x00000030

void EnNwc_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnNwc_SetUpdate(EnNwc* this, EnNwcUpdateFunc updateFunc);
void EnNwc_ChickNoop(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx);
void EnNwc_ChickBgCheck(EnNwcChick* chick, GlobalContext* globalCtx);
void EnNwc_ChickFall(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx);
void EnNwc_UpdateChicks(EnNwc* this, GlobalContext* globalCtx);
void EnNwc_DrawChicks(EnNwc* this, GlobalContext* globalCtx);
void EnNwc_Idle(EnNwc* this, GlobalContext* globalCtx);

#define CHICK_BG_FLOOR (1 << 0)
#define CHICK_BG_WALL (1 << 1)

typedef enum {
    /* 0 */ CHICK_NONE,
    /* 1 */ CHICK_NORMAL
} ChickTypes;

const ActorInit En_Nwc_InitVars = {
    ACTOR_EN_NWC,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_NWC,
    sizeof(EnNwc),
    (ActorFunc)EnNwc_Init,
    (ActorFunc)EnNwc_Destroy,
    (ActorFunc)EnNwc_Update,
    (ActorFunc)EnNwc_Draw,
};

static ColliderJntSphElementInit sJntSphElementInit = {
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 0, { { 0, 0, 0 }, 10 }, 100 },
};

static ColliderJntSphInitType1 sJntSphInit = {
    {
        COLTYPE_HIT3,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        COLSHAPE_JNTSPH,
    },
    16,
    NULL,
};

void EnNwc_SetUpdate(EnNwc* this, EnNwcUpdateFunc updateFunc) {
    this->updateFunc = updateFunc;
}

void EnNwc_ChickNoop(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx) {
}

void EnNwc_ChickBgCheck(EnNwcChick* chick, GlobalContext* globalCtx) {
    CollisionPoly* outPoly;
    s32 bgId;
    Vec3f outPos;
    f32 dy;

    chick->bgFlags &= ~CHICK_BG_WALL & ~CHICK_BG_FLOOR;
    outPos.x = chick->pos.x;
    outPos.y = chick->pos.y;
    outPos.z = chick->pos.z;
    if (BgCheck_EntitySphVsWall1(&globalCtx->colCtx, &outPos, &chick->pos, &chick->lastPos, 10.0f, &chick->floorPoly,
                                 20.0f)) {
        chick->bgFlags |= CHICK_BG_WALL;
    }
    //! @bug The use of outPos here is totally wrong. Even if it didn't get overwritten
    //       by the wall check, it should add an offset to the y-value so the raycast
    //       doesn't go through the floor and cause the chicks to ignore all floors.
    chick->floorY = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, &outPoly, &bgId, &outPos);
    dy = chick->floorY - chick->pos.y;
    if ((0.0f <= dy) && (dy < 40.0f)) {
        chick->pos.y = chick->floorY;
        chick->bgFlags |= CHICK_BG_FLOOR;
    }
}

void EnNwc_ChickFall(EnNwcChick* chick, EnNwc* this, GlobalContext* globalCtx) {
    chick->velY -= 0.1f;
    if (chick->velY < -10.0f) {
        chick->velY = -10.0f;
    }
    chick->pos.y += chick->velY;
    EnNwc_ChickBgCheck(chick, globalCtx);
    if (chick) {} // Needed for matching. Possibly from remnant of unfinished code?
}

void EnNwc_UpdateChicks(EnNwc* this, GlobalContext* globalCtx) {
    static EnNwcChickFunc chickActionFuncs[] = { EnNwc_ChickNoop, EnNwc_ChickFall };
    EnNwcChick* chick = this->chicks;
    ColliderJntSphElement* element = this->collider.elements;
    Vec3f prevChickPos;
    s32 i;
    f32 test;

    prevChickPos.y = 99999.9f;
    for (i = 0; i < this->count; i++, prevChickPos = chick->pos, chick++, element++) {
        Math_Vec3f_Copy(&chick->lastPos, &chick->pos);

        chickActionFuncs[chick->type](chick, this, globalCtx);

        element->dim.worldSphere.center.x = chick->pos.x;
        element->dim.worldSphere.center.y = chick->pos.y;
        element->dim.worldSphere.center.z = chick->pos.z;

        test = chick->pos.y - prevChickPos.y;
        if (fabsf(test) < 10.0f) {
            f32 dx = chick->pos.x - prevChickPos.x;
            f32 dz = chick->pos.z - prevChickPos.z;

            test = SQ(dx) + SQ(dz);
            if (test < SQ(10.0f)) {
                if (test != 0.0f) {
                    chick->pos.x += dx / sqrtf(test);
                    chick->pos.z += dz / sqrtf(test);
                } else {
                    chick->pos.x += 1.0f;
                    chick->pos.z += 1.0f;
                }
            }
        }
    }
}

void EnNwc_DrawChicks(EnNwc* this, GlobalContext* globalCtx) {
    s32 i;
    Gfx* dList1;
    Gfx* dList2;
    Gfx* dList3;
    MtxF floorMat;
    EnNwcChick* chick;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_nwc.c", 316);
    func_80093C80(globalCtx);

    dList1 = POLY_XLU_DISP;
    dList2 = dList1 + 3 * this->count + 1;
    dList3 = dList2 + 2 * this->count + 1;

    gSPDisplayList(dList1++, gCuccoChickSetupBodyDL);
    gSPDisplayList(dList2++, gCuccoChickSetupEyeDL);
    gSPDisplayList(dList3++, gCuccoChickSetupBeakDL);

    chick = this->chicks;
    for (i = 0; i < this->count; i++, chick++) {
        if (chick->type != CHICK_NONE) {
            Mtx* mtx;

            func_800D1694(chick->pos.x, chick->pos.y + chick->height, chick->pos.z, &chick->rot);
            Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
            mtx = Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_nwc.c", 346);
            gDPSetEnvColor(dList1++, 0, 100, 255, 255);
            gSPMatrix(dList1++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(dList1++, gCuccoChickBodyDL);
            gSPMatrix(dList2++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(dList2++, gCuccoChickEyesDL);
            gSPMatrix(dList3++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(dList3++, gCuccoChickBeakDL);
        }
    }

    chick = this->chicks;
    POLY_XLU_DISP = dList3;
    func_80094044(globalCtx->state.gfxCtx);
    gSPDisplayList(POLY_XLU_DISP++, gCuccoChickSetupShadowDL);

    for (i = 0; i < this->count; i++, chick++) {
        if ((chick->type != CHICK_NONE) && (chick->floorPoly != NULL)) {
            func_80038A28(chick->floorPoly, chick->pos.x, chick->floorY, chick->pos.z, &floorMat);
            Matrix_Put(&floorMat);
            Matrix_RotateY(chick->rot.y * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_nwc.c", 388),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gCuccoChickShadowDL);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_nwc.c", 395);
}

void EnNwc_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = (EnNwc*)thisx;
    ColliderJntSphElementInit elementInits[16];
    ColliderJntSphElementInit* element;
    EnNwcChick* chick;
    s32 i;

    element = sJntSphInit.elements = elementInits;
    for (i = 0; i < 16; i++, element++) {
        *element = sJntSphElementInit;
    }

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSphAllocType1(globalCtx, &this->collider, &this->actor, &sJntSphInit);
    this->count = 16;
    chick = this->chicks;
    for (i = 0; i < this->count; i++, chick++) {
        chick->type = CHICK_NORMAL;
        chick->pos.x = thisx->world.pos.x + ((Rand_ZeroOne() * 100.0f) - 50.0f);
        chick->pos.y = thisx->world.pos.y + 20.0f;
        chick->pos.z = thisx->world.pos.z + ((Rand_ZeroOne() * 100.0f) - 50.0f);
        chick->height = 5;
    }
    EnNwc_SetUpdate(this, EnNwc_Idle);
}

void EnNwc_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = (EnNwc*)thisx;

    Collider_FreeJntSph(globalCtx, &this->collider);
}

void EnNwc_Idle(EnNwc* this, GlobalContext* globalCtx) {
    EnNwc_UpdateChicks(this, globalCtx);
}

void EnNwc_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = (EnNwc*)thisx;

    this->updateFunc(this, globalCtx);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void EnNwc_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnNwc* this = (EnNwc*)thisx;

    EnNwc_DrawChicks(this, globalCtx);
}
