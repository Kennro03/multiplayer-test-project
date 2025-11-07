extends CharacterBody2D

@export var speed : float = 10.0
@export var gravity : float = 3.0

var username : String

func _ready() -> void:
	print("Player " + str(self) + " Ready.")

func _process(delta: float) -> void:
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("right"):
		print("RIGHT")
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	

func _physics_process(delta: float) -> void:
	pass
