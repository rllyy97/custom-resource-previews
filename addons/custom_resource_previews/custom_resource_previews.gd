@tool
extends EditorPlugin

var preview_generator: CustomResourcePreviewGenerator

func _enter_tree() -> void:
	preview_generator = CustomResourcePreviewGenerator.new()
	EditorInterface.get_resource_previewer().add_preview_generator(preview_generator)
	pass

func _exit_tree() -> void:
	EditorInterface.get_resource_previewer().remove_preview_generator(preview_generator)
	pass
