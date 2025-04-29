extends KinematicBody2D

export var speed := 200
export var jump_force := -400
export var gravity := 800

var velocity := Vector2.ZERO

func _physics_process(delta):
	
	velocity.x = 0
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
			velocity.x -= speed
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y = jump_force
	
	velocity.y += gravity * delta
	
	velocity = move_and_slide(velocity, Vector2.UP)

func reset_velocity():
	velocity = Vector2.ZERO
