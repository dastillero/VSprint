/// @description Speed-up
if (speed < max_speed) {
	speed += speed_inc;
	if (speed > max_speed) {
		speed = max_speed;
	}
}
