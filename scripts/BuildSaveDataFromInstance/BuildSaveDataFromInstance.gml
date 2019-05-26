///@desc returns a map representing an instance
///@param instance

var instance = argument0;
var object = instance.object_index;

var var_array = global.g_SaveMeta[?object];

var jsonObj = tj_object("object_index", object, "layer", instance.layer);

for(var i = 0; i < array_length_1d(var_array); i++)
{
	var name = var_array[i];
	var value = variable_instance_get(instance, name);
	
	tj_set(jsonObj, name, value);
}

return jsonObj;