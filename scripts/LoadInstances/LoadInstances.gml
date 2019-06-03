///@desc destroy all savable instance, and load new ones from json
///@param json

var json = argument[0];
var offsetX = argument_count > 1 ? argument[1] : 0;
var offsetY = argument_count > 2 ? argument[2] : 0;

var jsonRootObj = tj_decode(json);
var version = tj_get(jsonRootObj, "version");

if(version != SAVE_VERSION)
	return [];

var objList = [];
var objArray = tj_get(jsonRootObj, "instances");

for(var i = 0; i < array_length_1d(objArray); i++)
{
	var jsonObj = objArray[i];
	
	var instance = CreateInstanceFromSaveData(jsonObj);
	instance.x += offsetX;
	instance.y += offsetY;
	
	objList[i] = instance
}

return objList;