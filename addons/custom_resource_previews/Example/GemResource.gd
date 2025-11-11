@tool
extends Resource
class_name GemResource

@export var name: String = "Example Resource"
@export var icon: Texture2D = null
@export var value: int = 100

func _get_custom_preview_texture() -> Texture2D:
	return icon
