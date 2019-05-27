/// @description Insert description here
// You can write your code in this editor


var s = m_StartupUnixTimeStamp + (current_time*0.001 - m_StartupCurrentTime);
var t = s/20 mod 1;
//var t = s/86400;

if(t < 0.5)
{
	m_TimeInDay = t*2;
}
else
{
	m_TimeInDay = (t-0.5)*2;
}

show_debug_message("UNIX Time:" + string(s) + ", TimeInDay:" + string(m_TimeInDay));

lay_id = layer_get_id("room0");
back_id = layer_background_get_id("BackgroundColor");

nightColor = $310002;
dayColor = $E8A162;

color = merge_color(nightColor, dayColor, m_TimeInDay);

//layer_background_blend(back_id, color);