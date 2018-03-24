/// @description Car control

// Reducimos la velocidad cuando el acelerador y el freno están sueltos
if (!keyboard_check(vk_up) && !keyboard_check(vk_down)) {
	if (speed > 0.0) {
		speed -= speed_dec;
		if (speed < 0.0) {
			speed = 0.0;
		}
	}
}

// Centramos la dirección cuando no se está accionando el volante
if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) {
	if (steering > 0.0) {
		steering -= steering_inc;
		if (steering < 0.0) {
			steering = 0.0;
		}
	} else if (steering < 0.0) {
		steering += steering_inc;
		if (steering > 0.0) {
			steering = 0.0;
		}
	}
}

// Establecemos la dirección del coche
direction += steering;
image_angle += steering;
camera_set_view_angle(view_camera[0], camera_get_view_angle(view_camera[0]) - steering);
