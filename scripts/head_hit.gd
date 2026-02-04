extends Area2D
@onready var green_slime: Area2D = $".."



func _on_body_entered(body: Node2D) -> void:
	print("I died")
	green_slime.queue_free()
