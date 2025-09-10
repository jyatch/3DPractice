extends Control

# tracks the state of the slot
var occupied: bool = false

@onready var icon: TextureRect = $TextureRect
@onready var label: Label = $Label
@onready var panel: Panel = $Panel

# adds name and texutre to slot
func set_item(target):
	occupied = true
	icon.texture = target.icon_texture
	label.text = target.item_name
