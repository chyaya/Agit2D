var craftId = argument[0];

var i = 1;
global.Craft_Item[craftId] = argument[i++];
global.Craft_Material[craftId] = argument[i++];

assert_is_array(global.Craft_Material[craftId]);