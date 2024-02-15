extends Node3D
var trunk = 0
func _process(_delta):
	if trunk > 0:
		$SubViewport/wand/d_second/sink/middle.rotate_y(-PI/180)
func _on_timer_timeout():
	trunk += 60
