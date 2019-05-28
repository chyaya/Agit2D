m_Name = "<NoName>";

m_OutlineColor = c_white;
m_OutlineEnable = false;
m_MultiplyColor = c_white;

jumped = false;
landed = false;

platformTarget = false;

// Velocity
vx = 0;
vy = 0;

// Used for sub-pixel movement
cx = 0;
cy = 0;

groundFric  = 2.00;
airFric     = 0.01;

vyMax       = 10.0;
gravNorm    = 0.50;

onGround = OnGround();