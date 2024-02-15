extends Node3D
func _process(_delta):
	$middle.rotate_x(PI/480)
	$middle.rotate_y(PI/480)
	$middle.rotate_z(-PI/480)
