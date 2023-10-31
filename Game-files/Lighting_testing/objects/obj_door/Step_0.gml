polygon = polygon_from_instance(id);

if (!instance_place(x, y, oLock)) && !instance_place(x, y, oLock_blue){
	if (door_opened) {
		var target_angle = door_angle - 90;
		image_angle = lerp(image_angle, target_angle, 0.05)
	}
}
