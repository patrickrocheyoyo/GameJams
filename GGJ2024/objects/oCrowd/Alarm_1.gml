/// @description Insert description here
// You can write your code in this editor

var ACCURACY_TOLERANCE = 64;
var EXCLUSION_ZONE = 128;

var px = global.Player.x;
var py = global.Player.y;

var offx = px-x;
var offy = py-y;

px += offx/5;
py += offy/5;

/* Pick a target spot near the player, where we will aim the projectile to land. */
var target_x = px + random_range(-ACCURACY_TOLERANCE, ACCURACY_TOLERANCE);
var target_y = py + random_range(-ACCURACY_TOLERANCE, ACCURACY_TOLERANCE);

var dx = target_x - x;
var dy = target_y - y;

var len = dx*dx+dy*dy;

var punchline_near_player = (collision_circle(px, py, EXCLUSION_ZONE, oPunchline, false, false) != noone);

if(punchline_near_player)
{
	/* If there is a punchline close to the player, set the target co-ordinates out of bounds
	 * so the projectile will sail on past rather than potentially landing on the punchline
	 * and making it inaccessible.
	*/
	
	target_x = -9999;
	target_y = -9999;
}

if(len>0)
{
	len = sqrt(len);
	
	var projectiles = [
		oProjectileBanana,
		oProjectileBanana,
		oProjectileBanana,
		oProjectileBanana,
		oProjectileBanana,
		oProjectileBanana,
		oProjectileTomato,
		oProjectileTomato,
		oProjectileTomato,
		oProjectileTomato,
		oProjectileTomato,
		oProjectileTomato,
		oProjectileTomato,
		oProjectileSnowglobe,
		oProjectileBottle,
		oProjectileBrick,
		oProjectileCrab,
		oProjectileAxe,
		oProjectileFish,
		oProjectileGlass,
		oProjectileHighheel,
		oProjectileKnife,
		oProjectileShoe,
		oProjectileSkull,
	];
	
	var pclass = projectiles[@ irandom(array_length(projectiles) - 1)];
	
	var inst = instance_create_layer(x,y,"Projectiles",pclass, {
		xtarget: target_x,
		ytarget: target_y,
	});

	inst.xvel =10* dx/len;
	inst.yvel =10* dy/len;

	
}

alarm[1] = global.Player.audience_happiness*5 +irandom(1024);
