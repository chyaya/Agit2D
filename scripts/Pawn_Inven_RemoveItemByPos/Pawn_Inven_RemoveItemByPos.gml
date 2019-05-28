var itemPos = argument0;
var itemCount = argument1;

if(itemPos == 0)
	return itemCount;

var itemId = inv[itemPos];

if(itemId == 0)
	return itemCount;
	
while(inv_count[itemPos] > 0 && itemCount > 0)
{
	if(global.Item_OnAddOrRemove[itemId] != noone)
		script_execute(global.Item_OnAddOrRemove[itemId], self, -1);
		
	inv_count[itemPos] -= 1;
	itemCount -= 1;
}
	
	
assert_greater_than(inv_count[itemPos], 0);
	
if(inv_count[itemPos] == 0)
	inv[itemPos] = 0;
			
return 0;