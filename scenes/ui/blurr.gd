extends ColorRect
shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture, filter_linear_mipmap;
uniform float blur_amount : hint_range(0.0, 5.0, 0.1) = 2.0;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR = textureLod(screen_texture,SCREEN_UV,blur_amount);
}
