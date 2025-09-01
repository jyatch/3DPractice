extends Control

@onready var slots = $HBoxContainer.get_children()
var selected_slot: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	select_slot(3)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func select_slot(index: int):
	# sanity check
	if index >= 0 and index < slots.size():
		#reset other slots
		for s in slots:
			s.modulate = Color(1,1,1)
		#highlight selected slot
		slots[index].modulate = Color(1,1,0.5)
