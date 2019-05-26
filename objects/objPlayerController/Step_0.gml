m_Input_AxisL_Up = false;
m_Input_AxisL_Down = false;
m_Input_AxisL_Left = false;
m_Input_AxisL_Right = false;
m_Input_DPad_Up = false;
m_Input_DPad_Down = false;
m_Input_DPad_Left = false;
m_Input_DPad_Right = false;
m_Input_Btn_A = false;
m_Input_Btn_A_Released = false;
m_Input_Btn_B = false;
m_Input_Btn_X = false;
m_Input_Btn_Y = false;
m_Input_Btn_Select = false;
m_Input_Btn_Start = false;
m_Input_Btn_LB = false;
m_Input_Btn_RB = false;
m_Input_Btn_LT = false;
m_Input_Btn_RT = false;

PlayerController_CaptureKeyboard();
PlayerController_CaptureGamepad();


with(m_PlayerObject)
{
	kLeft        = other.m_Input_AxisL_Left;
	kRight       = other.m_Input_AxisL_Right;
	kUp          = other.m_Input_AxisL_Up;
	kDown        = other.m_Input_AxisL_Down;

	kJump        = other.m_Input_Btn_A;
	kJumpRelease = other.m_Input_Btn_A_Released;

	kAction      = other.m_Input_Btn_X;
	kInventory   = other.m_Input_Btn_Y;
	//kRollL       = keyboard_check_pressed(ord("A"))  || gamepad_button_check_pressed(0, gp_shoulderlb);
	//kRollR       = keyboard_check_pressed(ord("D"))  || gamepad_button_check_pressed(0, gp_shoulderrb);
}