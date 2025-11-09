extends CharacterBody2D
const gravity : float = 9.81

@export var speed : float = 150.0
@export var jump_power : float = 200.0

var username : String

func _ready() -> void:
	velocity = Vector2.ZERO
	print("Player " + str(self) + " Ready.")
	


func _physics_process(delta: float) -> void:
	velocity.y += delta * gravity * 20
	velocity.x = 0.0
	if Input.is_action_pressed("right"):
		velocity.x = speed
	if Input.is_action_pressed("left"):
		velocity.x = -speed
	if Input.is_action_pressed("down"):
		pass
	if is_on_floor() and Input.is_action_pressed("up"):
		velocity.y -= jump_power
	
	
	
	move_and_slide()
