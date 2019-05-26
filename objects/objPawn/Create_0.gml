//tileMapId = layer_tilemap_get_id("Tiles");

jumped = false;
landed = false;

platformTarget = false;
wallTarget     = false;

push = false;

// Velocity
vx = 0;
vy = 0;

// Used for sub-pixel movement
cx = 0;
cy = 0;

onGround = OnGround();
cLeft    = place_meeting(x - 1, y, objSolid);
cRight   = place_meeting(x + 1, y, objSolid);

Pawn_Inven_Init(30);