/*
 * File: z_bg_bombwall.c
 * Overlay: ovl_Bg_Bombwall
 * Description: Bombable Wall
 */

#include "z_bg_bombwall.h"

#define FLAGS 0x00400000

#define THIS ((BgBombwall*)thisx)

void BgBombwall_Init(Actor* thisx, GlobalContext* globalCtx);
void BgBombwall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgBombwall_Update(Actor* thisx, GlobalContext* globalCtx);
void BgBombwall_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8086ED50(BgBombwall* this, GlobalContext* globalCtx);
void func_8086ED70(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EDFC(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EE40(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EE94(BgBombwall* this, GlobalContext* globalCtx);

extern CollisionHeader D_050041B0;
extern Gfx D_05003FC0[];
extern Gfx D_05004088[];

static ColliderTrisItemInit sTrimItemInit[3] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000048, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { -70.0f, 176.0f, 0.0f }, { -70.0f, -4.0f, 0.0f }, { 0.0f, -4.0f, 30.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000048, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 70.0f, 176.0f, 0.0f }, { -70.0f, 176.0f, 0.0f }, { 0.0f, -4.0f, 30.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000048, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 70.0f, -4.0f, 0.0f }, { 70.0f, 176.0f, 0.0f }, { 0.0f, -4.0f, 30.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_TRIS },
    3,
    sTrimItemInit,
};

const ActorInit Bg_Bombwall_InitVars = {
    ACTOR_BG_BOMBWALL,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(BgBombwall),
    (ActorFunc)BgBombwall_Init,
    (ActorFunc)BgBombwall_Destroy,
    (ActorFunc)BgBombwall_Update,
    (ActorFunc)BgBombwall_Draw,
};

void BgBombwall_InitDynapoly(BgBombwall* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    ColHeader* colHeader = NULL;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_050041B0, &colHeader);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

    if (this->dyna.dynaPolyId == 0x32) {
        // Warning : move BG login failed
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_bombwall.c", 243,
                     this->dyna.actor.params);
    }
}

void BgBombwall_RotateVec(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3) {
    arg0->x = (arg1->z * arg2) + (arg1->x * arg3);
    arg0->y = arg1->y;
    arg0->z = (arg1->z * arg3) - (arg1->x * arg2);
}

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void BgBombwall_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 i;
    s32 j;
    Vec3f vecs[3];
    Vec3f sp80;
    s32 pad;
    BgBombwall* this = THIS;
    f32 sin = Math_SinS(this->dyna.actor.shape.rot.y);
    f32 cos = Math_CosS(this->dyna.actor.shape.rot.y);

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    Actor_SetScale(&this->dyna.actor, 0.1f);

    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
        func_8086EE94(this, globalCtx);
    } else {
        BgBombwall_InitDynapoly(this, globalCtx);
        this->unk_2A2 |= 2;
        Collider_InitTris(globalCtx, &this->collider);
        Collider_SetTris(globalCtx, &this->collider, &this->dyna.actor, &sTrisInit, this->colliderItems);

        for (i = 0; i <= 2; i++) {
            for (j = 0; j <= 2; j++) {
                sp80.x = sTrisInit.list[i].dim.vtx[j].x;
                sp80.y = sTrisInit.list[i].dim.vtx[j].y;
                sp80.z = sTrisInit.list[i].dim.vtx[j].z + 2.0f;

                BgBombwall_RotateVec(&vecs[j], &sp80, sin, cos);

                vecs[j].x += this->dyna.actor.posRot.pos.x;
                vecs[j].y += this->dyna.actor.posRot.pos.y;
                vecs[j].z += this->dyna.actor.posRot.pos.z;
            }
            func_800627A0(&this->collider, i, &vecs[0], &vecs[1], &vecs[2]);
        }

        this->unk_2A2 |= 1;
        func_8086ED50(this, globalCtx);
    }

    osSyncPrintf("(field keep 汎用爆弾壁)(arg_data 0x%04x)(angY %d)\n", this->dyna.actor.params,
                 this->dyna.actor.shape.rot.y);
}

void BgBombwall_DestroyCollision(BgBombwall* this, GlobalContext* globalCtx) {
    if (this->unk_2A2 & 2) {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        this->unk_2A2 &= ~2;
    }

    if (this->unk_2A2 & 1) {
        Collider_DestroyTris(globalCtx, &this->collider);
        this->unk_2A2 &= ~1;
    }
}

void BgBombwall_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgBombwall* this = THIS;

    BgBombwall_DestroyCollision(this, globalCtx);
}

Vec3s D_8086F010[] = {
    { 40, 85, 21 }, { -43, 107, 14 }, { -1, 142, 14 }, { -27, 44, 27 }, { 28, 24, 20 }, { -39, 54, 21 }, { 49, 50, 20 },
};

void func_8086EB5C(BgBombwall* this, GlobalContext* globalCtx) {
    s16 rand;
    s16 rand2;
    Vec3f sp88;
    s32 i;
    f32 sin = Math_SinS(this->dyna.actor.shape.rot.y);
    f32 cos = Math_CosS(this->dyna.actor.shape.rot.y);
    Vec3f* pos = &this->dyna.actor.posRot.pos;
    f32 temp;
    f32 new_var;

    for (i = 0; i < 7; i++) {
        new_var = D_8086F010[i].x;
        temp = new_var * cos;
        sp88.x = ((sin * D_8086F010[i].z) + ((f32)temp)) + pos->x;
        sp88.y = pos->y + D_8086F010[i].y;
        sp88.z = ((D_8086F010[i].z * cos) - (sin * D_8086F010[i].x)) + pos->z;
        rand = ((s16)(Rand_ZeroOne() * 120.0f)) + 0x14;
        rand2 = ((s16)(Rand_ZeroOne() * 240.0f)) + 0x14;
        func_80033480(globalCtx, &sp88, 50.0f, 2, rand, rand2, 1);
    }

    sp88.x = pos->x;
    new_var = pos->y + 90.0f;
    sp88.y = pos->y + 90.0f;
    sp88.z = pos->z + 15.0f;
    func_80033480(globalCtx, &sp88, 40.0f, 4, 0xA, 0x32, 1);
}

void func_8086ED50(BgBombwall* this, GlobalContext* globalCtx) {
    this->dList = D_05003FC0;
    this->actionFunc = func_8086ED70;
}

void func_8086ED70(BgBombwall* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        func_8086EDFC(this, globalCtx);
        Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
    } else if (this->dyna.actor.xzDistFromLink < 600.0f) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void func_8086EDFC(BgBombwall* this, GlobalContext* globalCtx) {
    this->dList = D_05003FC0;
    this->unk_2A0 = 1;
    func_8086EB5C(this, globalCtx);
    this->actionFunc = func_8086EE40;
}

void func_8086EE40(BgBombwall* this, GlobalContext* globalCtx) {
    if (this->unk_2A0 > 0) {
        this->unk_2A0--;
    } else {
        func_8086EE94(this, globalCtx);

        if (((this->dyna.actor.params >> 0xF) & 1) != 0) {
            func_80078884(NA_SE_SY_CORRECT_CHIME);
        }
    }
}

void func_8086EE94(BgBombwall* this, GlobalContext* globalCtx) {
    this->dList = D_05004088;
    BgBombwall_DestroyCollision(this, globalCtx);
    this->actionFunc = NULL;
}

void BgBombwall_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgBombwall* this = THIS;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void BgBombwall_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgBombwall* this = THIS;

    Gfx_DrawDListOpa(globalCtx, this->dList);
}
