var _x = argument0;
var _y = argument1;
var itemId = argument2;

var instance = instance_create_layer(_x, _y, "Items", objBlank);

with(instance)
{
	m_ItemId = itemId;
	
	instance_change(objItem, true);
}

return instance;
