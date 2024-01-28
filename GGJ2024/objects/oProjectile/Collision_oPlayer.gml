/// @description Insert description here
// You can write your code in this editor

if(state != eState.Landed)
{
	health-=10;
	
	var _splat_sound = audio_play_sound(snd_projectile_impact, 1, false, 0.5, 0, random_range(0.7, 1.0));

	state = eState.Landed;
	sprite_index = sImpact;
	image_index = 0;
	landedcount = 0;

	if(health<0 && !oPlayer.is_dead)
	{
		oPlayer.is_dead = true;
		
		CreateTransition(PostGameRoom);
		var _death_sound = audio_play_sound(sfx_hero_die_fall_01, 1, false, 1.0);
	}
}

// instance_destroy();
