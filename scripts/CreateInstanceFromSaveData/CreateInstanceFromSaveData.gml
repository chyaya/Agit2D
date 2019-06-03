///@desc crate an instance from the save map
///@param map

var jsonObj = argument0;
var object = tj_get(jsonObj, "object_index");
var _layer = tj_get(jsonObj, "layer");

var instance = instance_create_layer(0, 0, layer_get_id(_layer), objBlank);

with(instance)
{
	var var_array = global.g_SaveMeta[?object];

	for(var i = 0; i < array_length_1d(var_array); i++)
	{
		var name = var_array[i];
		var value = tj_get(jsonObj, name);
	
		variable_instance_set(self, name, value);
	}

	instance_change(object, true);
}

return instance;