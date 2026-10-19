extends Area2D

var acceleration = 0.75
var velocity = 1.25
#var scale_velocity = 0.0
#var colour_velocity = Color()
var rotation_velocity = randf_range(-5.0, 5.0)

#func _ready() -> void:
	#randomize()
	#var scale_velocity = randf_range(0.0, 0.1)
	#randomize()
	#colour_velocity.r = randf_range(0.0, 0.1)
	#randomize()
	#colour_velocity.g = randf_range(0.0, 0.1)
	#randomize()
	#colour_velocity.b = randf_range(0.0, 0.1)

func _process(delta: float) -> void:
	velocity += acceleration * delta
	position.y += velocity
	rotation += rotation_velocity * delta
	#scale.x += scale_velocity
	#modulate += colour_velocity

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Player"):
		queue_free()
