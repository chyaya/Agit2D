/// @description Clear All

with(all)
{
	if(ds_map_exists(global.g_SaveMeta, object_index)
		&& object_index != objPlayer
		&& object_index != objBlock1)
	{
		instance_destroy();
	}
}

with(objPlayer)
{
	Pawn_Inven_Clear();
}

objPlayer.x = 2155;
objPlayer.y = 295;

game_restart();
