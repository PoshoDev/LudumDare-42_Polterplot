if (idle && !cooldown)
{        
    var n = noone;
    var d, t;
    
    with obj_ghost
    {            
        if ((other.owner==0 && owner==1 && y>global.rom_center_y)
        || (other.owner==1 && owner==0 && y<global.rom_center_y))            
        {
            t = point_distance(x, y, other.x, other.y);
            
            if (n == noone || t < d)
            {
                d = t;
                n = id;
            }
        }
    }
            
    if (n != noone)
    {
        target = n;
        idle = false;
        speed = spd*0.8   
    }
}
else if ((instance_exists(target) && !knock && !cooldown)
        && ((owner==0 && target.y>global.rom_center_y) || (owner==1 && target.y<global.rom_center_y)))
{
    move_towards_point(target.x, target.y, spd);
    
    if (anim == 0)
        anim = 1;
}
else
{
    speed = 0;
    //alarm[0] = 15;
}
