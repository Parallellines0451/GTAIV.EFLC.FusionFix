sampler2D HDRSampler                      : register(s2);

// From rage_postfxVS0.
struct PS_IN
{
    float2 texcoord : TEXCOORD;
    float3 viewray : TEXCOORD1;
};

float4 HDRPass(PS_IN i) : COLOR
{
    float3 color = tex2D(HDRSampler, i.texcoord).xyz;
    
    color = pow(color, 2.2f);
    
    return float4(color, 1.0f);

}
