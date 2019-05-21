onGround = OnGround();

cLeft  = place_meeting(x - 1, y, objSolid); 
cRight = place_meeting(x + 1, y, objSolid);

if (cLeft) 
    wallTarget = instance_place(x - 1, y, objSolid);

if (cRight) 
    wallTarget = instance_place(x + 1, y, objSolid);


