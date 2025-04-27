extends RefCounted
class_name Distribution

func get_reasonable_bottom_value():
	push_error("Invalid distribution type")
	return 0

func get_reasonable_top_value():
	push_error("Invalid distribution type")
	return 0

func random_value():
	push_error("Invalid distribution type")
	return 0
	
