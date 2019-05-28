var old = shader_current();
shader_reset();

// sun and moon
with(objWorldManager) {
    var xx, yy, cam, vx, vy, vw, vh;
	cam = view_get_camera(0);
	
	var worldPos = Camera_ScreenToWorld(view_wport[0]/2, view_hport[0]/2);
	vx = worldPos[0];
	vy = worldPos[1];
	
	vw = camera_get_view_width(cam);
	vh = camera_get_view_height(cam);
	
    var sunAlpha = 1 - (abs(0.5 - m_TimeInDay)/0.5);
		
    xx = vx + lengthdir_x(vw/6, -m_TimeInDay*360 + 270);
    yy = vy + lengthdir_y(vh/6, -m_TimeInDay*360 + 270);
    draw_sprite_ext(s_sun, 0, xx,  yy, 1, 1, 0, c_white, sunAlpha);
    
    xx = vx + lengthdir_x(vw/6, -m_TimeInDay*360 + 90);
    yy = vy + lengthdir_y(vh/6, -m_TimeInDay*360 + 90);
	draw_sprite_ext(s_moon, 0, xx,  yy, 1, 1, 0, c_white, 1 - sunAlpha);
    
}

shader_set(old);