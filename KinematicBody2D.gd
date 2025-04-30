extends KinematicBody2D

export var speed := 200
export var jump_force := 400
export var gravity := 800


var velocity  := Vector2.ZERO

func _physics_process(delta):
	velocity.x = 0
	if Input.is_action_pressed 

















