DrawGUI_Time();
DrawGUI_Debug();

if(m_ShowInventory)
{
	DrawGUI_TabList();

	switch(m_CurTab)
	{
	case TAB_INVENTORY:
		DrawGUI_Tab_Inventory();
		break;
	case TAB_CRAFT:
		DrawGUI_Tab_CraftList();
		break;
	}
}


DrawGUI_Actions();