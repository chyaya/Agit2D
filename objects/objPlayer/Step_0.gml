/// @description  Movement

// Input //////////////////////////////////////////////////////////////////////

var tempAccel, tempFric;
var canStick = false;

// Movement ///////////////////////////////////////////////////////////////////

// Apply the correct form of acceleration and friction
if (onGround) {  
	tempAccel = groundAccel;
	tempFric  = groundFric;
} else {
	tempAccel = airAccel;
	tempFric  = airFric;
}

// Reset wall cling
if ((!cRight && !cLeft) || onGround) {
	canStick = true;
	sticking = false;
}   

// Cling to wall
if (((m_DirX > 0 && cLeft) || (m_DirX < 0 && cRight)) && canStick && !onGround) {
	alarm[0] = clingTime;
	sticking = true; 
	canStick = false;       
}

// Handle gravity
if (!onGround) {
	if ((cLeft || cRight) && vy >= 0) {
	    // Wall slide
	    vy = Approach(vy, vyMax, gravSlide);
	} else {
	    // Fall normally
	    vy = Approach(vy, vyMax, gravNorm);
	}
}

if (state != ROLL) {
// Left 
if (m_DirX < 0 && !sticking) {
	facing = -1;
	state  = RUN;
    
	// Apply acceleration left
	if (vx > 0)
	    vx = Approach(vx, 0, tempFric);   
	vx = Approach(vx, -vxMax, tempAccel);
// Right
} else if (m_DirX > 0 && !sticking) {
	facing = 1;
	state  = RUN;
    
	// Apply acceleration right
	if (vx < 0)
	    vx = Approach(vx, 0, tempFric);   
	vx = Approach(vx, vxMax, tempAccel);
}
}

// Friction
if (m_DirX == 0) {
	vx = Approach(vx, 0, tempFric);
    
	if (state != ROLL)
	    state = IDLE;
} 
       
// Wall jump
if (kJump && cLeft && !onGround) {
	yscale = 1.33;
	xscale = 0.67;
            
	if (m_DirX < 0) {
	    vy = -jumpHeight * 1.2;
	    vx =  jumpHeight * .66;
	} else {
	    vy = -jumpHeight * 1.1;
	    vx =  vxMax; 
	}  
}

if (kJump && cRight && !onGround) {
	yscale = 1.33;
	xscale = 0.67;
    
	if (m_DirX > 0) {
	    vy = -jumpHeight * 1.2;
	    vx = -jumpHeight * .66;
	} else {
	    vy = -jumpHeight * 1.1;
	    vx = -vxMax;
	}  
}
 
// Jump 
if (kJump) { 
	if (onGround) {
	    // Fall thru platform
	    if (m_DirY > 0) {
	        if (place_meeting(x, y + 1, objJumpThru))
	            ++y;
	    } else {
	        vy = -jumpHeight;
            
	        yscale = 1.33;
	        xscale = 0.67;
	    }
	}
// Variable jumping
} else if (kJumpRelease) { 
	if (vy < 0)
	    vy *= 0.25;
}

// Jump state
if (!onGround)
{
	state = JUMP;
}
// Run particles
else if (random(100) > 85 && abs(vx) > 0.5)
{
    instance_create_layer(x, y + 8, "Particles", objParticlePlayer);
	
	var rand = random(4);
	var sndList = [sndFootstep1, sndFootstep2, sndFootstep3, sndFootstep4];
	audio_play_sound(sndList[rand], 1, false);
}

// Swap facing during wall slide
if (cRight && !onGround)
	facing = -1;
else if (cLeft && !onGround)
	facing = 1;

// Roll
if (onGround && !m_Attacking) {
	if (state != ROLL) {
	    if (kRollL) {
	        facing = -1;
            
	        image_index  = 0;
	        image_speed  = 0.5;
	        sprite_index = sPlayerRoll;
            
	        state = ROLL;
	    } else if (kRollR) {
	        facing = 1;
            
	        image_index  = 0;
	        image_speed  = 0.5;
	        sprite_index = sPlayerRoll;
            
	        state = ROLL;
	    }
	}
}

// Roll speed
if (state == ROLL) {
	vx = facing * 6;
    
	// Break out of roll
	if (!onGround || (cLeft || cRight)) {
	    state = IDLE;
	    if (!m_Attacking)
	        alarm[1] = -1;
	}
}
    
// Action
if (!kBlock && kAction) {
	if (!m_Attacking) {
		
		
		//CreateBlock();
		
	    Pawn_Attack(self, room_speed*0.2);
		
	}
}

blocking = kBlock;

/* */
/// Squash + stretch

xscale = Approach(xscale, 1, 0.05);
yscale = Approach(yscale, 1, 0.05);

/* */
/// Hitbox


//with (oPlayerAtkBox)
//    instance_destroy();

/*
// Dash out of roll
if (sprite_index == sPlayerRollSlash) {    
	with (instance_create(x, y, oPlayerAtkBox)) {
	    bboxleft  = min(other.x + (5 * other.facing), other.x + (24 * other.facing));
	    bboxright = max(other.x + (5 * other.facing), other.x + (24 * other.facing));
        
	    bboxtop    = other.y - 1;
	    bboxbottom = other.y + 8; 
	}
}
    
// Jab
if (sprite_index == sPlayerJab && round(image_index) > 0) {    
	with (instance_create(x, y, oPlayerAtkBox)) {
	    bboxleft  = min(other.x + (5 * other.facing), other.x + (30 * other.facing));
	    bboxright = max(other.x + (5 * other.facing), other.x + (30 * other.facing));
        
	    bboxtop    = other.y - 1;
	    bboxbottom = other.y + 8; 
	}
}
*/

/* */
/*  */