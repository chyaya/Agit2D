onGround = OnGround();

cLeft  = IsBlocked(-1, 0); 
cRight = IsBlocked(+1, 0);

if (cLeft) 
    wallTarget = true;

if (cRight) 
    wallTarget = true;


