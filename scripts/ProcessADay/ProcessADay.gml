with(objTree)
{
	if(image_xscale < 2)
	{
		image_xscale += 0.5;	
		image_yscale += 0.5;
	}
}


repeat(3)
{
	var spawnX = random(room_width);

	with(instance_create_layer(spawnX, 0, "Instances", objTree))
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
	}


}