var _x = argument0;
var _y = argument1;
var itemId = argument2;
var itemCount = argument3;

var instance = instance_create_layer(_x, _y, "Items", objBlank);

with(instance)
{
	m_ItemId = itemId;
	m_ItemCount = itemCount;
	
	instance_change(objItem, true);
}

return instance;
