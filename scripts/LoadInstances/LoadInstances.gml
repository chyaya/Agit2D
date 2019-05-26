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

var objArray = tj_decode(json);

for(var i = 0; i < array_length_1d(objArray); i++)
{
	var jsonObj = objArray[i];
	CreateInstanceFromSaveData(jsonObj);
}