extends Node3D

var item_name = "Tankard"
var icon : Texture2D = preload("res://Barrel.png")

func pickup(player):
	player.add_to_hotbar(self)
	queue_free()
