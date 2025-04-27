extends Distribution
class_name ColorDistribution

func get_reasonable_bottom_value():
	return Color.BLACK

func get_reasonable_top_value():
	return Color.WHITE

func random_value():
	return Color(randf(), randf(), randf())
