if ((!argument1 && !global.mute_sfx) || (argument1 && !global.mute_music))
    audio_play_sound(argument0, irandom_range(0,99), argument1);
