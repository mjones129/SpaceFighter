extends Area2D

var velocity = Vector2(0,-300)

func _ready():
	pass
	
func _process(delta):
	velocity * delta
	position += velocity * delta
	


func _on_BulletTime_timeout():
	queue_free()


func _on_Bullet_area_entered(area):
	if area.get_name() == "Enemy":
		area.queue_free()
		$Sprite.visible = false
		velocity = Vector2(0, 0)
		$AnimatedSprite.visible = true
		$AnimatedSprite.play()


func _on_AnimatedSprite_animation_finished():
	queue_free()
