///@desc destroy all savable instance, and load new ones from json
///@param json

var json = argument0;

with(all)
{
	if(ds_map_exists(global.g_SaveMeta, object_index))
	{
		instance_destroy();
	}
}

var m = json_decode(json);
var list = m[?"instances"];

for(var i = 0; i < ds_list_size(list); i++)
{
	var map = list[|i];
	CreateInstanceFromSaveData(map);
}

ds_map_destroy(m);