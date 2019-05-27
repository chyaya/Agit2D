/// @description Insert description here
// You can write your code in this editor

lay_id = layer_get_id("room0");
back_id = layer_background_get_id("BackgroundColor");

nightColor = $310002;
dayColor = $E8A162;

color = merge_color(nightColor, dayColor, objWorldManager.m_TimeInDay);

//layer_background_blend(back_id, color);