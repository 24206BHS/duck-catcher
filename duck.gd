extends Area2D

var acceleration = 0.75
var velocity = 1.25
var rotation_velocity = randf_range(-5.0, 5.0)

func _process(delta: float) -> void:
	velocity += acceleration * delta
	position.y += velocity
	rotation += rotation_velocity * delta

func _on_area_entered(_area: Area2D) -> void:
	queue_free() #When collided with player or boundary, remove duck from scene
