varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 v_vcord;

uniform vec4 v_rect;
uniform float f_border;

void main(){
    float cv=smoothstep(v_rect.x,v_rect.x+f_border,v_vcord.x)
        *smoothstep(v_rect.y,v_rect.y+f_border,v_vcord.y)
        *(1.0-smoothstep(v_rect.z-f_border,v_rect.z,v_vcord.x))
        *(1.0-smoothstep(v_rect.w-f_border,v_rect.w,v_vcord.y));
    gl_FragColor=v_vColour*texture2D(gm_BaseTexture,v_vTexcoord);
    gl_FragColor.a*=cv;
}

