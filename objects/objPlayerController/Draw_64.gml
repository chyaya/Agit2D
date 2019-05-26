var viewW = view_wport[0];
var viewH = view_hport[0];

var strMinute = string_format(current_minute, 2, 0);
strMinute = string_replace(strMinute," ","0");

var strSecond = string_format(current_second, 2, 0);
strSecond = string_replace(strSecond," ", "0");

var strTime = string(current_hour) + ":" + strMinute + ":" + strSecond;


if(objCamera.m_Zoom == 1.0)
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	
	draw_set_font(fontTitle);
	draw_text(viewW*0.5, 150, "Agit 2D");	
	
	draw_set_font(fontBig);

	draw_text(viewW*0.5, 300, string(current_year + 100) + "년 " + string (current_month) + "월 " + string(current_day) + "일");
	draw_text(viewW*0.5, 350, strTime);
}
else
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_right);	
	
	draw_set_font(fontBig);
	draw_text(viewW - 32, 32, strTime);
}


draw_set_valign(fa_top);
draw_set_halign(fa_left);	
draw_set_font(fontDefault);

draw_text(32, 32, "N: Process A Day");
draw_text(32, 64, "K: Clear World");
draw_text(32, 96, "M: Toggle Mute");

if(m_ShowInventory)
{
	draw_set_alpha(0.5);
	draw_set_colour(c_black);

	draw_rectangle(0, 0, viewW, viewH, false);
	
	with(m_PlayerObject)
	{
		Pawn_Inven_DrawUI(viewW - 300, 100, 48, 5);
	}
}

DrawGUI_Actions();