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

if(m_InputEnabled)
{
	PlayerController_CaptureKeyboard();
	PlayerController_CaptureGamepad();
}

if(m_Input_Btn_Y)
{
	m_ShowInventory = !m_ShowInventory;
}

if(m_Input_Btn_LB)
{
	m_CurTab = max(m_CurTab - 1, 0);
}

if(m_Input_Btn_RB)
{
	m_CurTab = min(m_CurTab + 1, MAX_TAB - 1);
}


if(!m_ShowInventory)
{
	m_ActionNames[ACTION_A] = "Jump";
	m_ActionNames[ACTION_B] = "";
	m_ActionNames[ACTION_X] = "Use Item";
	m_ActionNames[ACTION_Y] = "Open Bag";
	
	with(m_PlayerObject)
	{
		m_DirX = 0;
		
		if(other.m_Input_AxisL_Left)
			--m_DirX;
		
		if(other.m_Input_AxisL_Right)
			++m_DirX;
			
		m_DirY = 0;
		
		if(other.m_Input_AxisL_Up)
			--m_DirY;
		
		if(other.m_Input_AxisL_Down)
			++m_DirY;

		kJump        = other.m_Input_Btn_A;
		kJumpRelease = other.m_Input_Btn_A_Released;
		
		kAction		 = other.m_Input_Btn_X;
	}
	
	if(m_PlayerObject != noone)
	{
		m_PlayerObjectX = m_PlayerObject.x;
		m_PlayerObjectY = m_PlayerObject.y;
	}
	
	PlayerController_CaptureInteractObject();
	PlayerController_SelectAction();
}
else
{
	with(m_PlayerObject)
	{
		m_DirX = 0;
		m_DirY = 0;

		kJump        = false;
		kJumpRelease = false;
	}
	
	m_ActionNames[ACTION_Y] = "Close Bag";
	
	switch(m_CurTab)
	{
	case TAB_INVENTORY:
		PlayerController_GUI_Inventory();
		break;
	case TAB_CRAFT:
		PlayerController_GUI_Craft();
		break;
		
	}
}

PlayerController_DoAction();

