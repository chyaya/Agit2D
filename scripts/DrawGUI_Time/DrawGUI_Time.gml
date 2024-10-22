var viewW = view_wport[0];
var viewH = view_hport[0];

draw_set_colour(c_white);

var strMinute = string_format(current_minute, 2, 0);
strMinute = string_replace(strMinute," ","0");

var strSecond = string_format(current_second, 2, 0);
strSecond = string_replace(strSecond," ", "0");

var strTime = string(current_hour) + ":" + strMinute + ":" + strSecond;


if(instance_number(objCamera) > 0 && objCamera.m_Zoom == 1.0)
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
