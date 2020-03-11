if (idle && !cooldown)
        {
            var n = noone;
            var d, t;
            with obj_ghost
                if (owner != other.owner)
                {
                    t = point_distance(x, y, other.x, other.y);
                    if (n == noone || t < d)
                    {
                        d = t;
                        n = id;
                    }
                }
            
            if (n != noone)
            {
                target=n;
                idle = false;    
                
                //spd *= 1.2;
            }
        }
        else if (instance_exists(target) && !knock && !cooldown)
        {
            move_towards_point(target.x, target.y, spd);
        
            if (anim == 0)
                anim = 1;
        }
        else
            speed = 0;
