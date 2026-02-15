

//controls

input = rollback_get_input();

up = input.(ord("W"));
down = input.(ord("S"));
left = input.(ord("A"));
right = input.(ord("D"));



//left acceleration
if (left)
{
	h_vel -= move_speed;	
}

//left deceleration
if (!left && h_vel < 0)
{
	h_vel += move_speed;	
}



//right acelleration
if (right)
{
	h_vel += move_speed;	
}

if (!right && h_vel > 0)
{
	h_vel -= move_speed;	
}



//up acceleration
if (up)
{
	v_vel -= move_speed;
}

//up decelleration
if (!up && v_vel < 0)
{
	v_vel += move_speed;	
}

//down acceleration
if (down)
{
	v_vel += move_speed;	
}

if (!down && v_vel > 0)
{
	v_vel -= move_speed;	
}








//correct max velocity
if (h_vel > 0 && h_vel > max_vel)
{
	h_vel = max_vel;	
}

if (h_vel < 0 && h_vel < max_vel * -1)
{
	h_vel = max_vel * -1;	
}

if (v_vel > 0 && v_vel > max_vel)
{
	v_vel = max_vel;	
}

if (v_vel < 0 && v_vel < max_vel * -1)
{
	v_vel = max_vel * -1;	
}




x += h_vel;
y += v_vel;



