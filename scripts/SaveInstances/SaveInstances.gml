///@desc returns a json string of all instances

var list = ds_list_create();

with(all)
{
	if(ds_map_exists(global.g_SaveMeta, object_index))
	{
		var map = BuildSaveDataFromInstance(id);
		ds_list_add(list, map);
		ds_list_mark_as_map(list, ds_list_size(list) - 1);
	}
}

var m = ds_map_create();
ds_map_add_list(m, "instances", list);

var json = json_encode(m);

ds_map_destroy(m);

return json;