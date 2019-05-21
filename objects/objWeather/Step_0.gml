/// @description Insert description here
// You can write your code in this editor


var s = 0;
s += current_hour*3600;
s += current_minute*60;
s += current_second;

var t = s/86400;

if(t < 0.5)
{
	TimeInDay = t*2;
}
else
{
	TimeInDay = 1 - (t-0.5)*2;
}

lay_id = layer_get_id("room0");
back_id = layer_background_get_id("BackgroundColor");

nightColor = $310002;
dayColor = $E8A162;

color = merge_color(nightColor, dayColor, TimeInDay);

layer_background_blend(back_id, color);