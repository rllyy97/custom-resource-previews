@tool
extends EditorResourcePreviewGenerator
class_name CustomResourcePreviewGenerator

func _can_generate_small_preview() -> bool:
	return true

func _handles(type: String) -> bool:
	return type == "Resource"

func _generate(resource: Resource, size: Vector2i, _metadata: Dictionary) -> Texture2D:
	var image := Image.new()

	if !resource.has_method("_get_custom_preview_texture"):
		return

	var texture := resource.call("_get_custom_preview_texture") as Texture2D
	if texture == null or !texture:
		return

	var texture_image := texture.get_image()
	if texture_image == null or !texture_image:
		return

	if texture_image.is_compressed():
		image.load_png_from_buffer(texture_image.save_png_to_buffer())
	else:
		image.set_data(
			texture_image.get_width(),
			texture_image.get_height(),
			false,
			texture_image.get_format(),
			texture_image.get_data()
		)

	image.resize(size.x, size.y, Image.INTERPOLATE_BILINEAR)
	return ImageTexture.create_from_image(image)
