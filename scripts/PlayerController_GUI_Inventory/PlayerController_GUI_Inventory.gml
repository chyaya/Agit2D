	m_ActionNames[ACTION_A] = "";
	m_ActionNames[ACTION_B] = "";
	m_ActionNames[ACTION_X] = "";
	
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