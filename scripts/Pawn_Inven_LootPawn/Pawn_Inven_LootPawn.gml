var otherPawn = argument0;

var invenIdx = 1;
var otherInvenIdx = 1;
for(; invenIdx <= total_slots; ++invenIdx)
{
	while(otherPawn.inv[otherInvenIdx] == 0)
	{
		++otherInvenIdx;
				
		if(otherInvenIdx > otherPawn.total_slots)
			break;
	} 
			
	if(otherInvenIdx > otherPawn.total_slots)
			break;
			
	if(inv[invenIdx] == 0)
	{
		var itemId = otherPawn.inv[otherInvenIdx];
		
		with(otherPawn)
		{
			Pawn_Inven_RemoveItemByPos(otherInvenIdx);
		}
		
		Pawn_Inven_AddItem(itemId, 1);
	}
}

