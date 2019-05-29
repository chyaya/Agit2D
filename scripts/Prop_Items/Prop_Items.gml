gml_pragma("global", "Prop_Items();");

var itemId = 0;

inv_create_item(itemId++,spr_no_item, "", 1, noone, noone); //Don't remove this one!

inv_create_item(itemId++,sprWeapon, "Knife", 10, noone, noone);
inv_create_item(itemId++,sprWood, "Wood", 100, noone, noone);
inv_create_item(itemId++,sprColaCan, "Cola Can", 5, noone, noone);

