/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var woodItemId = FindItemIdByName("Wood");

repeat(5)
{
	var _x = x - sprite_get_xoffset(sprite_index);
	var _y = y - sprite_get_yoffset(sprite_index);
	
	var rx = irandom_range(_x + sprite_get_bbox_left(sprite_index), _x + sprite_get_bbox_right(sprite_index) - 1);
	var ry = irandom_range(_y + sprite_get_bbox_top(sprite_index), _y + sprite_get_bbox_bottom(sprite_index) - 1);
	
	with(Util_CreateItem(rx, ry, woodItemId))
	{
		vx = random_range(-2, 2);
		vy = random_range(-5, -3);
	}
}