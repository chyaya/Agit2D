uniform_color = shader_get_uniform(sh_daynight, "u_Colour"); // control shader

// day
var_color[0] = 1; // red
var_color[1] = 1; // green
var_color[2] = 1; // blue

// dawn/sunset
var_color[3] = 0.75;
var_color[4] = 0.4;
var_color[5] = 0.3;

// night
var_color[6] = 0.1;
var_color[7] = 0.2;
var_color[8] = 0.35;

// ^ you can change all vars up here for better effect in your game

// current vars
var_color[9] = 0;
var_color[10] = 0;
var_color[11] = 0;

