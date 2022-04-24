precision mediump float;

uniform vec3 uLightDirection;
uniform vec3 uCameraPosition;
uniform sampler2D uTexture;
varying vec2 vTexcoords;
varying vec3 vWorldNormal;
varying vec3 vWorldPosition;

void main(void) {
    // diffuse contribution
   
    // todo #1 normalize the light direction and store in a separate variable
    gl_FragColor = vec4(uLightDirection,1.0);
     vec3 v1 = normalize(uLightDirection);
     gl_FragColor = vec4(v1,1.0);
   
    // todo #2 normalize the world normal and store in a separate variable
      vec3 v2 = normalize(vWorldNormal);
      gl_FragColor = vec4(v2,1.0);
    // todo #3 calculate the lambert term
      float lambert = dot(v2,v1);
      gl_FragColor = vec4(lambert,lambert,lambert,1.0);
    // specular contribution
    // todo #4 in world space, calculate the direction from the surface point to the eye (normalized)
    vec3 v3 =  normalize(uCameraPosition-vWorldPosition);
    gl_FragColor = vec4(v3,1.0);
    // todo #5 in world space, calculate the reflection vector (normalized)
    vec3 v4 = normalize(2.0*(lambert*v2)*v2-v1);
    gl_FragColor = vec4(v4,1.0);
    // todo #6 calculate the phong term
    float phong = pow(max(dot(v4,v3),0.0),64.0);
    gl_FragColor = vec4(phong,phong,phong,1.0);
    
    // combine
    // todo #7 apply light and material interaction for diffuse value by using 
    // the texture color as the material
    // todo #8 apply light and material interaction for phong, 
    // assume phong material color is (0.3, 0.3, 0.3)
    

    vec3 albedo = texture2D(uTexture, vTexcoords,lambert).rgb;
   
    gl_FragColor = vec4(albedo*lambert,1.0);
    vec3 ambient = albedo * 0.1;
    
   vec3 diffuseColor = vec4(lambert*albedo,1.0).rgb;
   vec3 specularColor = vec3(0.0,0.0,0.0).rgb;
    gl_FragColor = vec4(specularColor*diffuseColor,1.0);

    // todo #9
    // add "diffuseColor" and "specularColor" when ready
    vec3 finalColor = ambient+diffuseColor+specularColor; // + diffuseColor + specularColor;

    gl_FragColor = vec4(finalColor, 1.0);
}

// EOF 00100001-10