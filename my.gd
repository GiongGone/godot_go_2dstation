extends Node2D
var trunk = 0
func _ready():
	$SubViewport/wand/d_second/sink/middle.rotate_y(PI/1 + (-PI/1))
	$SubViewport/wand/d_second/sink2/middle.rotate_y(PI/3.5)
	$SubViewport/wand/d_second/sink3/middle.rotate_y(PI/3.5 * 2)
	$SubViewport/wand/d_second/sink4/middle.rotate_y(PI/3.5 * 3)
	$SubViewport/wand/d_second/sink5/middle.rotate_y(PI/3.5 * 4)
	$SubViewport/wand/d_second/sink6/middle.rotate_y(PI/3.5 * 5)
	$SubViewport/wand/d_second/sink7/middle.rotate_y(PI/3.5 * 6)
func _process(_delta):
	$SubViewport/wand/d_second/sink/middle.rotate_y(PI/480)
	$SubViewport/wand/d_second/sink2/middle.rotate_y(PI/480)
	$SubViewport/wand/d_second/sink3/middle.rotate_y(PI/480)
	$SubViewport/wand/d_second/sink4/middle.rotate_y(PI/480)
	$SubViewport/wand/d_second/sink5/middle.rotate_y(PI/480)
	$SubViewport/wand/d_second/sink6/middle.rotate_y(PI/480)
	$SubViewport/wand/d_second/sink7/middle.rotate_y(PI/480)
	$SubViewport/wand/d_mace.rotate_x(PI/1500) # This is supposed to stimulate the reflections; if done correctly;
	if trunk > 0:
		$SubViewport/wand/d_second/sink/middle.rotate_y(-PI/180)
		$SubViewport/wand/d_second/sink2/middle.rotate_y(-PI/180)
		$SubViewport/wand/d_second/sink3/middle.rotate_y(-PI/180)
		$SubViewport/wand/d_second/sink4/middle.rotate_y(-PI/180)
		$SubViewport/wand/d_second/sink5/middle.rotate_y(-PI/180)
		$SubViewport/wand/d_second/sink6/middle.rotate_y(-PI/180)
		$SubViewport/wand/d_second/sink7/middle.rotate_y(-PI/180)
		$SubViewport/wand/d_second/sink/middle.rotate_y(((-PI/3)-(PI/3.5))/60) # Staying
		$SubViewport/wand/d_second/sink2/middle.rotate_y((PI/3.5)/60) # Moving back 51.2
		$SubViewport/wand/d_second/sink3/middle.rotate_y(((PI/3)-(PI/3.5))/30) # Moving back 8.1 * 2
		$SubViewport/wand/d_second/sink4/middle.rotate_y(((PI/3)-(PI/3.5))/20) # Moving Back 8.1 * 3, maybe;
		$SubViewport/wand/d_second/sink5/middle.rotate_y(((PI/3)-(PI/3.5))/15) # Moving back 8.1 * 4
		$SubViewport/wand/d_second/sink6/middle.rotate_y(((PI/3)-(PI/3.5))/12) # Moving back 8.1 * 5
		$SubViewport/wand/d_second/sink7/middle.rotate_y(((PI/3)-(PI/3.5))/10) # Moving back 8.1 * 6
		trunk -= 1
func _on_timer_timeout():
	trunk += 60
	#passed or not; $Timer.stop()
