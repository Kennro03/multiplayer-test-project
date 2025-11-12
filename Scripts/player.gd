extends CharacterBody2D
const gravity : float = 9.81

@export var speed : float = 150.0
@export var jump_power : float = 200.0

var username : String

func _ready() -> void:
	print("Player " + str(self) + " Ready.")


func _physics_process(delta: float) -> void:
	#velocity.y += delta * gravity * 20
	velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x = speed
	if Input.is_action_pressed("left"):
		velocity.x = -speed
	if Input.is_action_pressed("down"):
		velocity.y = speed
	if Input.is_action_pressed("up"):
		velocity.y = -speed
	
	
	
	move_and_slide()
