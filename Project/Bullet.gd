extends Area2D

var velocity = Vector2(0,-300)

func _ready():
	pass
	
func _process(delta):
	velocity * delta
	position += velocity * delta
	
	


func _on_BulletTime_timeout():
	queue_free()
