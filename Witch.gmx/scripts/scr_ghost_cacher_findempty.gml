{    
    var n = noone;
    var d, t;
    
    with obj_pedestal
    {
        if (owner == other.owner && !holding)          
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
        
        //idle = false; 
        scr_play(snd_ghost_catcher_pick, false);  
        return n;
    }
}
