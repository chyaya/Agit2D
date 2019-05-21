tileMapId = layer_tilemap_get_id("Tiles");

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
cLeft    = IsBlocked(-1, 0);
cRight   = IsBlocked(1, 0);

