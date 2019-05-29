draw_set_alpha(1.0);
draw_set_color(c_white);
draw_set_font(fontNormal);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var inventory_x = argument[0];
var inventory_y = argument[1];
var slot_size = argument[2];
var slots_in_row = argument[3];
var slots_gap = argument_count > 4 ? argument[4] : 0;

ss = 1
xx = 0
yy = 0
while (ss <= total_slots) { //Draw the background slots.
	if (xx < slots_in_row) {
	    if selected = ss {
			NineSliceBoxStretch(slot_selected,
				xx*(slot_size + slots_gap) + inventory_x,
				yy*(slot_size + slots_gap) + inventory_y,
				slot_size, slot_size, 3);
	        }
	    else {
	        NineSliceBoxStretch(slot_sprite,
				xx*(slot_size + slots_gap) + inventory_x,
				yy*(slot_size + slots_gap) + inventory_y,
				slot_size, slot_size, 3);
	        }
	    xx+=1;
	    ss+=1;
	}
	else {
	    yy+=1;
	    xx=0;
	}
} 
    
ss = 1
xx = 0
yy = 0
while (ss <= total_slots) { //Draw the item icons.
	if (xx < slots_in_row) {
	    if select1 != ss {
			
			var _x = xx*(slot_size + slots_gap) + inventory_x;
			var _y = yy*(slot_size + slots_gap) + inventory_y;
			
	        draw_sprite_stretched(
				global.Item_Sprite[inv[ss]],0,_x,_y,
				slot_size, slot_size);
				
			if(inv_count[ss] > 1)
				draw_text(_x + slot_size - 5, _y+slot_size - 3, string(inv_count[ss]));
	    }
	    xx+=1;
	    ss+=1;
	}
	else {
	    yy+=1;
	    xx=0;
	}
} 
    
ss = 1
xx = 0
yy = 0
while (ss <= total_slots) { //Draw the item on your mouse.
	if (xx < slots_in_row) {
	    if select1 = ss {
	        draw_sprite_stretched(
				global.Item_Sprite[inv[ss]], 0,
				mouse_x-slot_size/2 - __view_get( e__VW.XView, 0 ),
				mouse_y-slot_size/2 - __view_get( e__VW.YView, 0 ),
				slot_size, slot_size);
	    }
	    xx+=1;
	    ss+=1;
	}
	else {
	    yy+=1;
	    xx=0;
	}
}