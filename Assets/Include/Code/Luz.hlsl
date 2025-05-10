#ifndef LIGHTING_CUSTOM_INCLUDED
#define LIGHTING_CUSTOM_INCLUDED
//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
void GetMainLight_float(float3 PositionWS, out half3 color, out float3 Direction, out float shadowAttenuation)
{
    /*#if defined(SHADERGRAPH_PREVIEW)
    color = 1;
    Direction = normalized (float3 (1, 1, - 1));
    Shadowattenuation = 1;
    #else
    Light light = GetMainLight(shadowcoord);
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


 
    void ComputeLightForAdditionalLights_float(float3 positionWS, float3 normalWS, float3 viewDirectionWS,  out float3 Finalcolor)
    {
    
        #if defined(SHADERGRAPH_PREVIEW)
        Finalcolor = 0
        #else
        int lightcount = GetAdditionalLightCount();
    
        half3 lighting = 0;
    
        [unroll(8)]
        for (int lightid = 0;lightid < lightcount; lightid++)
        {
            light = GetAdditionalLight(lightid, positionWS);
        
        half lambert = dot(normalWS, light.direction);
       
        float3 h = normalize(lightcount.direction + viewDirectionWS);
        half NoH = dot(normalWS, h);
        half blingphonk = pow(saturate(NoH), 50.0f);
        
        
        half diffuselightin = light.color(lambert * light.shadowAttenuation * light.DistanceAttenuation);
        half specularLighting = light.color(blingphonk * light.shadowAttenuation * light.distanceAttenuation);
        
        lighting += disffuselighting + specularLighting;
           
        }

        Finalcolor = lighting;
        #endif 
    }

  #endif */


