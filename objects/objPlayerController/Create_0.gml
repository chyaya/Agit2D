m_AudioMute = false;
m_ShowInventory = false;

#macro ACTION_A 0
#macro ACTION_B 1
#macro ACTION_X 2
#macro ACTION_Y 3

m_ActionNames[ACTION_A] = "Jump";
m_ActionNames[ACTION_B] = "";
m_ActionNames[ACTION_X] = "Use Item";
m_ActionNames[ACTION_Y] = "Inventory";

m_SlotsInRow = 10;
m_SelectedSlotX = 0;
m_SelectedSlotY = 0;

m_PlayerObject = noone;
m_PlayerObjectX = -1;
m_PlayerObjectY = -1;

m_InteractionObject = noone;
m_InputEnabled = true;

#macro TAB_INVENTORY	0
#macro TAB_CRAFT		1
#macro MAX_TAB			2

m_CurTab = TAB_INVENTORY;

m_SelectedCraftIndex = 1;