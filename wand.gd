extends Node3D
# All the rotation is passed to Basis; if it's done correctly
var axis_x = Vector3(1, 0, 0) # Or Vector3.RIGHT
var axis_y = Vector3(0, 1, 0) # Or Vector3.UP
var axis_z = Vector3(0, 0, 1) # Or Vector3.ROTATE
var axis_maj = Vector3(1, 0, 1) # Or Vector3.VersusUP
var rotation_amount = PI/540
var rotation_root = PI/sqrt(360)
func _ready():
	$landsink.start() #There's supposed to be code surrounding this;
	$lasub.start() #There's supposed to be code surrounding this as well;
func _process(_delta):
	_luoks() # This is the game delta
	_luuks()
func _looks():
	transform.basis = Basis(axis_z, rotation_amount*90) * transform.basis
	$d_mace.transform = transform.orthonormalized()
func _louks():
	transform.basis = Basis(axis_z, rotation_root/4) * transform.basis
	$d_mace.transform = transform.orthonormalized()
func _luoks():
	transform.basis = Basis(axis_z, rotation_amount) * transform.basis
	$d_mace.transform = transform.orthonormalized()
func _luuks():
	transform.basis = Basis(axis_x, rotation_amount*2.5) * transform.basis
	$d_mace.transform = transform.orthonormalized()
func _on_lasub_timeout():
	_looks()
func _on_landsink_timeout(): # This is the problem timer, usually causes unwanted behaviour; a.k.a. pi
	_louks()
