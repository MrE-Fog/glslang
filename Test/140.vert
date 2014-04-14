#version 140

uniform isamplerBuffer sbuf;

layout(std140) uniform blockName {
    int anonMem;
};

void main()
{
    int id = gl_InstanceID;
    id += anonMem;
    id += texelFetch(sbuf, 8).w;
    gl_ClipVertex;      // could be ERROR, but compiling under compatibility profile
    gl_Color;           // could be ERROR, but compiling under compatibility profile
    gl_LightSource[0];  // could be ERROR, but compiling under compatibility profile
    gl_DepthRange.far;
    gl_TexCoord;        // could be ERROR, but compiling under compatibility profile
    gl_FogFragCoord;    // could be ERROR, but compiling under compatibility profile
    gl_FrontColor;      // could be ERROR, but compiling under compatibility profile
}