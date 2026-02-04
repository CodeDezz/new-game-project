extends Area2D

@onready var kill_timer : Timer = $KillTimer

func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	body.get_node("CollisionShape2D").queue_free()
	Engine.time_scale = 0.5
	kill_timer.start()



func _on_kill_timer_timeout() -> void:
	Engine.time_scale = 1.0  
	get_tree().reload_current_scene()


func _on_area_2d_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.
