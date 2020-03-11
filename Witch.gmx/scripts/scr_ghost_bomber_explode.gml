if (instance_exists(target) && !cooldown && x>target.x-spd && x<target.x+spd && y>target.y-spd && y<target.y+spd)
{    
    target.able = false;
    target.sprite_index = spr_plot_destroyed;
    if (instance_exists(target.tomb))
        with target.tomb {instance_destroy()}
    target.tomb = -1;
    
    /*tomb = instance_place(x, y, obj_tomb);
    if (instance_exists(tomb))
        with tomb instance_destroy();*/
    
    instance_create(target.x, target.y, obj_explosion);
    
    with self instance_destroy();
}
