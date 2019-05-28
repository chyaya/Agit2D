var itemPos = argument0;
var _x = argument1;
var _y = argument2;

if(itemPos == 0)
	return;
	
var itemId = inv[itemPos];

if(itemId == 0)
	return;

if(Pawn_Inven_RemoveItemByPos(itemPos) != 0)
	return;

Util_CreateItem(_x, _y, itemId);