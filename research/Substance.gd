extends RefCounted
class_name Substance

static var DISTRIBUTIONS:Dictionary = {
	'color': ColorDistribution.new(),
	'mana_density': NormalDistribution.new(1000, 300)
}

var id:int
var tag:String
var color:Color
var mana_density:float
var chunk_volume_mean:float
var chunk_volume_std_dev:float
