objPlayer.x = 2155;
objPlayer.y = 295;

with(objTree)
{
	if(image_xscale < 2)
	{
		image_xscale += 0.5;	
		image_yscale += 0.5;
	}
}


var nTree = instance_number(objTree);
var nSpawnTree = clamp(50 - nTree, 0, 3);

repeat(nSpawnTree)
{
	with(SpawnObject("Instances", objTree))
	{
		image_xscale = 0.1;
		image_yscale = 0.1;
	}
}

var nGrass = instance_number(objGrass);
var nSpawnGrass = clamp(100 - nGrass, 0, 10);

repeat(nSpawnGrass)
{
	with(SpawnObject("Instances", objGrass))
	{
		image_xscale = random(0.8) + 0.2;
		image_yscale = image_xscale;
	}
}

var nItem = instance_number(objItem);
var nSpawnItem = clamp(50 - nItem, 0, 3);

repeat(nSpawnItem)
{
	SpawnObject("Items", objItem);
}