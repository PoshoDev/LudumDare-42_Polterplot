if (instance_exists(target) && carrying && !cooldown && x>target.x-spd && x<target.x+spd && y>target.y-spd && y<target.y+spd)
{
    hp = 0;
    speed = 0;
    
    target.holding = true;
    instance_create(target.x, target.y, obj_furball);
    with picking instance_destroy();
    picking = -1;
    
    target = noone;

}
