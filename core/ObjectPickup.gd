extends Area2D

var object : PickableObject

func pickup() -> void:
	if object:
		object = null
	else:
		var objects = get_overlapping_areas()
		if objects:
			object = objects[0]


func _physics_process(delta:float) -> void:
	if object:
		object.global_position = global_position