extends Node2D

@onready var color_rect = $ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	global.on_hover.connect(handle_hover)

func handle_hover(status):
	print("I smell hover")
	if status:
		color_rect.color = Color.BROWN
	else:
		color_rect.color = Color.BLUE_VIOLET

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
