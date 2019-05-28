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

var jsonRootObj = tj_decode(json);
var version = tj_get(jsonRootObj, "version");

if(version != SAVE_VERSION)
	return false;

var objArray = tj_get(jsonRootObj, "instances");

for(var i = 0; i < array_length_1d(objArray); i++)
{
	var jsonObj = objArray[i];
	CreateInstanceFromSaveData(jsonObj);
}

return true;