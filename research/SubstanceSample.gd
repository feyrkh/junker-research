extends RefCounted
class_name SubstanceSample

var id:int
var tag:String
var substance:Substance
var volume:float
var mana_content:float:
	get(): return volume * substance.mana_density
var color:Color:
	get(): return substance.color
var mana_density:float:
	get(): return substance.mana_density



func _init(_substance:Substance, _volume:float):
	substance = _substance
	volume = _volume

static func new_sample(_substance:Substance) -> SubstanceSample:
	var retval = SubstanceSample.new(_substance, randfn(_substance.chunk_volume_mean, _substance.chunk_volume_std_dev))
	return retval
