#ifndef LIGHTING_CUSTOM_INCLUDED
#define LIGHTING_CUSTOM_INCLUDED
//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
void GetMainLight_float(float3 PositionWS, out half3 color, out float3 Direction, out float shadowAttenuation)
{
    #if defined(SHADERGRAPH_PREVIEW)
    color = 1;
    Direction = normalized (float3 (1, 1, - 1));
    Shadowattenuation = 1;
    #else
    Light light = GetMainLight(shadowCoord);
    float4 shadowcoord = TranformWorldToShadowCoord(PositionWS);
    
    color = light.color;
    Direction = light.direction;
    ShadowSamplingData shadowSamplingData = GetMainLightShadowSamplingData();
    float shadowintensity = GetMainLightShadowStrengh();
   
    shadowAttenuation = SampleShadowmap(shadowcoord, TEXTURE2D_ARGS(_MainLightShadowTexture, sample_MainLightShadowmapTexture),
    shadowSamplingData,
    shadowintensity, false);
    #endif 
}

#endif 
