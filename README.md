# Custom Resource Previews

A Godot plugin that enables custom preview images for your resources in the editor.

## Features

- Define custom preview textures for your resource instances
- Improve resource browsing and searching in the Godot editor
- Give each resource instance a distinct visual identity

## Installation

1. Download the plugin to your project's `addons/` directory
2. Enable the plugin in Project Settings → Plugins
3. Restart the editor if previews do not appear immediately

## Usage

Implement the `_get_custom_preview_texture()` method in your custom resource script:

```gdscript
@tool
extends Resource
class_name MyCustomResource

@export var icon: Texture2D = null

func _get_custom_preview_texture() -> Texture2D:
	return icon
```

The returned texture will be displayed as the preview icon in:
- FileSystem dock
- Resource picker dialogs

## License

MIT License

## Contact

https://github.com/rllyy97/
