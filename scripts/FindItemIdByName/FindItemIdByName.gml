var itemName = argument0;

for(var i = 0; i < array_length_1d(global.Item_Text); ++i)
{
	if(global.Item_Text[i] == itemName)
	return i;
}
return 0;


