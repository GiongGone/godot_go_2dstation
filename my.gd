extends Node2D
var trunk = 0
func _process(_delta):
	$SubViewport/wand/d_mace.rotate_object_local(Vector3(1.0, 0.0, 0.0), PI/540) # This is supposed to stimulate the reflections; if done correctly;
	if trunk > 0:
		$SubViewport/wand/d_second.rotate_object_local(Vector3(0.0, 1.0, 0.0), PI/360)
		trunk -= 1
	if trunk == 60: # Never happens at delta
		print(trunk)
func _on_timer_timeout():
	trunk += 60
