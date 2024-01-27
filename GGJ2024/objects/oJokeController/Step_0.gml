/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(oJokeHandler))
	frame++;

if(frame==jokes[curjoke].time)
{

	if(jokes[curjoke].jk == "SpawnTrapdoor")
	{
		with(oTrapdoor)
		{
			image_index = 1;
		}
		
	}
	else
	{

		var jk= instance_create_layer(0,0,"Instances_1",oJokeHandler);
		jk.joke = jokes[curjoke].jk;
	
	
		for(var i=0;i<array_length(jokes[curjoke].punchlines);i++)
		{
			/* Build a list of all stage area objects and their total accumulated area. */
			
			var stage_areas = [];
			var total_stage_area = 0;
			
			for (var j = 0; j < instance_number(oStageArea); ++j)
			{
				var sa = instance_find(oStageArea,j)
				var sa_area = sa.sprite_width * sa.sprite_height;
				
				array_push(stage_areas, { stage: sa, area: sa_area });
				total_stage_area += sa_area;
			}
			
			/* Pick a random spot within those areas which isn't too close to:
			 *
			 * A) The player
			 * B) Another punchline
			 * C) A projectile's target spot
			*/
			
			var PLAYER_EXCLUSION_RADIUS = 256;
			var PUNCHLINE_EXCLUSION_RADIUS = 256;
			var PROJECTILE_EXCLUSION_RADIUS = 256;
			
			var pu_x = undefined;
			var pu_y = undefined;
			
			while(is_undefined(pu_x))
			{
				var pu_orig_i = irandom(total_stage_area - 1);
				var sa = undefined;
				
				for(var j = 0;; ++j)
				{
					if(pu_orig_i < stage_areas[@j].area)
					{
						sa = stage_areas[@j].stage;
						break;
					}
					
					pu_orig_i -= stage_areas[@j].area;
				}
				
				pu_x = sa.x + (pu_orig_i % sa.sprite_width);
				pu_y = sa.y + floor(pu_orig_i / sa.sprite_width);
				
				var collision = false;
				
				if(point_distance(pu_x, pu_y, global.Player.x, global.Player.y) < PLAYER_EXCLUSION_RADIUS)
				{
					collision = true;
				}
				
				for(var j = 0; j < instance_number(oPunchline) && !collision; ++j)
				{
					var other_punchline = instance_find(oPunchline, j);
					
					if(point_distance(pu_x, pu_y, other_punchline.x, other_punchline.y) < PUNCHLINE_EXCLUSION_RADIUS)
					{
						collision = true;
					}
				}
				
				for(var j = 0; j < instance_number(oProjectile) && !collision; ++j)
				{
					var projectile = instance_find(oProjectile, j);
					
					if(point_distance(pu_x, pu_y, projectile.xtarget, projectile.ytarget) < PROJECTILE_EXCLUSION_RADIUS)
					{
						collision = true;
					}
				}
				
				if(collision)
				{
					pu_x = undefined;
					pu_y = undefined;
				}
			}
		
			var pl = instance_create_layer(pu_x,pu_y,"Instances_1",oPunchline);
			pl.joke = jokes[curjoke].jk;
			pl.punchline = jokes[curjoke].punchlines[i];
			pl.correct = i==0?1:0;
		
		}
	
	}
	frame = 0;
	curjoke++;
}























