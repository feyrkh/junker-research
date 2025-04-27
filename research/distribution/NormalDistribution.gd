extends Distribution
class_name NormalDistribution

var mean
var stddev

func _init(_mean:float, _stddev:float):
	mean = _mean
	stddev = _stddev

func get_reasonable_bottom_value():
	return mean - 3 * stddev

func get_reasonable_top_value():
	return mean + 3 * stddev

func random_value():
	return randfn(mean, stddev)
