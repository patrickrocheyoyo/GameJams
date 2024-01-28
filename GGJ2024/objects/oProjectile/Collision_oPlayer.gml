/// @description Insert description here
// You can write your code in this editor

if(state != eState.Landed)
{
	health-=10;
	
	var _splat_sound = audio_play_sound(snd_projectile_impact, 1, false, 0.2, 0, random_range(0.7, 0.8));
	var _hit_sound = audio_play_sound(choose(sfx_hero_hit_01, sfx_hero_hit_02, sfx_hero_hit_03), 1, false, 0.1);

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
