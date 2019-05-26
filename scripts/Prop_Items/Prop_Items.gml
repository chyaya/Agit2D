gml_pragma("global", "Prop_Items();");

var itemId = 0;

inv_create_item(itemId++,spr_no_item, "", noone, noone); //Don't remove this one!

inv_create_item(itemId++,sprWeapon, "Weapon", noone, noone);
inv_create_item(itemId++,sprArmor, "Armor", noone, noone);
inv_create_item(itemId++,sprShoes, "Shoes", noone, noone);
inv_create_item(itemId++,sprPortion, "Portion", noone, noone);

