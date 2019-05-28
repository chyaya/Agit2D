///@desc returns a json string of all instances

var objArray = [];

with(all)
{
	if(ds_map_exists(global.g_SaveMeta, object_index))
	{
		objArray[array_length_1d(objArray)] = BuildSaveDataFromInstance(id);
	}
}

var jsonRootObj = tj_object("version", SAVE_VERSION, "instances", objArray)

var json = tj_encode(jsonRootObj);
return json;