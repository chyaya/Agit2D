var btnPressed = argument0;

if(false == btnPressed)
	return;
	
var actionName = argument1;

switch(actionName)
{
case "Pick Up":
	with(m_PlayerObject)
	{
		if(Pawn_Inven_AddItem(other.m_InteractionObject.m_ItemId, 1) == 0)
		{
			var itemName = global.Item_Text[other.m_InteractionObject.m_ItemId];
			
			Util_CreateNotify(x, y, itemName, 0, -30);
			
			instance_destroy(other.m_InteractionObject);
			other.m_InteractionObject = noone;
		}
		else
		{
			Util_CreateNotify(x, y, "Inventory is full", 0, -30);
		}
	}
	break;
}