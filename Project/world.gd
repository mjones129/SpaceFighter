extends Node2D


# Declare member variables here. Examples:
# var a = 2
var enemy = preload("res://Enemy.tscn")
var enemySpawnPoint = Vector2(123,-100)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass


func _on_Timer_timeout():
	var ENEMY = enemy.instance()
	ENEMY.position.x = rand_range(0, 250)
	ENEMY.position.y = rand_range(-50, -100)
	add_child(ENEMY)

