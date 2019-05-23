var viewW = view_wport[0];
var viewH = view_hport[0];

//draw_set_colour(c_blue);
draw_set_font(fontBig);
draw_set_halign(fa_right);

var strMinute = string_format(current_minute, 2, 0);
strMinute = string_replace(strMinute," ","0");

var strSecond = string_format(current_second, 2, 0);
strSecond = string_replace(strSecond," ", "0");

draw_text(viewW - 32, 32, string(current_hour) + ":" + strMinute + ":" + strSecond);


if(objCamera.m_Zoom == 1.0)
{
	draw_set_font(fontBig);
	draw_set_halign(fa_center);

	draw_text(viewW*0.5, 300, string(current_year + 100) + "년 " + string (current_month) + "월 " + string(current_day) + "일");	
	
	draw_set_font(fontTitle);
	draw_text(viewW*0.5, 150, "Agit 2D");	
}