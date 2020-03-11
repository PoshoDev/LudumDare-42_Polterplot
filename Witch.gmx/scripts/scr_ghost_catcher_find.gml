if ((!carrying && idle && !cooldown) /*|| (instance_exists(target) && target.target!=noone)*/)
{        
    var n = noone;
    var d, t;
    
    with obj_furball
    {
        if (owner != other.owner && target == noone)          
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
    }
}
else if (instance_exists(target) && !knock && !cooldown)
{
    move_towards_point(target.x, target.y, spd);
    
    
    if (anim == 0)
        anim = 1;
}



if (!carrying)
{
    bonus = 1;
    frame = 0;
}
else
{
    bonus = 2;
    frame = 2;
}
