var viewW = view_wport[0];
var viewH = view_hport[0];

var _w = 400;
var _h = 64;
var _x = (viewW - _w)/2;
var _y = 300;
var gapH = 15;

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fontNormal);

for(var i = 1; i < array_length_1d(global.Craft_Text); ++i)
{
	var xx = _x;
	var yy = _y+((i-1)*(_h + gapH)); 
	
	NineSliceBoxStretch(
		m_SelectedCraftIndex == i ? spr_selected_slot : spr_slot,
		xx, yy, _w, _h, 3);
	
	draw_text(xx + _w/2, yy + _h/2, global.Craft_Text[i]);
}

var materialX = (viewW + _w)/2 + 100;
var materialY = 300;
var materialH = 32;
var materialGapH = 5;

NineSliceBoxStretch(
	spr_slot,
	materialX, materialY, 300, 400, 3);

var material = global.Craft_Material[m_SelectedCraftIndex];
	
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(fontNormal);

for(var i = 0; i < array_length_1d(material); i += 2)
{
	var xx = materialX;
	var yy = materialY+(i/2*(materialH + materialGapH)); 
	
	draw_text(xx + 20, yy + _h/2, global.Item_Text[material[i]]);
	draw_text(xx + 250, yy + _h/2, "x" + string(material[i + 1]));
}