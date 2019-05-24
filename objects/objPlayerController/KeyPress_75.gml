/// @description Clear All

with(all)
{
	if(ds_map_exists(global.g_SaveMeta, object_index) && object_index != objBlock1)
	{
		instance_destroy();
	}
}

game_restart();
