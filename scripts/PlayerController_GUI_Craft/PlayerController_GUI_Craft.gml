m_ActionNames[ACTION_A] = "";
m_ActionNames[ACTION_B] = "";
m_ActionNames[ACTION_X] = "";
	
if(m_Input_DPad_Up)
	--m_SelectedCraftIndex;
		
if(m_Input_DPad_Down)
	++m_SelectedCraftIndex;
	
m_SelectedCraftIndex = clamp(m_SelectedCraftIndex, 1, array_length_1d(global.Craft_Text) - 1);
