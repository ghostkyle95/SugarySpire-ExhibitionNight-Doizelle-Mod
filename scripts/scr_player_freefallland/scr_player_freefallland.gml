function state_player_freefallland()
{
    scr_conveyorBeltKinematics();
    machTwo = 0;
    jumpAnim = true;
    landAnim = false;
    crouchAnim = false;
    movespeed = 0;
    slamHurt = (sprite_index == spr_groundPoundland) ? 180 : 0;
    alarm[4] = 14;
    vsp = 0;
    hsp = 0;
	
	if (sprite_index == spr_diveBombland)
	{
		instance_create(x, y, obj_bombExplosionPlayer)
		state = States.jump;
		grounded = 0;
		image_index = 0;
		image_speed = 0.35;
		sprite_index = spr_player_PZ_geyser;
		vsp = -11;
        jumpAnim = false;
	}
    
    if (sprite_animation_end())
    {
        state = States.normal;
        image_index = 0;
        
        if (slamHurt)
            sprite_index = spr_groundPoundEnd_intro;
        else
            sprite_index = spr_idle;
        
        freeFallSmash = 0;
    }
    
    image_speed = 0.35;
}

