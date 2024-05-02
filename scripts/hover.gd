extends Node2D

@onready var color_rect = $ColorRect

# Called when the node enters the scene tree for the first time.
func _ready():
	print("body ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	print("entered")
	color_rect.color = Color.AQUA
	global.on_hover.emit(true)


func _on_area_2d_mouse_exited():
	print("entered")
	color_rect.color = Color.WHITE
	global.on_hover.emit(false)
