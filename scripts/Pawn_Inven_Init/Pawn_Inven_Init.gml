///@desc create inventory to object
///@param total slot size
///@param 

slot_sprite     =   spr_slot            //The sprite of your slot.
slot_selected   =   spr_selected_slot   //The sprite of the slot when it's selected

selected = 1
select1 = 0 //The first slot you select

if(false == variable_instance_exists(id, "total_slots"))
{
	total_slots     =   argument0;                  //The total number of invetory slots
	
	//Create Inventory Slots
	var p = 1
	while p <= total_slots
	{
	    inv[p] = 0;
		inv_count[p] = 0;
	    p++;
	}
}

