// sun and moon
with(objAtmosphereController) {
    var xx, yy, cam, vx, vy, vw, vh;
	cam = view_get_camera(0);
	var matView = camera_get_view_mat(cam);
	var verts = matrix_transform_vertex(matView, 0, 0, 0);
	vx = -verts[0];
	vy = -verts[1] + 100;
	vw = camera_get_view_width(cam);
	vh = camera_get_view_height(cam);
	
    if (m_TimeInDay >= 0.25 && m_TimeInDay < 0.75) {
        xx = vx + lengthdir_x(vw/4, -m_TimeInDay*360 + 270);
        yy = vy + lengthdir_y(vh/4, -m_TimeInDay*360 + 270);
        draw_sprite(s_sun, 0, xx,  yy);
    } else {
        xx = vx + lengthdir_x(vw/4, -m_TimeInDay*360 + 90);
        yy = vy + lengthdir_y(vh/4, -m_TimeInDay*360 + 90);
        draw_sprite(s_moon, 0, xx,  yy);
    }  
}
