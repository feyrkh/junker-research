extends RefCounted

static var taken_ids:Dictionary[String, Object] = {}
const CHAR = 'BCDFGHJKLMNPQRSTVWXYZ'
const CHAR_LEN = len(CHAR)

var prefix:String
var char_count:int
var num_count:int

func _init(_prefix:String, _char_count:int, _num_count:int):
	prefix = _prefix
	char_count = _char_count
	num_count = _num_count

func get_reasonable_bottom_value():
	return prefix+('A'.repeat(char_count))+('0'.repeat(num_count))

func get_reasonable_top_value():
	return prefix+('Z'.repeat(char_count))+('9'.repeat(num_count))

func random_value(depth=0):
	if depth > 20:
		# We tried 20 times and couldn't find an unused string, return something crazy
		return prefix+'ERROR-'+str(randi())+'-'+str(randi())
	var s = prefix
	for i in range(char_count):
		s += CHAR[randi()%CHAR_LEN]
	for i in range(num_count):
		s += str(randi()%10)
	if s in taken_ids:
		return random_value(depth+1) # don't repeat random strings
