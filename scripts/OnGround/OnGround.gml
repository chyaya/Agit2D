/// @description  OnGround();

return place_meeting(x, y + 1, objSolid) || (place_meeting(x, y + 1, objJumpThru ) && !place_meeting(x, y, objJumpThru));