extends Node2D

@onready var duck_prefab = preload("res://duck.tscn")

var score = 0
var ONE = 1

func _on_duck_spawn_timer_timeout() -> void:
	#spawn a duck
	randomize()
	var duck = duck_prefab.instantiate()
	duck.position = Vector2(randi_range(10,1024), -50)
	duck.rotation = randf_range(0,2*PI)
	add_child(duck)

func _on_player_score() -> void:
	score += ONE
	$UI/Label.text = "Score: "+str(score)
