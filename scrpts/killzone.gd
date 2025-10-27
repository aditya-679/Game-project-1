extends Area2D

@onready var timer: Timer = $Timer

@warning_ignore("unused_parameter")
func _on_body_entered(body) -> void:
	body.get_node("CollisionShape2D").queue_free()
	print("You Died ")
	Engine.time_scale = 0.5
	timer.start()
	
	


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
