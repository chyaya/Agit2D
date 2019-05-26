var _layer = argument0;
var object = argument1;

var spawnX = random(room_width);
var instance = noone;

with(instance_create_layer(spawnX, 0, _layer, object))
{
	var success = false;
	
	for(var spawnY = 0; spawnY < room_height; ++spawnY)
	{
		if(place_meeting(spawnX, spawnY, objSolid))
		{
			y = spawnY;
			success = true;
			break;
		}
	}
	
	if(!success)
	{
		instance_destroy();
	}
	
	instance = self;
}

return instance;