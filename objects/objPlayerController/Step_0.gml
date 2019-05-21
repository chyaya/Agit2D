with(m_PlayerObject)
{
	kLeft        = keyboard_check(vk_left)  || gamepad_axis_value(0, gp_axislh) < -0.4;
	kRight       = keyboard_check(vk_right) || gamepad_axis_value(0, gp_axislh) >  0.4;
	kUp          = keyboard_check(vk_up)    || gamepad_axis_value(0, gp_axislv) < -0.4;
	kDown        = keyboard_check(vk_down)  || gamepad_axis_value(0, gp_axislv) >  0.4;

	kJump        = keyboard_check_pressed(ord("Z"))  || gamepad_button_check_pressed(0, gp_face1);
	kJumpRelease = keyboard_check_released(ord("Z")) || gamepad_button_check_released(0, gp_face1);

	kAction      = keyboard_check_pressed(ord("X"))  || gamepad_button_check_pressed(0, gp_face3);
	kBlock       = keyboard_check(ord("C"))          || gamepad_button_check(0, gp_face2);
	kRollL       = keyboard_check_pressed(ord("A"))  || gamepad_button_check_pressed(0, gp_shoulderlb);
	kRollR       = keyboard_check_pressed(ord("D"))  || gamepad_button_check_pressed(0, gp_shoulderrb);
}