// Handle gravity
if (!onGround) {
	// Fall normally
	vy = Approach(vy, vyMax, gravNorm);
}

var tempFric = 0;

// Apply the correct form of acceleration and friction
if (onGround) {  
	tempFric  = groundFric;
} else {
	tempFric  = airFric;
}


if (vx > 0)
	vx = Approach(vx, 0, tempFric);
   
if (vx < 0)
	vx = Approach(vx, 0, tempFric);