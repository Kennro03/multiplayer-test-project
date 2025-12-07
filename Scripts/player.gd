extends CharacterBody2D
const gravity : float = 9.81
const speed_multiplier : float = 800.0

@export var speed : float = 10.0
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
		velocity.x = speed * speed_multiplier * _delta
	if Input.is_action_pressed("left"):
		velocity.x = -speed * speed_multiplier * _delta
	if Input.is_action_pressed("down"):
		velocity.y = speed * speed_multiplier * _delta
	if Input.is_action_pressed("up"):
		velocity.y = -speed * speed_multiplier * _delta
	
	var mouse_position : Vector2 = get_global_mouse_position()
	$Sprite2D.look_at(mouse_position)
	$Sprite2D.global_rotation += deg_to_rad(90)
	
	move_and_slide()
