// sun and moon
with(o_shader_start) {
    var xx, yy, cam, vx, vy, vw, vh;
	cam = view_get_camera(0);
	vx = camera_get_view_x(cam);
	vy = camera_get_view_y(cam);
	vw = camera_get_view_width(cam);
	vh = camera_get_view_height(cam);
    if (mode_color = clamp(mode_color, 0, 0.5)) {
        xx = vx + vw/2 + lengthdir_x(vw/2, -mode_color*360+180);
        yy = vy + vh/2 + lengthdir_y(vh/2, -mode_color*360+180);
        draw_sprite(s_sun, 0, xx,  yy);
    } else {
        xx = vx + vw/2 + lengthdir_x(vw/2, -mode_color*360+360);
        yy = vy + vh/2 + lengthdir_y(vh/2, -mode_color*360+360);
        draw_sprite(s_moon, 0, xx,  yy);
    }  
}
  
draw_sprite_tiled(s_hills, 0, 0, 0);

move -= 4; // move level
draw_sprite_tiled(s_objects, 0, move, 0);