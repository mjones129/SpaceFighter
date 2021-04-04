extends Area2D

var velocity = Vector2(0,-300)

func _process(delta):
	velocity * delta
	position += velocity * delta
	
