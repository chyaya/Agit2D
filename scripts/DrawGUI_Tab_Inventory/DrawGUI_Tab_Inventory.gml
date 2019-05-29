var viewW = view_wport[0];
var viewH = view_hport[0];

with(m_PlayerObject)
{
	var slotSize = 64;
	var gapSize = 16;
	var row = other.m_SlotsInRow;
	Pawn_Inven_DrawUI((viewW - row*slotSize - (row - 1)*gapSize)*0.5, 300, slotSize, row, gapSize);
}


with(m_PlayerObject)
{
	var slotSize = 64;
	
	NineSliceBoxStretch(
		spr_slot, (viewW - slotSize)*0.5, viewH - 100,
		slotSize, slotSize, 3);
		
	var _x = (viewW - slotSize)*0.5;
	var _y = viewH - 100;
		
	draw_sprite_stretched(
		global.Item_Sprite[inv[selected]],0,
		_x, _y, slotSize, slotSize);
				
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fontNormal);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
		
	if(inv_count[selected] > 1)
		draw_text(_x + slotSize - 5, _y + slotSize - 3, string(inv_count[selected]));
}
