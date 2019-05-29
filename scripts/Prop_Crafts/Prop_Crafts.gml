gml_pragma("global", "Prop_Crafts();");

var craftId = 0;

Prop_AddCraft(craftId++, 0, []);

Prop_AddCraft(craftId++, "Robot", [FindItemIdByName("Cola Can"), 10]);
Prop_AddCraft(craftId++, "House", [FindItemIdByName("Wood"), 10, FindItemIdByName("Cola Can"), 3]);
