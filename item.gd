extends Node3D

class_name item

var item_name = "GenericItem"
var icon_texture : Texture

# makes the item invisible and disables the CSGCombiner3D
func pickup():
	queue_free()
