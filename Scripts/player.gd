extends CharacterBody2D
const gravity : float = 9.81

@export var speed : float = 5000.0
@export var jump_power : float = 200.0

var username : String

func _ready() -> void:
	print("Player " + str(self) + " Ready.")

func _process(_delta: float) -> void:
	
	pass

func _physics_process(_delta: float) -> void:
	#velocity.y += delta * gravity * 20
	velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x = speed * _delta
	if Input.is_action_pressed("left"):
		velocity.x = -speed * _delta
	if Input.is_action_pressed("down"):
		velocity.y = speed * _delta
	if Input.is_action_pressed("up"):
		velocity.y = -speed * _delta
	
	var mouse_position : Vector2 = get_global_mouse_position()
	
	
	move_and_slide()
