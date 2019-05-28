gml_pragma("global", "SaveMeta();");

#macro SAVE_VERSION 4
#macro SAVE_FILENAME "save.json"

global.g_SaveMeta = ds_map_create();
global.g_SaveMeta[?objBlock1] = ["x", "y"];
global.g_SaveMeta[?objBlock2] = ["x", "y"];
global.g_SaveMeta[?objTree] = ["x", "y", "image_xscale", "image_yscale"];
global.g_SaveMeta[?objGrass] = ["x", "y", "image_xscale", "image_yscale"];
global.g_SaveMeta[?objItem] = ["x", "y", "m_ItemId", "m_ItemCount"];
global.g_SaveMeta[?objPlayer] = ["x", "y", "total_slots", "inv", "inv_count"];