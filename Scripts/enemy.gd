extends Node2D

const SPEED = 60

var direction = 1 
@onready var ray_cast_2d_right_bottom = $RayCast2D_RightBottom
@onready var ray_cast_2d_left_bottom = $RayCast2D_LeftBottom

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_2d_right_bottom.is_colliding():
		direction = -1
	if ray_cast_2d_left_bottom.is_colliding():
		direction = 1
	
	
	position.x += direction * SPEED * delta
	
