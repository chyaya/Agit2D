objPlayer.x = 2112;
objPlayer.y = 288;

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
	with(SpawnObject("Instances", objTree))
	{
		image_xscale = 0.1;
		image_yscale = 0.1;
	}
}

repeat(3)
{
	with(SpawnObject("Instances", objGrass))
	{
		image_xscale = random(0.8) + 0.2;
		image_yscale = image_xscale;
	}
}

repeat(3)
{
	SpawnObject("Items", objItem);
}