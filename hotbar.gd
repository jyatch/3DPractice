extends Control

@onready var slots = $HBoxContainer.get_children()

var reg_color = Color(1, 1, 1)
var highlight_color = Color(1, 1, 0.5)

# allows the player to highlight hotbar slots corresponding to keyboard inputs
func select_slot(index: int):
	# sanity check
	if index >= 0 and index < slots.size():
		# if the slot is not selected
		if slots[index].modulate == reg_color:
			#reset other slots
			for s in slots:
				s.modulate = reg_color
			#highlight selected slot
			slots[index].modulate = highlight_color
		# if the slot is already selected
		else:
			slots[index].modulate = reg_color

# adds an item to the hotbar of the player
func add_to_hotbar(target):
	for s in slots:
		if s.occupied == false:
			s.set_item(target)
			return
	
