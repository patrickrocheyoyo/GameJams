/// @description collide w/ player

//Play player-pit SFX
var _PlayerWinSound = choose(snd_Player_Win_1, snd_Player_Win_2);
audio_play_sound(_PlayerWinSound, 0, 0);


room_goto_next()