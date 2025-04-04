#version 410

in vec4 a_position;	// vertex position as a homogeneous 3D point in MODEL 
in vec3 a_colour;	// vertex colour (RGB) 

uniform mat4 u_modelMatrix;  		// MODEL -> WORLD
uniform mat4 u_viewMatrix;  		// WORLD -> VIEW
uniform mat4 u_projectionMatrix;    // VIEW -> NDC

out vec3 v_colour;	// interpolated fragment colour (RGB)

void main() {
	v_colour = a_colour;
	
    gl_Position =  u_projectionMatrix * u_viewMatrix * u_modelMatrix * a_position;
}

