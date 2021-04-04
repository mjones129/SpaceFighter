extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

onready var BULLET = preload("res://Bullet.tscn")


func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	
	if Input.is_action_just_pressed("ui_select"):
		var bullet = BULLET.instance()
		get_node("/root/world").add_child(bullet)
		bullet.global_position = $Position2D.global_position
		
	
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
