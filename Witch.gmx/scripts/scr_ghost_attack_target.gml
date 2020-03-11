if (instance_exists(target) && !cooldown && x>target.x-spd && x<target.x+spd && y>target.y-spd && y<target.y+spd)
{
    target.knock = true;
    target.knock_x = +dcos(direction)*global.rom_width/(128*1.5); //target.knock_x = +dcos(direction)*spd*2;
    target.knock_y = -dsin(direction)*global.rom_width/(128*1.5); //target.knock_y = -dsin(direction)*spd*2;
    target.alarm[1] = 30;
    target.hp -= argument0;

    speed = 0;
    idle = true;
    cooldown = true;
    alarm[2] = 60;
    
    scr_play(snd_ghost_hit, false);
}
