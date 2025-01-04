#ifndef EXAMPLE_SCENE_H
#define EXAMPLE_SCENE_H

#include "ultra64.h"
#include "macros.h"
#include "z64.h"
#include "config.h"


extern SceneCmd example_scene_header00[];
extern SceneCmd* example_scene_alternateHeaders[];
extern RomFile example_scene_roomList[];
extern u8 _example_room_0SegmentRomStart[];
extern u8 _example_room_0SegmentRomEnd[];
extern ActorEntry example_scene_header00_playerEntryList[];
extern Spawn example_scene_header00_entranceList[];
extern TransitionActorEntry example_scene_header00_transitionActors[];
extern EnvLightSettings example_scene_header00_lightSettings[4];
extern AnimatedMatTexScrollParams debug1_scene_header00_AnimatedMaterialTexScrollParams_00[];
extern AnimatedMatTexScrollParams debug1_scene_header00_AnimatedMaterialTexScrollParams_01[];
extern F3DPrimColor debug1_scene_header00_AnimatedMaterialColorPrimColor_02[];
extern F3DEnvColor debug1_scene_header00_AnimatedMaterialColorEnvColor_02[];
extern u16 debug1_scene_header00_AnimatedMaterialColorKeyFrames_02[];
extern AnimatedMatColorParams debug1_scene_header00_AnimatedMaterialColorParams_02;
extern AnimatedMaterial debug1_scene_header00_AnimatedMaterial[];
extern Vec3s debug1_scene_header00_ActorCutsceneCameraData[];
#if ENABLE_CUTSCENE_IMPROVEMENTS
extern ActorCsCamInfo debug1_scene_header00_ActorCutsceneCameraInfo[];
extern CutsceneEntry debug1_scene_header00_ActorCutsceneList[];
#endif
extern SceneCmd example_scene_header01[];
extern ActorEntry example_scene_header01_playerEntryList[];
extern Spawn example_scene_header01_entranceList[];
extern TransitionActorEntry example_scene_header01_transitionActors[];
extern EnvLightSettings example_scene_header01_lightSettings[4];
extern SceneCmd example_scene_header02[];
extern ActorEntry example_scene_header02_playerEntryList[];
extern Spawn example_scene_header02_entranceList[];
extern TransitionActorEntry example_scene_header02_transitionActors[];
extern EnvLightSettings example_scene_header02_lightSettings[4];
extern SceneCmd example_scene_header03[];
extern ActorEntry example_scene_header03_playerEntryList[];
extern Spawn example_scene_header03_entranceList[];
extern TransitionActorEntry example_scene_header03_transitionActors[];
extern EnvLightSettings example_scene_header03_lightSettings[4];
extern CutsceneData gExampleCS[];
extern CollisionHeader example_scene_collisionHeader;
extern WaterBox example_scene_waterBoxes[1];
extern Vec3s example_scene_camPosData[];
extern BgCamInfo example_scene_bgCamInfo[];
extern SurfaceType example_scene_polygonTypes[15];
extern Vec3s example_scene_vertices[137];
extern CollisionPoly example_scene_polygons[200];
extern SceneCmd* example_room_0_alternateHeaders[];
extern SceneCmd example_room_0_header00[];
extern s16 example_room_0_header00_objectList[];
extern ActorEntry example_room_0_header00_actorList[];
extern SceneCmd example_room_0_header01[];
extern s16 example_room_0_header01_objectList[];
extern ActorEntry example_room_0_header01_actorList[];
extern SceneCmd example_room_0_header02[];
extern s16 example_room_0_header02_objectList[];
extern ActorEntry example_room_0_header02_actorList[];
extern SceneCmd example_room_0_header03[];
extern s16 example_room_0_header03_objectList[];
extern ActorEntry example_room_0_header03_actorList[];
extern Gfx example_room_0_shapeHeader_entry_0_opaque[];
extern Gfx example_room_0_shapeHeader_entry_0_transparent[];
extern u64 example_room_0_dl_wall_hackeroot_i8[];
extern u64 example_room_0_dl__2grass_hackeroot_ci8[];
extern u64 example_room_0_dl__2grass_hackeroot_pal_rgba16[];
extern u64 example_room_0_dl_ice_hackeroot_ci8[];
extern u64 example_room_0_dl_ice_hackeroot_pal_rgba16[];
extern u64 example_room_0_dl_ladder_hackeroot_ci8[];
extern u64 example_room_0_dl_ladder_hackeroot_pal_rgba16[];
extern u64 example_room_0_dl_lava_hackeroot_ci8[];
extern u64 example_room_0_dl_lava_hackeroot_pal_rgba16[];
extern u64 example_room_0_dl_sand_hackeroot_ci8[];
extern u64 example_room_0_dl_sand_hackeroot_pal_rgba16[];
extern u64 example_room_0_dl_vines_ci8[];
extern u64 example_room_0_dl_vines_pal_rgba16[];
extern u64 example_room_0_dl_water_hackeroot_ci8[];
extern u64 example_room_0_dl_water_hackeroot_x_water_hackeroot_pal_rgba16[];
extern u64 example_room_0_dl_water_hackeroot_ci8_copy[];
extern Vtx example_room_0_dl_crawlspace_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_crawlspace_mesh_layer_Opaque_vtx_0[12];
extern Gfx example_room_0_dl_crawlspace_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_crawlspace_outline_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_crawlspace_outline_mesh_layer_Opaque_vtx_0[47];
extern Gfx example_room_0_dl_crawlspace_outline_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_door_outline_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_door_outline_mesh_layer_Opaque_vtx_0[58];
extern Gfx example_room_0_dl_door_outline_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_001_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_001_mesh_layer_Opaque_vtx_0[22];
extern Gfx example_room_0_dl_grass_001_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_001_mesh_layer_Opaque_vtx_1[16];
extern Gfx example_room_0_dl_grass_001_mesh_layer_Opaque_tri_1[];
extern Vtx example_room_0_dl_ice_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_ice_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_ice_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_ladder_001_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_ladder_001_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_ladder_001_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_ladder_001_mesh_layer_Opaque_vtx_1[4];
extern Gfx example_room_0_dl_ladder_001_mesh_layer_Opaque_tri_1[];
extern Vtx example_room_0_dl_lava_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_lava_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_lava_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_lava_void_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_lava_void_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_lava_void_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_Floor_002_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_Floor_002_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_Floor_002_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_Floor_006_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_Floor_006_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_Floor_006_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_Floor_007_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_Floor_007_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_Floor_007_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_002_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_002_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_002_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_003_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_003_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_003_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_004_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_004_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_004_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_005_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_005_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_005_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_006_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_006_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_006_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_007_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_007_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_007_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_008_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_008_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_008_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_009_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_009_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_009_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_010_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_010_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_010_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_011_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_011_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_011_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_012_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_012_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_012_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_013_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_013_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_013_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_014_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_014_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_014_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_015_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_015_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_015_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_016_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_016_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_016_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_017_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_017_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_017_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_018_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_018_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_018_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_019_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_019_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_019_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_020_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_020_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_020_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_grass_021_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_grass_021_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_grass_021_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_sand_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_sand_mesh_layer_Opaque_vtx_0[4];
extern Gfx example_room_0_dl_sand_mesh_layer_Opaque_tri_0[];
extern Vtx example_room_0_dl_sand_mesh_layer_Opaque_vtx_1[4];
extern Gfx example_room_0_dl_sand_mesh_layer_Opaque_tri_1[];
extern Vtx example_room_0_dl_sand_mesh_layer_Opaque_vtx_2[4];
extern Gfx example_room_0_dl_sand_mesh_layer_Opaque_tri_2[];
extern Vtx example_room_0_dl_sand_mesh_layer_Opaque_vtx_3[4];
extern Gfx example_room_0_dl_sand_mesh_layer_Opaque_tri_3[];
extern Vtx example_room_0_dl_vines_mesh_layer_Transparent_vtx_cull[8];
extern Vtx example_room_0_dl_vines_mesh_layer_Transparent_vtx_0[4];
extern Gfx example_room_0_dl_vines_mesh_layer_Transparent_tri_0[];
extern Vtx example_room_0_dl_water_mesh_layer_Transparent_vtx_cull[8];
extern Vtx example_room_0_dl_water_mesh_layer_Transparent_vtx_0[4];
extern Gfx example_room_0_dl_water_mesh_layer_Transparent_tri_0[];
extern Vtx example_room_0_dl_water_border_mesh_layer_Opaque_vtx_cull[8];
extern Vtx example_room_0_dl_water_border_mesh_layer_Opaque_vtx_0[20];
extern Gfx example_room_0_dl_water_border_mesh_layer_Opaque_tri_0[];
extern Gfx mat_example_room_0_dl_wall_layerOpaque[];
extern Gfx mat_example_room_0_dl_grass_layerOpaque[];
extern Gfx mat_example_room_0_dl_grass_002_layerOpaque[];
extern Gfx mat_example_room_0_dl_ice_layerOpaque[];
extern Gfx mat_example_room_0_dl_f3dlite_material_004_layerOpaque[];
extern Gfx mat_example_room_0_dl_f3dlite_material_002_layerOpaque[];
extern Gfx mat_example_room_0_dl_lava_layerOpaque[];
extern Gfx mat_example_room_0_dl_lava_void_layerOpaque[];
extern Gfx mat_example_room_0_dl_sand_layerOpaque[];
extern Gfx mat_example_room_0_dl_sand2_layerOpaque[];
extern Gfx mat_example_room_0_dl_epona1_layerOpaque[];
extern Gfx mat_example_room_0_dl_epona2_layerOpaque[];
extern Gfx mat_example_room_0_dl_f3dlite_material_006_layerTransparent[];
extern Gfx mat_example_room_0_dl_water_layerTransparent[];
extern Gfx example_room_0_dl_crawlspace_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_crawlspace_outline_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_door_outline_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_001_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_ice_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_ladder_001_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_lava_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_lava_void_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_Floor_002_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_Floor_006_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_Floor_007_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_002_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_003_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_004_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_005_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_006_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_007_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_008_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_009_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_010_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_011_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_012_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_013_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_014_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_015_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_016_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_017_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_018_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_019_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_020_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_grass_021_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_sand_mesh_layer_Opaque[];
extern Gfx example_room_0_dl_vines_mesh_layer_Transparent[];
extern Gfx example_room_0_dl_water_mesh_layer_Transparent[];
extern Gfx example_room_0_dl_water_border_mesh_layer_Opaque[];
extern RoomShapeNormal example_room_0_shapeHeader;
extern RoomShapeDListsEntry example_room_0_shapeDListsEntry[1];

#endif
