var offsetX = argument0; 
var offsetY = argument1; 

var t = tilemap_get_at_pixel(tileMapId, x + offsetX, y + offsetY) & tile_index_mask;

return t != 0;