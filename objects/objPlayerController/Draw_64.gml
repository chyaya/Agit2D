DrawGUI_Time();
DrawGUI_Debug();

var viewW = view_wport[0];
var viewH = view_hport[0];

if(m_ShowInventory)
{
	draw_set_alpha(0.5);
	draw_set_colour(c_black);

	draw_rectangle(0, 0, viewW, viewH, false);
	
	with(m_PlayerObject)
	{
		var slotSize = 48;
		var row = other.m_SlotsInRow;
		Pawn_Inven_DrawUI((viewW - row*slotSize)*0.5, viewH - 400, 48, row);
	}
}

with(m_PlayerObject)
{
	var slotSize = 64;
	
	draw_sprite_stretched(
		spr_slot, 0, (viewW - slotSize)*0.5, viewH - 100,
		slotSize, slotSize);
		
	draw_sprite_stretched(
		global.Item_Sprite[inv[selected]],0,
		(viewW - slotSize)*0.5, viewH - 100, slotSize, slotSize);
}


DrawGUI_Actions();