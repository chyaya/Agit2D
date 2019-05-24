var onGroundPrev = onGround;

event_inherited();

if (onGround && !onGroundPrev) {
    for (var i = 0; i < 4; ++i) {
        instance_create_layer(x + random_range(-8, 8), y + 8 + random_range(-2, 2), "Particles", objParticlePlayer);
    }
    
	audio_play_sound(sndFootstep1, 1, false);
	
    xscale = 1.33;
    yscale = 0.67;
}

