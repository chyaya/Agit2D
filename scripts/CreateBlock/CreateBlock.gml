var blockW = 16;
var blockH = 16;

var checkX = x + facing*blockW;
var checkY = y - blockH;

var placeX = floor(checkX/blockW)*blockW;
var placeY = floor((checkY - 8)/blockH)*blockH;

if (place_meeting(placeX + blockW/2, placeY + blockH/2, objSolid))
	return;	
	
instance_create_layer(placeX, placeY, "Blocks", objBlock2);