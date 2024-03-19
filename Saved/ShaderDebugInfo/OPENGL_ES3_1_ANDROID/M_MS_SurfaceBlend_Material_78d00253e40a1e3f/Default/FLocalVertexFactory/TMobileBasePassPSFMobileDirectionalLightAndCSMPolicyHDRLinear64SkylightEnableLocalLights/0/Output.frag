// ! M_MS_SurfaceBlend_Material_78d00253e40a1e3f/Default/FLocalVertexFactory/TMobileBasePassPSFMobileDirectionalLightAndCSMPolicyHDRLinear64SkylightEnableLocalLights/0/MobileBasePassPixelShader.usf:Main
// Compiled by ShaderConductor
// @Inputs: f4;10:in_var_TEXCOORD10,f4;11:in_var_TEXCOORD11,f4;0:in_var_COLOR0,f4;1:in_var_TEXCOORD0,f4;8:in_var_TEXCOORD8
// @Outputs: f4;0:out_Target0,f1;1:out_Target1
// @PackedUB: View(0): View_ViewToClip(128,16),View_ViewForward(264,3),View_ViewRectMin(512,4),View_ViewSizeAndInvSize(516,4),View_PreExposure(545,1),View_SkyLightColor(748,4),View_MobileSkyIrradianceEnvironmentMap_0(752,4),View_MobileSkyIrradianceEnvironmentMap_1(756,4),View_MobileSkyIrradianceEnvironmentMap_2(760,4),View_ReflectionCubemapMaxMip(786,1),View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight(792,3)
// @PackedUB: MobileReflectionCapture(1): MobileReflectionCapture_Params(0,4)
// @PackedUB: Primitive(2): Primitive_Flags(0,1)
// @PackedUB: MobileBasePass(3): MobileBasePass_Forward_NumLocalLights(52,1),MobileBasePass_Forward_CulledGridSize(56,3),MobileBasePass_Forward_LightGridPixelSizeShift(60,1),MobileBasePass_Forward_LightGridZParams(64,3)
// @PackedUB: MobileDirectionalLight(4): MobileDirectionalLight_DirectionalLightColor(0,4),MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition(4,4),MobileDirectionalLight_DirectionalLightShadowSize(8,4),MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale(12,4),MobileDirectionalLight_DirectionalLightShadowDistances(16,4),MobileDirectionalLight_DirectionalLightScreenToShadow(20,64),MobileDirectionalLight_DirectionalLightShadowMapChannelMask(84,1)
// @PackedUB: Material(5): Material_PreshaderBuffer_1(4,4),Material_PreshaderBuffer_3(12,4),Material_PreshaderBuffer_4(16,4),Material_PreshaderBuffer_6(24,4),Material_PreshaderBuffer_7(28,4),Material_PreshaderBuffer_8(32,4),Material_PreshaderBuffer_9(36,4),Material_PreshaderBuffer_11(44,4),Material_PreshaderBuffer_13(52,4),Material_PreshaderBuffer_14(56,4),Material_PreshaderBuffer_16(64,4),Material_PreshaderBuffer_17(68,4),Material_PreshaderBuffer_18(72,4),Material_PreshaderBuffer_19(76,4),Material_PreshaderBuffer_21(84,4),Material_PreshaderBuffer_23(92,4),Material_PreshaderBuffer_24(96,4),Material_PreshaderBuffer_26(104,4),Material_PreshaderBuffer_27(108,4),Material_PreshaderBuffer_28(112,4),Material_PreshaderBuffer_29(116,4),Material_PreshaderBuffer_31(124,4),Material_PreshaderBuffer_32(128,4),Material_PreshaderBuffer_34(136,4),Material_PreshaderBuffer_35(140,4)
// @PackedUBCopies: 0:128-0:h:0:16,0:264-0:m:0:3,0:512-0:m:4:4,0:516-0:h:16:4,0:545-0:h:20:1,0:748-0:h:24:16,0:786-0:m:8:1,0:792-0:h:40:3,1:0-1:h:0:4,2:0-2:u:0:1,3:52-3:u:0:1,3:56-3:i:0:3,3:60-3:u:4:1,3:64-3:h:0:3,4:0-4:m:0:20,4:20-4:h:0:64,4:84-4:u:0:1,5:4-5:h:0:4,5:12-5:h:4:8,5:24-5:h:12:16,5:44-5:h:28:4,5:52-5:h:32:8,5:64-5:h:40:16,5:84-5:h:56:4,5:92-5:h:60:8,5:104-5:h:68:16,5:124-5:h:84:8,5:136-5:h:92:8
// @Samplers: MobileBasePass_Forward_ForwardLocalLightBuffer(0:1),MobileBasePass_Forward_NumCulledLightsGrid(1:1),MobileBasePass_Forward_CulledLightDataGrid(2:1),MobileReflectionCapture_Texture(3:1[MobileReflectionCapture_TextureSampler]),MobileDirectionalLight_DirectionalLightShadowTexture(4:1[MobileDirectionalLight_DirectionalLightShadowSampler]),Material_Texture2D_0(5:1[Material_Texture2D_0Sampler]),Material_Texture2D_1(6:1[Material_Texture2D_1Sampler]),Material_Texture2D_2(7:1[Material_Texture2D_2Sampler]),Material_Texture2D_3(8:1[Material_Texture2D_3Sampler]),Material_Texture2D_4(9:1[Material_Texture2D_4Sampler]),Material_Texture2D_5(10:1[Material_Texture2D_5Sampler]),Material_Texture2D_6(11:1[Material_Texture2D_6Sampler]),Material_Texture2D_7(12:1[Material_Texture2D_7Sampler]),Material_Texture2D_8(13:1[Material_Texture2D_8Sampler]),Material_Texture2D_9(14:1[Material_Texture2D_9Sampler]),Material_Texture2D_10(15:1[Material_Texture2D_10Sampler]),Material_Texture2D_11(16:1[Material_Texture2D_11Sampler])
#version 320 es
#if defined(GL_EXT_control_flow_attributes)
#define out_var_SV_Target1 out_Target1
#define out_var_SV_Target0 out_Target0
#define in_var_TEXCOORD8 in_TEXCOORD8
#define in_var_TEXCOORD0 in_TEXCOORD0
#define in_var_COLOR0 in_COLOR0
#define in_var_TEXCOORD11 in_TEXCOORD11
#define in_var_TEXCOORD10 in_TEXCOORD10
#extension GL_EXT_control_flow_attributes : require
#define SPIRV_CROSS_FLATTEN [[flatten]]
#define SPIRV_CROSS_BRANCH [[dont_flatten]]
#define SPIRV_CROSS_UNROLL [[unroll]]
#define SPIRV_CROSS_LOOP [[dont_unroll]]
#else
#define SPIRV_CROSS_FLATTEN
#define SPIRV_CROSS_BRANCH
#define SPIRV_CROSS_UNROLL
#define SPIRV_CROSS_LOOP
#endif
precision mediump float;
precision highp int;

vec3 _375;
vec4 _376;

#define View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight (pc0_h[10].xyz)
#define View_ReflectionCubemapMaxMip (pc0_m[2].x)
#define View_MobileSkyIrradianceEnvironmentMap_2 (pc0_h[9])
#define View_MobileSkyIrradianceEnvironmentMap_1 (pc0_h[8])
#define View_MobileSkyIrradianceEnvironmentMap_0 (pc0_h[7])
#define View_SkyLightColor (pc0_h[6])
#define View_PreExposure (pc0_h[5].x)
#define View_ViewSizeAndInvSize (pc0_h[4])
#define View_ViewRectMin (pc0_m[1])
#define View_ViewForward (pc0_m[0].xyz)
#define View_ViewToClip (mat4(pc0_h[0 + 0].xyzw,pc0_h[0 + 1].xyzw,pc0_h[0 + 2].xyzw,pc0_h[0 + 3].xyzw))
#define SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler ps3
#define SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler ps4
#define SPIRV_Cross_CombinedMaterial_Texture2D_0Material_Texture2D_0Sampler ps5
#define SPIRV_Cross_CombinedMaterial_Texture2D_1Material_Texture2D_1Sampler ps6
#define SPIRV_Cross_CombinedMaterial_Texture2D_2Material_Texture2D_2Sampler ps7
#define SPIRV_Cross_CombinedMaterial_Texture2D_3Material_Texture2D_3Sampler ps8
#define SPIRV_Cross_CombinedMaterial_Texture2D_4Material_Texture2D_4Sampler ps9
#define SPIRV_Cross_CombinedMaterial_Texture2D_5Material_Texture2D_5Sampler ps10
#define SPIRV_Cross_CombinedMaterial_Texture2D_6Material_Texture2D_6Sampler ps11
#define SPIRV_Cross_CombinedMaterial_Texture2D_7Material_Texture2D_7Sampler ps12
#define SPIRV_Cross_CombinedMaterial_Texture2D_8Material_Texture2D_8Sampler ps13
#define SPIRV_Cross_CombinedMaterial_Texture2D_9Material_Texture2D_9Sampler ps14
#define SPIRV_Cross_CombinedMaterial_Texture2D_10Material_Texture2D_10Sampler ps15
#define SPIRV_Cross_CombinedMaterial_Texture2D_11Material_Texture2D_11Sampler ps16
uniform mediump vec4 pc0_m[3];
uniform highp vec4 pc0_h[11];


#define MobileReflectionCapture_Params (pc1_h[0])
uniform highp vec4 pc1_h[1];


#define Primitive_Flags (pc2_u[0].x)
uniform uvec4 pc2_u[1];


#define MobileBasePass_Forward_LightGridZParams (pc3_h[0].xyz)
#define MobileBasePass_Forward_LightGridPixelSizeShift (pc3_u[1].x)
#define MobileBasePass_Forward_CulledGridSize (pc3_i[0].xyz)
#define MobileBasePass_Forward_NumLocalLights (pc3_u[0].x)
uniform highp vec4 pc3_h[1];
uniform ivec4 pc3_i[1];
uniform uvec4 pc3_u[2];


#define MobileDirectionalLight_DirectionalLightShadowMapChannelMask (pc4_u[0].x)
#define MobileDirectionalLight_DirectionalLightScreenToShadow(Offset) (mat4(pc4_h[0 + (int(Offset) * 4) + 0].xyzw,pc4_h[0 + (int(Offset) * 4) + 1].xyzw,pc4_h[0 + (int(Offset) * 4) + 2].xyzw,pc4_h[0 + (int(Offset) * 4) + 3].xyzw))
#define MobileDirectionalLight_DirectionalLightShadowDistances (pc4_m[4])
#define MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale (pc4_m[3])
#define MobileDirectionalLight_DirectionalLightShadowSize (pc4_m[2])
#define MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition (pc4_m[1])
#define MobileDirectionalLight_DirectionalLightColor (pc4_m[0])
uniform uvec4 pc4_u[1];
uniform highp vec4 pc4_h[16];
uniform mediump vec4 pc4_m[5];


#define Material_PreshaderBuffer_35 (pc5_h[24])
#define Material_PreshaderBuffer_34 (pc5_h[23])
#define Material_PreshaderBuffer_32 (pc5_h[22])
#define Material_PreshaderBuffer_31 (pc5_h[21])
#define Material_PreshaderBuffer_29 (pc5_h[20])
#define Material_PreshaderBuffer_28 (pc5_h[19])
#define Material_PreshaderBuffer_27 (pc5_h[18])
#define Material_PreshaderBuffer_26 (pc5_h[17])
#define Material_PreshaderBuffer_24 (pc5_h[16])
#define Material_PreshaderBuffer_23 (pc5_h[15])
#define Material_PreshaderBuffer_21 (pc5_h[14])
#define Material_PreshaderBuffer_19 (pc5_h[13])
#define Material_PreshaderBuffer_18 (pc5_h[12])
#define Material_PreshaderBuffer_17 (pc5_h[11])
#define Material_PreshaderBuffer_16 (pc5_h[10])
#define Material_PreshaderBuffer_14 (pc5_h[9])
#define Material_PreshaderBuffer_13 (pc5_h[8])
#define Material_PreshaderBuffer_11 (pc5_h[7])
#define Material_PreshaderBuffer_9 (pc5_h[6])
#define Material_PreshaderBuffer_8 (pc5_h[5])
#define Material_PreshaderBuffer_7 (pc5_h[4])
#define Material_PreshaderBuffer_6 (pc5_h[3])
#define Material_PreshaderBuffer_4 (pc5_h[2])
#define Material_PreshaderBuffer_3 (pc5_h[1])
#define Material_PreshaderBuffer_1 (pc5_h[0])
uniform highp vec4 pc5_h[25];


layout(binding = 0) uniform highp samplerBuffer ps0;
layout(binding = 1) uniform highp usamplerBuffer ps1;
layout(binding = 2) uniform highp usamplerBuffer ps2;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_0Material_Texture2D_0Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_1Material_Texture2D_1Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_2Material_Texture2D_2Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_3Material_Texture2D_3Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_4Material_Texture2D_4Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_5Material_Texture2D_5Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_6Material_Texture2D_6Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_7Material_Texture2D_7Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_8Material_Texture2D_8Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_9Material_Texture2D_9Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_10Material_Texture2D_10Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMaterial_Texture2D_11Material_Texture2D_11Sampler;
uniform highp sampler2D SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler;
uniform highp samplerCube SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler;

layout(location = 0) in vec4 in_var_TEXCOORD10;
layout(location = 1) in vec4 in_var_TEXCOORD11;
layout(location = 2) in vec4 in_var_COLOR0;
layout(location = 3) in highp vec4 in_var_TEXCOORD0[1];
layout(location = 4) in highp vec4 in_var_TEXCOORD8;
layout(location = 0) out vec4 out_var_SV_Target0;
layout(location = 1) out highp float out_var_SV_Target1;

void main()
{
    highp float _381 = 1.0 / gl_FragCoord.w;
    highp vec2 _398 = gl_FragCoord.xy - View_ViewRectMin.xy;
    highp vec4 _406 = vec4(fma(_398, View_ViewSizeAndInvSize.zw, vec2(-0.5)) * vec2(2.0, -2.0), gl_FragCoord.z, 1.0) * _381;
    highp vec3 _415;
    if (View_ViewToClip[3].w >= 1.0)
    {
        _415 = -View_ViewForward;
    }
    else
    {
        _415 = normalize(-in_var_TEXCOORD8.xyz);
    }
    highp vec2 _426 = Material_PreshaderBuffer_4.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_1.zw, Material_PreshaderBuffer_3.xy);
    highp vec2 _434 = Material_PreshaderBuffer_3.zw + vec2(dot(_426, Material_PreshaderBuffer_6.xy), dot(_426, Material_PreshaderBuffer_6.zw));
    vec2 _139 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_0Material_Texture2D_0Sampler, _434).xy, vec2(2.0), vec2(-1.0));
    highp float _441 = sqrt(clamp(1.0 - dot(_139, _139), 0.0, 1.0));
    vec2 _89 = vec4(_139, _441, 1.0).xy * vec2(Material_PreshaderBuffer_7.x);
    highp vec2 _462 = Material_PreshaderBuffer_14.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_11.zw, Material_PreshaderBuffer_13.xy);
    highp vec2 _470 = Material_PreshaderBuffer_13.zw + vec2(dot(_462, Material_PreshaderBuffer_16.xy), dot(_462, Material_PreshaderBuffer_16.zw));
    vec2 _145 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_1Material_Texture2D_1Sampler, _470).xy, vec2(2.0), vec2(-1.0));
    highp float _477 = sqrt(clamp(1.0 - dot(_145, _145), 0.0, 1.0));
    vec2 _93 = vec4(_145, _477, 1.0).xy * vec2(Material_PreshaderBuffer_17.x);
    highp vec2 _498 = Material_PreshaderBuffer_24.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_21.zw, Material_PreshaderBuffer_23.xy);
    highp vec2 _506 = Material_PreshaderBuffer_23.zw + vec2(dot(_498, Material_PreshaderBuffer_26.xy), dot(_498, Material_PreshaderBuffer_26.zw));
    vec2 _151 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_2Material_Texture2D_2Sampler, _506).xy, vec2(2.0), vec2(-1.0));
    highp float _513 = sqrt(clamp(1.0 - dot(_151, _151), 0.0, 1.0));
    vec2 _97 = vec4(_151, _513, 1.0).xy * vec2(Material_PreshaderBuffer_27.x);
    highp vec4 _527 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_3Material_Texture2D_3Sampler, _470);
    highp vec4 _531 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_4Material_Texture2D_4Sampler, _506);
    highp float _534 = mix(clamp(_527.z, 0.0, 1.0), _531.z, Material_PreshaderBuffer_31.y);
    float _106 = clamp(mix(Material_PreshaderBuffer_32.x, Material_PreshaderBuffer_32.y, clamp(fma(in_var_COLOR0.x, 2.0, mix(_534 * Material_PreshaderBuffer_31.z, (1.0 - _534) * Material_PreshaderBuffer_31.z, Material_PreshaderBuffer_31.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _109 = vec3(_106);
    highp vec4 _550 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_5Material_Texture2D_5Sampler, _434);
    highp float _553 = mix(clamp(_550.z, 0.0, 1.0), 0.0, Material_PreshaderBuffer_34.y);
    float _118 = clamp(mix(Material_PreshaderBuffer_35.x, Material_PreshaderBuffer_35.y, clamp(fma(in_var_COLOR0.y, 2.0, mix(_553 * Material_PreshaderBuffer_34.z, (1.0 - _553) * Material_PreshaderBuffer_34.z, Material_PreshaderBuffer_34.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _120 = vec3(_118);
    vec3 _122 = normalize(mat3(in_var_TEXCOORD10.xyz, cross(in_var_TEXCOORD11.xyz, in_var_TEXCOORD10.xyz) * in_var_TEXCOORD11.w, in_var_TEXCOORD11.xyz) * mix(vec3(dot(_89, Material_PreshaderBuffer_8.zw), dot(_89, Material_PreshaderBuffer_9.xy), _441), mix(vec3(dot(_93, Material_PreshaderBuffer_18.zw), dot(_93, Material_PreshaderBuffer_19.xy), _477), vec3(dot(_97, Material_PreshaderBuffer_28.zw), dot(_97, Material_PreshaderBuffer_29.xy), _513), _109), _120)) * 1.0;
    highp vec3 _570 = (-_415) + ((_122 * dot(_122, _415)) * 2.0);
    highp vec4 _574 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_6Material_Texture2D_6Sampler, _434);
    highp vec4 _578 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_7Material_Texture2D_7Sampler, _470);
    highp vec4 _582 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_8Material_Texture2D_8Sampler, _506);
    highp vec4 _586 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_9Material_Texture2D_9Sampler, _434);
    highp vec4 _590 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_10Material_Texture2D_10Sampler, _470);
    highp vec4 _594 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_11Material_Texture2D_11Sampler, _506);
    float _158 = clamp(mix(_586.x, mix(_590.x, _594.x, _106), _118), 0.0, 1.0);
    vec3 _159 = clamp(mix(_574.xyz, mix(_578.xyz, _582.xyz, _109), _120), vec3(0.0), vec3(1.0));
    highp float _595 = max(0.015625, clamp(mix(_550.x, mix(_527.y, _531.y, _106), _118), 0.0, 1.0));
    highp vec4 _600 = vec4(_122, 1.0);
    highp vec3 _604;
    _604.x = dot(View_MobileSkyIrradianceEnvironmentMap_0, _600);
    _604.y = dot(View_MobileSkyIrradianceEnvironmentMap_1, _600);
    _604.z = dot(View_MobileSkyIrradianceEnvironmentMap_2, _600);
    vec3 _161 = max(vec3(0.0), _604) * View_SkyLightColor.xyz;
    highp float _614 = _406.w;
    highp vec4 _637;
    uint _621 = 0u;
    for (;;)
    {
        if (_621 < 4u)
        {
            if (_614 < MobileDirectionalLight_DirectionalLightShadowDistances[_621])
            {
                _637 = MobileDirectionalLight_DirectionalLightScreenToShadow(_621) * vec4(_406.xy, _614, 1.0);
                break;
            }
            _621++;
            continue;
        }
        else
        {
            _637 = vec4(0.0);
            break;
        }
    }
    float _234;
    if (_637.z > 0.0)
    {
        highp vec2 _646 = fma(_637.xy, MobileDirectionalLight_DirectionalLightShadowSize.xy, vec2(-0.5));
        highp vec2 _647 = fract(_646);
        highp vec2 _651 = (floor(_646) + vec2(1.0)) * MobileDirectionalLight_DirectionalLightShadowSize.zw;
        highp vec4 _656 = vec4(fma(min(1.0 - _637.z, 0.999989986419677734375), MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w, -1.0));
        highp vec4 _658 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _651, ivec2(-1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _656, vec4(0.0), vec4(1.0));
        highp vec4 _663 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _651, ivec2(1, -1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _656, vec4(0.0), vec4(1.0));
        highp vec4 _668 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _651, ivec2(-1, 1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _656, vec4(0.0), vec4(1.0));
        highp vec4 _673 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _651, ivec2(1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _656, vec4(0.0), vec4(1.0));
        highp float _675 = _647.x;
        highp float _676 = 1.0 - _675;
        highp vec4 _698;
        _698.x = fma(_663.z, _675, fma(_658.w, _676, _658.z) + _663.w);
        _698.y = fma(_663.y, _675, fma(_658.x, _676, _658.y) + _663.x);
        _698.z = fma(_673.z, _675, fma(_668.w, _676, _668.z) + _673.w);
        _698.w = fma(_673.y, _675, fma(_668.x, _676, _668.y) + _673.x);
        highp float _708 = _647.y;
        highp float _716 = clamp(fma(_614, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.x, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.y), 0.0, 1.0);
        _234 = mix(dot(_698, vec4(1.0 - _708, 1.0, 1.0, _708) * 0.111111111938953399658203125), 1.0, _716 * _716);
    }
    else
    {
        _234 = 1.0;
    }
    highp vec4 _734 = vec4(float(MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
    highp float _738 = max(0.0, dot(_122, normalize(_415 + MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz)));
    vec3 _184 = _159 * 0.318407952785491943359375;
    highp vec3 _739 = vec3(1.0) * max(0.0, dot(_122, MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz));
    float _185 = _595 * _595;
    highp float _743 = _738 * _185;
    highp float _745 = _185 / fma(_743, _743, fma(-_738, _738, 1.0));
    float _189 = fma(_595, 0.25, 0.25);
    vec4 _196 = (vec4(-1.0, -0.027496337890625, -0.57177734375, 0.022003173828125) * _595) + vec4(1.0, 0.042510986328125, 1.0400390625, -0.040008544921875);
    float _197 = _196.x;
    vec2 _206 = (vec2(-1.0400390625, 1.0400390625) * fma(min(_197 * _197, exp2((-9.28125) * clamp(abs(dot(_122, _415)) + 1.0013580322265625e-05, 0.0, 1.0))), _197, _196.y)) + _196.zw;
    highp vec3 _747 = (vec3(0.039999999105930328369140625) * _206.x) + vec3(_206.y);
    uvec2 _780 = uvec2(uint(_398.x), uint(_398.y)) >> (uvec2(MobileBasePass_Forward_LightGridPixelSizeShift) & uvec2(31u));
    vec3 _235;
    if (float(MobileReflectionCapture_Params.y > 0.0) != 0.0)
    {
        _235 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _570, (MobileReflectionCapture_Params.y - 1.0) - fma(-1.2001953125, log2(max(_595, 0.00100040435791015625)), 1.0)).xyz * View_SkyLightColor.xyz;
    }
    else
    {
        _235 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _570, (View_ReflectionCubemapMaxMip - 1.0) - fma(-1.2001953125, log2(max(_595, 0.00100040435791015625)), 1.0)).xyz * MobileReflectionCapture_Params.w;
    }
    uint _825 = ((((min(uint(max(0.0, log2(fma(_381, MobileBasePass_Forward_LightGridZParams.x, MobileBasePass_Forward_LightGridZParams.y)) * MobileBasePass_Forward_LightGridZParams.z)), uint(MobileBasePass_Forward_CulledGridSize.z - 1)) * uint(MobileBasePass_Forward_CulledGridSize.y)) + _780.y) * uint(MobileBasePass_Forward_CulledGridSize.x)) + _780.x) * 2u;
    uvec4 _833 = texelFetch(ps1, int(_825 + 1u));
    uint _834 = _833.x;
    uint _849 = (uint((Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Flags & 8192u) != 0u) << 2u);
    uint _850 = min(min(texelFetch(ps1, int(_825)).x, MobileBasePass_Forward_NumLocalLights), MobileBasePass_Forward_NumLocalLights);
    highp vec3 _852;
    _852 = fma((_235 * mix(1.0, min((dot(_161, vec3(0.300048828125, 0.58984375, 0.1099853515625)) * _158) / max(MobileReflectionCapture_Params.x, 9.9999997473787516355514526367188e-05), View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0, 1.0, clamp(fma(_595, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0, 1.0)))) * _158, _747, fma(_161 * _159, vec3(_158), fma(((_184 * _739) * 1.0) + ((_739 * (_747 * (min((0.318407952785491943359375 * _745) * _745, 2048.0) * _189))) * MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.z), MobileDirectionalLight_DirectionalLightColor.xyz * (_234 * mix(1.0, dot(vec4(1.0), _734), dot(_734, vec4(1.0)))), vec3(0.0))));
    highp vec3 _853;
    SPIRV_CROSS_LOOP
    for (uint _855 = 0u; _855 < _850; _852 = _853, _855++)
    {
        uint _864 = texelFetch(ps2, int(_834 + _855)).x * 6u;
        highp vec4 _866 = texelFetch(ps0, int(_864));
        highp vec4 _868 = texelFetch(ps0, int(_864 + 1u));
        highp vec4 _870 = texelFetch(ps0, int(_864 + 2u));
        highp float _873 = _866.w;
        highp float _874 = _873 * _873;
        highp vec3 _875 = _866.xyz;
        highp vec3 _876 = in_var_TEXCOORD8.xyz - _875;
        if (!((dot(_876, _876) * _874) <= 1.0))
        {
            _853 = _852;
            continue;
        }
        uint _884 = floatBitsToUint(_870.w);
        if ((((_884 >> 8u) & 7u) & _849) == 0u)
        {
            _853 = _852;
            continue;
        }
        uint _892 = (_884 >> 16u) & 3u;
        highp float _894 = _868.w;
        uint _897 = floatBitsToUint(texelFetch(ps0, int(_864 + 3u)).x);
        highp vec4 _920 = vec4(float(_884 & 1u), float((_884 & 2u) >> 1u), float((_884 & 4u) >> 2u), float((_884 & 8u) >> 3u));
        highp vec3 _922 = _875 - in_var_TEXCOORD8.xyz;
        highp float _923 = dot(_922, _922);
        highp vec3 _925 = _922 * inversesqrt(_923);
        highp float _942;
        if (_894 == 0.0)
        {
            highp float _934 = _923 * _874;
            highp float _937 = clamp(fma(-_934, _934, 1.0), 0.0, 1.0);
            _942 = (_937 * _937) * (1.0 / (_923 + 1.0));
        }
        else
        {
            highp vec3 _929 = _922 * _873;
            _942 = pow(1.0 - clamp(dot(_929, _929), 0.0, 1.0), _894);
        }
        highp float _951;
        if ((_892 == 2u) || (_892 == 3u))
        {
            highp float _948 = clamp((dot(_925, _870.xyz) - unpackHalf2x16(_897 & 65535u).x) * unpackHalf2x16(_897 >> 16u).x, 0.0, 1.0);
            _951 = _942 * (_948 * _948);
        }
        else
        {
            _951 = _942;
        }
        highp vec3 _976;
        SPIRV_CROSS_BRANCH
        if (_951 > 0.0)
        {
            float _236;
            SPIRV_CROSS_BRANCH
            if (uint((_884 & 255u) != 0u) != 0u)
            {
                _236 = mix(1.0, dot(vec4(1.0), _920), dot(_920, vec4(1.0)));
            }
            else
            {
                _236 = 1.0;
            }
            highp float _962 = max(0.0, dot(_122, normalize(_415 + _925)));
            highp vec3 _963 = vec3(1.0) * max(0.0, dot(_122, _925));
            highp float _967 = _962 * _185;
            highp float _969 = _185 / fma(_967, _967, fma(-_962, _962, 1.0));
            _976 = fma(((_184 * _963) * 1.0) + ((_963 * (_747 * (min((0.318407952785491943359375 * _969) * _969, 2048.0) * _189))) * 1.0), (_868.xyz * _951) * _236, vec3(0.0));
        }
        else
        {
            _976 = vec3(0.0);
        }
        _853 = _852 + _976;
    }
    vec3 _71 = (_852 + max(vec3(0.0), vec3(0.0))) * 1.0;
    vec4 _72 = vec4(_71.x, _71.y, _71.z, _376.w);
    _72.w = 0.0;
    highp vec3 _980 = min((_72.xyz * View_PreExposure).xyz, vec3(32512.0, 32512.0, 32256.0));
    out_var_SV_Target0 = vec4(_980.x, _980.y, _980.z, _72.w);
    out_var_SV_Target1 = gl_FragCoord.z;
}

