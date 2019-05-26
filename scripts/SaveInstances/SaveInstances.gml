///@desc returns a json string of all instances

var objArray = [];

with(all)
{
	if(ds_map_exists(global.g_SaveMeta, object_index))
	{
		objArray[array_length_1d(objArray)] = BuildSaveDataFromInstance(id);
	}
}

var json = tj_encode(objArray);
return json;