/// @description Insert description here
// You can write your code in this editor

if(state != eState.Landed)
{
	other.audience_happiness-=10;
	
	var _splat_sound = audio_play_sound(snd_projectile_impact, 1, false, 0.2, 0, random_range(0.7, 0.8));
	var _hit_sound = audio_play_sound(choose(sfx_hero_hit_01, sfx_hero_hit_02, sfx_hero_hit_03), 1, false, 0.1);

	state = eState.Landed;
	sprite_index = sImpact;
	image_index = 0;
	landedcount = 0;

	if(other.audience_happiness<0 && !other.is_dead)
	{
		other.is_dead = true;
		
		CreateTransition(PostGameRoom);
		var _death_sound = audio_play_sound(sfx_hero_death_edited, 1, false, 1.0);
		
		with(oJokeHandler)
		{
			instance_destroy(self);
		}


		with(oPunchline)
		{
			instance_destroy(self);
		}
	}
}

// instance_destroy();
