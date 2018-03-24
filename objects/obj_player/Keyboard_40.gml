/// @description Braking

if (speed > 0.0) {
	speed -= braking_speed;
	if (speed < 0.0) {
		speed = 0.0;
	}
}
