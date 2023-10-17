right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

h_velocity = (right - left) * velocity;
v_velocity = (down - up) * velocity;

x += h_velocity;
y += v_velocity;







