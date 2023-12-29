shader_type spatial;

void fragment() {
	float squareSize = 0.1;

	bool isEven = mod(floor(UV.x / squareSize) + floor(UV.y / squareSize), 2.0) < 1.0;

	ALBEDO = isEven ? vec3(0.3, 0.3, 0.3) : vec3(0.169, 0.176, 0.259);
	METALLIC = 0.5;
	ROUGHNESS = 0.5;
}
