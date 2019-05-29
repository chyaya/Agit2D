var viewW = view_wport[0];
var viewH = view_hport[0];

draw_set_alpha(0.5);
draw_set_colour(c_black);

draw_rectangle(0, 0, viewW, viewH, false);

draw_set_alpha(1);
draw_set_colour(c_white);

var boxW = 200;
var boxH = 64;
var gapW = 10;

var _x = (viewW - MAX_TAB*boxW - (MAX_TAB - 1)*gapW)/2;
var _y = 100;

var names = ["Inventory", "Craft"];

for(var i = 0; i < MAX_TAB; ++i)
{
	var xx = _x + i*(boxW + gapW);
	var yy = _y;
	
	NineSliceBoxStretch(
		i == m_CurTab ? spr_selected_slot : spr_slot,
		xx, yy, boxW, boxH, 3);
		
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fontBig);
	
	draw_text(xx + boxW/2, yy+boxH/2, names[i]);
}