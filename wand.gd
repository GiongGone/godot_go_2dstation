extends Node3D
# All the rotation is passed to Basis; if it's done correctly
func _ready():
	$landsink.start() #There's supposed to be code surrounding this;
	$lasub.start() #There's supposed to be code surrounding this as well;
func _process(_delta):
	$d_mace.rotate_object_local(Vector3(1.0, 0.0, 0.0), PI/120) # This is the game delta
func _on_lasub_timeout():
	$d_mace.rotate_object_local(Vector3(0.0, 0.0, 1.0), PI/6)
func _on_landsink_timeout(): # This is the problem timer, usually causes unwanted behaviour; a.k.a. pi
	$d_mace.rotate_object_local(Vector3(0.0, 0.0, 1.0), PI/ (sqrt(360) / 4))
