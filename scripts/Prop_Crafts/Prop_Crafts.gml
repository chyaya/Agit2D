gml_pragma("global", "Prop_Crafts();");

var craftId = 0;

Prop_AddCraft(craftId++, 0, []);

Prop_AddCraft(craftId++, FindItemIdByName("Knife"), [FindItemIdByName("Wood"), 10]);
Prop_AddCraft(craftId++, FindItemIdByName("Cola"), [FindItemIdByName("Wood"), 2]);

