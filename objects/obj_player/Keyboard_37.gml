/// @description Steering left
if (steering < 0.0) {
	steering = 0.0;
}
if (steering < max_steering) {
	steering += steering_inc;
	if (steering > max_steering) {
		steering = max_steering;
	}
}
