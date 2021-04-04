extends Node2D


# Declare member variables here. Examples:
# var a = 2
var enemy = preload("res://Enemy.tscn")
var enemySpawnPoint = Vector2(123,-100)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Timer.time_left < 0:
		var ENEMY = enemy.instance()
		get_node(".").add_child(ENEMY)
		ENEMY.global_position = enemySpawnPoint
	else:
		pass
