#shader vertex
#version 330 core

layout(location = 0) in vec4 position;

void main(){
    vec4 pos = position;
    pos.x += 0.25;
    gl_Position = pos;
};

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

void main(){
    color = vec4(1.0, 1.0, 0.0, 1.0);
};