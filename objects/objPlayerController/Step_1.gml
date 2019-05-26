m_ActionNames[ACTION_A] = "";
m_ActionNames[ACTION_B] = "";
m_ActionNames[ACTION_X] = "";
m_ActionNames[ACTION_Y] = "";

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

if(other.m_Input_Btn_Y)
{
	m_ShowInventory = !m_ShowInventory;
}

if(!m_ShowInventory)
{
	m_ActionNames[ACTION_A] = "Jump";
	m_ActionNames[ACTION_B] = "";
	m_ActionNames[ACTION_X] = "Use Item";
	m_ActionNames[ACTION_Y] = "Open Inventory";
	
	with(m_PlayerObject)
	{
		kLeft        = other.m_Input_AxisL_Left;
		kRight       = other.m_Input_AxisL_Right;
		kUp          = other.m_Input_AxisL_Up;
		kDown        = other.m_Input_AxisL_Down;

		kJump        = other.m_Input_Btn_A;
		kJumpRelease = other.m_Input_Btn_A_Released;
	}
	
	m_PlayerObjectX = m_PlayerObject.x;
	m_PlayerObjectY = m_PlayerObject.y;
	
	PlayerController_CaptureInteractObject();
	PlayerController_SelectAction();
}
else
{
	with(m_PlayerObject)
	{
		kLeft        = false;
		kRight       = false;
		kUp          = false;
		kDown        = false;

		kJump        = false;
		kJumpRelease = false;
	}
	
	m_ActionNames[ACTION_A] = "";
	m_ActionNames[ACTION_B] = "";
	m_ActionNames[ACTION_X] = "";
	m_ActionNames[ACTION_Y] = "Close Inventory";
	
	if(m_Input_DPad_Left)
		--m_SelectedSlotX;
		
	if(m_Input_DPad_Right)
		++m_SelectedSlotX;
	
	if(m_Input_DPad_Up)
		--m_SelectedSlotY;
		
	if(m_Input_DPad_Down)
		++m_SelectedSlotY;
	
	m_SelectedSlotX = clamp(m_SelectedSlotX, 0, m_SlotsInRow - 1);
	m_SelectedSlotY = clamp(m_SelectedSlotY, 0, m_PlayerObject.total_slots/m_SlotsInRow - 1);
		
	with(m_PlayerObject)
	{
		selected = other.m_SelectedSlotX + other.m_SlotsInRow*other.m_SelectedSlotY + 1;
	}
}

PlayerController_DoAction();

