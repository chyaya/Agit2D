// sun and moon
with(objWorldManager) {
    var xx, yy, cam, vx, vy, vw, vh;
	cam = view_get_camera(0);
	var matView = camera_get_view_mat(cam);
	var verts = matrix_transform_vertex(matView, 0, 0, 0);
	vx = -verts[0];
	vy = -verts[1];
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
