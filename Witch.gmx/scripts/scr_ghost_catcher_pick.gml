if (instance_exists(target) && !cooldown && x>target.x-spd && x<target.x+spd && y>target.y-spd && y<target.y+spd)
{    
    target.target = self;
    
    if (picking == -1)
        picking = target;
    
    carrying = true;
    
    target = scr_ghost_cacher_findempty();
    
    spd *= 0.75;
}
