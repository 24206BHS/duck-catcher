extends Area2D

var velocity = 0
var speed = 500
signal Score
var ONE = 1
var ZERO = 0

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_left"): #Gives player leftward direction
		velocity -= ONE
	elif Input.is_action_just_released("ui_left"): #Cancels the leftward movement when left key is released
		velocity += ONE
	if Input.is_action_just_pressed("ui_right"):
		velocity += ONE
	elif Input.is_action_just_released("ui_right"):
		velocity -= ONE
	if 0<(position.x+velocity*speed*delta) and (position.x+velocity*speed*delta)<1152: #Moves player only if the movement will stay within the screen
		position.x += velocity*speed*delta

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Duck"):
		Score.emit()
