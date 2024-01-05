// ! M_MS_SurfaceBlend_Material_78d00253e40a1e3f/Default/FLocalVertexFactory/TMobileBasePassPSFMobileDirectionalLightCSMAndSHIndirectPolicyHDRLinear64SkylightEnableLocalLights/0/MobileBasePassPixelShader.usf:Main
// Compiled by ShaderConductor
// @Inputs: f4;10:in_var_TEXCOORD10,f4;11:in_var_TEXCOORD11,f4;0:in_var_COLOR0,f4;1:in_var_TEXCOORD0,f4;8:in_var_TEXCOORD8
// @Outputs: f4;0:out_Target0,f1;1:out_Target1
// @PackedUB: View(0): View_ViewToClip(128,16),View_ViewForward(264,3),View_ViewRectMin(512,4),View_ViewSizeAndInvSize(516,4),View_PreExposure(545,1),View_SkyLightColor(748,4),View_MobileSkyIrradianceEnvironmentMap_0(752,4),View_MobileSkyIrradianceEnvironmentMap_1(756,4),View_MobileSkyIrradianceEnvironmentMap_2(760,4),View_ReflectionCubemapMaxMip(786,1),View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight(792,3),View_IndirectLightingCacheShowFlag(947,1)
// @PackedUB: MobileReflectionCapture(1): MobileReflectionCapture_Params(0,4)
// @PackedUB: Primitive(2): Primitive_Flags(0,1)
// @PackedUB: MobileBasePass(3): MobileBasePass_Forward_NumLocalLights(52,1),MobileBasePass_Forward_CulledGridSize(56,3),MobileBasePass_Forward_LightGridPixelSizeShift(60,1),MobileBasePass_Forward_LightGridZParams(64,3)
// @PackedUB: IndirectLightingCache(4): IndirectLightingCache_DirectionalLightShadowing(20,1),IndirectLightingCache_IndirectLightingSHCoefficients0_0(24,4),IndirectLightingCache_IndirectLightingSHCoefficients0_1(28,4),IndirectLightingCache_IndirectLightingSHCoefficients0_2(32,4),IndirectLightingCache_IndirectLightingSHCoefficients1_0(36,4),IndirectLightingCache_IndirectLightingSHCoefficients1_1(40,4),IndirectLightingCache_IndirectLightingSHCoefficients1_2(44,4),IndirectLightingCache_IndirectLightingSHCoefficients2(48,4)
// @PackedUB: MobileDirectionalLight(5): MobileDirectionalLight_DirectionalLightColor(0,4),MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition(4,4),MobileDirectionalLight_DirectionalLightShadowSize(8,4),MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale(12,4),MobileDirectionalLight_DirectionalLightShadowDistances(16,4),MobileDirectionalLight_DirectionalLightScreenToShadow(20,64),MobileDirectionalLight_DirectionalLightShadowMapChannelMask(84,1)
// @PackedUB: Material(6): Material_PreshaderBuffer_1(4,4),Material_PreshaderBuffer_3(12,4),Material_PreshaderBuffer_4(16,4),Material_PreshaderBuffer_6(24,4),Material_PreshaderBuffer_7(28,4),Material_PreshaderBuffer_8(32,4),Material_PreshaderBuffer_9(36,4),Material_PreshaderBuffer_11(44,4),Material_PreshaderBuffer_13(52,4),Material_PreshaderBuffer_14(56,4),Material_PreshaderBuffer_16(64,4),Material_PreshaderBuffer_17(68,4),Material_PreshaderBuffer_18(72,4),Material_PreshaderBuffer_19(76,4),Material_PreshaderBuffer_21(84,4),Material_PreshaderBuffer_23(92,4),Material_PreshaderBuffer_24(96,4),Material_PreshaderBuffer_26(104,4),Material_PreshaderBuffer_27(108,4),Material_PreshaderBuffer_28(112,4),Material_PreshaderBuffer_29(116,4),Material_PreshaderBuffer_31(124,4),Material_PreshaderBuffer_32(128,4),Material_PreshaderBuffer_34(136,4),Material_PreshaderBuffer_35(140,4)
// @PackedUBCopies: 0:128-0:h:0:16,0:264-0:m:0:3,0:512-0:m:4:4,0:516-0:h:16:4,0:545-0:h:20:1,0:748-0:h:24:16,0:786-0:m:8:1,0:792-0:h:40:3,0:947-0:h:44:1,1:0-1:h:0:4,2:0-2:u:0:1,3:52-3:u:0:1,3:56-3:i:0:3,3:60-3:u:4:1,3:64-3:h:0:3,4:20-4:m:0:1,4:24-4:h:0:28,5:0-5:m:0:20,5:20-5:h:0:64,5:84-5:u:0:1,6:4-6:h:0:4,6:12-6:h:4:8,6:24-6:h:12:16,6:44-6:h:28:4,6:52-6:h:32:8,6:64-6:h:40:16,6:84-6:h:56:4,6:92-6:h:60:8,6:104-6:h:68:16,6:124-6:h:84:8,6:136-6:h:92:8
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

vec4 _432;
vec3 _433;
vec4 _435;

#define View_IndirectLightingCacheShowFlag (pc0_h[11].x)
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
uniform highp vec4 pc0_h[12];


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


#define IndirectLightingCache_IndirectLightingSHCoefficients2 (pc4_h[6])
#define IndirectLightingCache_IndirectLightingSHCoefficients1_2 (pc4_h[5])
#define IndirectLightingCache_IndirectLightingSHCoefficients1_1 (pc4_h[4])
#define IndirectLightingCache_IndirectLightingSHCoefficients1_0 (pc4_h[3])
#define IndirectLightingCache_IndirectLightingSHCoefficients0_2 (pc4_h[2])
#define IndirectLightingCache_IndirectLightingSHCoefficients0_1 (pc4_h[1])
#define IndirectLightingCache_IndirectLightingSHCoefficients0_0 (pc4_h[0])
#define IndirectLightingCache_DirectionalLightShadowing (pc4_m[0].x)
uniform highp vec4 pc4_h[7];
uniform mediump vec4 pc4_m[1];


#define MobileDirectionalLight_DirectionalLightShadowMapChannelMask (pc5_u[0].x)
#define MobileDirectionalLight_DirectionalLightScreenToShadow(Offset) (mat4(pc5_h[0 + (int(Offset) * 4) + 0].xyzw,pc5_h[0 + (int(Offset) * 4) + 1].xyzw,pc5_h[0 + (int(Offset) * 4) + 2].xyzw,pc5_h[0 + (int(Offset) * 4) + 3].xyzw))
#define MobileDirectionalLight_DirectionalLightShadowDistances (pc5_m[4])
#define MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale (pc5_m[3])
#define MobileDirectionalLight_DirectionalLightShadowSize (pc5_m[2])
#define MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition (pc5_m[1])
#define MobileDirectionalLight_DirectionalLightColor (pc5_m[0])
uniform uvec4 pc5_u[1];
uniform highp vec4 pc5_h[16];
uniform mediump vec4 pc5_m[5];


#define Material_PreshaderBuffer_35 (pc6_h[24])
#define Material_PreshaderBuffer_34 (pc6_h[23])
#define Material_PreshaderBuffer_32 (pc6_h[22])
#define Material_PreshaderBuffer_31 (pc6_h[21])
#define Material_PreshaderBuffer_29 (pc6_h[20])
#define Material_PreshaderBuffer_28 (pc6_h[19])
#define Material_PreshaderBuffer_27 (pc6_h[18])
#define Material_PreshaderBuffer_26 (pc6_h[17])
#define Material_PreshaderBuffer_24 (pc6_h[16])
#define Material_PreshaderBuffer_23 (pc6_h[15])
#define Material_PreshaderBuffer_21 (pc6_h[14])
#define Material_PreshaderBuffer_19 (pc6_h[13])
#define Material_PreshaderBuffer_18 (pc6_h[12])
#define Material_PreshaderBuffer_17 (pc6_h[11])
#define Material_PreshaderBuffer_16 (pc6_h[10])
#define Material_PreshaderBuffer_14 (pc6_h[9])
#define Material_PreshaderBuffer_13 (pc6_h[8])
#define Material_PreshaderBuffer_11 (pc6_h[7])
#define Material_PreshaderBuffer_9 (pc6_h[6])
#define Material_PreshaderBuffer_8 (pc6_h[5])
#define Material_PreshaderBuffer_7 (pc6_h[4])
#define Material_PreshaderBuffer_6 (pc6_h[3])
#define Material_PreshaderBuffer_4 (pc6_h[2])
#define Material_PreshaderBuffer_3 (pc6_h[1])
#define Material_PreshaderBuffer_1 (pc6_h[0])
uniform highp vec4 pc6_h[25];


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
    highp float _440 = 1.0 / gl_FragCoord.w;
    highp vec2 _459 = gl_FragCoord.xy - View_ViewRectMin.xy;
    highp vec4 _467 = vec4(fma(_459, View_ViewSizeAndInvSize.zw, vec2(-0.5)) * vec2(2.0, -2.0), gl_FragCoord.z, 1.0) * _440;
    highp vec3 _476;
    if (View_ViewToClip[3].w >= 1.0)
    {
        _476 = -View_ViewForward;
    }
    else
    {
        _476 = normalize(-in_var_TEXCOORD8.xyz);
    }
    uint _707;
    highp vec2 _487 = Material_PreshaderBuffer_4.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_1.zw, Material_PreshaderBuffer_3.xy);
    highp vec2 _495 = Material_PreshaderBuffer_3.zw + vec2(dot(_487, Material_PreshaderBuffer_6.xy), dot(_487, Material_PreshaderBuffer_6.zw));
    vec2 _142 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_0Material_Texture2D_0Sampler, _495).xy, vec2(2.0), vec2(-1.0));
    highp float _502 = sqrt(clamp(1.0 - dot(_142, _142), 0.0, 1.0));
    vec2 _92 = vec4(_142, _502, 1.0).xy * vec2(Material_PreshaderBuffer_7.x);
    highp vec2 _523 = Material_PreshaderBuffer_14.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_11.zw, Material_PreshaderBuffer_13.xy);
    highp vec2 _531 = Material_PreshaderBuffer_13.zw + vec2(dot(_523, Material_PreshaderBuffer_16.xy), dot(_523, Material_PreshaderBuffer_16.zw));
    vec2 _148 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_1Material_Texture2D_1Sampler, _531).xy, vec2(2.0), vec2(-1.0));
    highp float _538 = sqrt(clamp(1.0 - dot(_148, _148), 0.0, 1.0));
    vec2 _96 = vec4(_148, _538, 1.0).xy * vec2(Material_PreshaderBuffer_17.x);
    highp vec2 _559 = Material_PreshaderBuffer_24.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_21.zw, Material_PreshaderBuffer_23.xy);
    highp vec2 _567 = Material_PreshaderBuffer_23.zw + vec2(dot(_559, Material_PreshaderBuffer_26.xy), dot(_559, Material_PreshaderBuffer_26.zw));
    vec2 _154 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_2Material_Texture2D_2Sampler, _567).xy, vec2(2.0), vec2(-1.0));
    highp float _574 = sqrt(clamp(1.0 - dot(_154, _154), 0.0, 1.0));
    vec2 _100 = vec4(_154, _574, 1.0).xy * vec2(Material_PreshaderBuffer_27.x);
    highp vec4 _588 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_3Material_Texture2D_3Sampler, _531);
    highp vec4 _592 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_4Material_Texture2D_4Sampler, _567);
    highp float _595 = mix(clamp(_588.z, 0.0, 1.0), _592.z, Material_PreshaderBuffer_31.y);
    float _109 = clamp(mix(Material_PreshaderBuffer_32.x, Material_PreshaderBuffer_32.y, clamp(fma(in_var_COLOR0.x, 2.0, mix(_595 * Material_PreshaderBuffer_31.z, (1.0 - _595) * Material_PreshaderBuffer_31.z, Material_PreshaderBuffer_31.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _112 = vec3(_109);
    highp vec4 _611 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_5Material_Texture2D_5Sampler, _495);
    highp float _614 = mix(clamp(_611.z, 0.0, 1.0), 0.0, Material_PreshaderBuffer_34.y);
    float _121 = clamp(mix(Material_PreshaderBuffer_35.x, Material_PreshaderBuffer_35.y, clamp(fma(in_var_COLOR0.y, 2.0, mix(_614 * Material_PreshaderBuffer_34.z, (1.0 - _614) * Material_PreshaderBuffer_34.z, Material_PreshaderBuffer_34.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _123 = vec3(_121);
    vec3 _125 = normalize(mat3(in_var_TEXCOORD10.xyz, cross(in_var_TEXCOORD11.xyz, in_var_TEXCOORD10.xyz) * in_var_TEXCOORD11.w, in_var_TEXCOORD11.xyz) * mix(vec3(dot(_92, Material_PreshaderBuffer_8.zw), dot(_92, Material_PreshaderBuffer_9.xy), _502), mix(vec3(dot(_96, Material_PreshaderBuffer_18.zw), dot(_96, Material_PreshaderBuffer_19.xy), _538), vec3(dot(_100, Material_PreshaderBuffer_28.zw), dot(_100, Material_PreshaderBuffer_29.xy), _574), _112), _123)) * 1.0;
    highp vec3 _631 = (-_476) + ((_125 * dot(_125, _476)) * 2.0);
    highp vec4 _635 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_6Material_Texture2D_6Sampler, _495);
    highp vec4 _639 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_7Material_Texture2D_7Sampler, _531);
    highp vec4 _643 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_8Material_Texture2D_8Sampler, _567);
    highp vec4 _647 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_9Material_Texture2D_9Sampler, _495);
    highp vec4 _651 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_10Material_Texture2D_10Sampler, _531);
    highp vec4 _655 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_11Material_Texture2D_11Sampler, _567);
    float _161 = clamp(mix(_647.x, mix(_651.x, _655.x, _109), _121), 0.0, 1.0);
    vec3 _162 = clamp(mix(_635.xyz, mix(_639.xyz, _643.xyz, _112), _123), vec3(0.0), vec3(1.0));
    highp float _656 = max(0.015625, clamp(mix(_611.x, mix(_588.y, _592.y, _109), _121), 0.0, 1.0));
    float _171 = _125.y;
    vec4 _272;
    _272.y = (-0.48860299587249755859375) * _171;
    float _172 = _125.z;
    _272.z = 0.48860299587249755859375 * _172;
    float _173 = _125.x;
    _272.w = (-0.48860299587249755859375) * _173;
    vec3 _174 = _125 * _125;
    vec4 _275;
    _275.x = (1.09254801273345947265625 * _173) * _171;
    _275.y = ((-1.09254801273345947265625) * _171) * _172;
    _275.z = 0.3153919875621795654296875 * fma(3.0, _174.z, -1.0);
    _275.w = ((-1.09254801273345947265625) * _173) * _172;
    _272.x = 0.885601043701171875;
    vec3 _167 = _272.yzw * 2.09375;
    vec4 _168 = vec4(_272.x, _167.x, _167.y, _167.z);
    vec4 _169 = _275 * 0.78515625;
    float _170 = (_174.x - _174.y) * 0.4289104640483856201171875;
    vec3 _280 = vec3(0.0);
    _280.x = fma(IndirectLightingCache_IndirectLightingSHCoefficients2.x, _170, dot(IndirectLightingCache_IndirectLightingSHCoefficients0_0, _168) + dot(IndirectLightingCache_IndirectLightingSHCoefficients1_0, _169));
    _280.y = fma(IndirectLightingCache_IndirectLightingSHCoefficients2.y, _170, dot(IndirectLightingCache_IndirectLightingSHCoefficients0_1, _168) + dot(IndirectLightingCache_IndirectLightingSHCoefficients1_1, _169));
    _280.z = fma(IndirectLightingCache_IndirectLightingSHCoefficients2.z, _170, dot(IndirectLightingCache_IndirectLightingSHCoefficients0_2, _168) + dot(IndirectLightingCache_IndirectLightingSHCoefficients1_2, _169));
    vec3 _164 = max(vec3(0.0), _280);
    highp vec4 _690 = vec4(_125, 1.0);
    highp vec3 _694;
    _694.x = dot(View_MobileSkyIrradianceEnvironmentMap_0, _690);
    _694.y = dot(View_MobileSkyIrradianceEnvironmentMap_1, _690);
    _694.z = dot(View_MobileSkyIrradianceEnvironmentMap_2, _690);
    highp vec3 _703 = max(vec3(0.0), _694);
    vec4 _268;
    do
    {
        _707 = Primitive_Flags;
        if (((_707 & 2u) != 0u) && (View_IndirectLightingCacheShowFlag > 0.0))
        {
            _268 = vec4(IndirectLightingCache_DirectionalLightShadowing, 1.0, 1.0, 1.0);
            break;
        }
        _268 = vec4(1.0);
        break;
    } while(false);
    highp float _715 = _467.w;
    highp vec4 _738;
    uint _722 = 0u;
    for (;;)
    {
        if (_722 < 4u)
        {
            if (_715 < MobileDirectionalLight_DirectionalLightShadowDistances[_722])
            {
                _738 = MobileDirectionalLight_DirectionalLightScreenToShadow(_722) * vec4(_467.xy, _715, 1.0);
                break;
            }
            _722++;
            continue;
        }
        else
        {
            _738 = vec4(0.0);
            break;
        }
    }
    float _269;
    if (_738.z > 0.0)
    {
        highp vec2 _747 = fma(_738.xy, MobileDirectionalLight_DirectionalLightShadowSize.xy, vec2(-0.5));
        highp vec2 _748 = fract(_747);
        highp vec2 _752 = (floor(_747) + vec2(1.0)) * MobileDirectionalLight_DirectionalLightShadowSize.zw;
        highp vec4 _757 = vec4(fma(min(1.0 - _738.z, 0.999989986419677734375), MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w, -1.0));
        highp vec4 _759 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _752, ivec2(-1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _757, vec4(0.0), vec4(1.0));
        highp vec4 _764 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _752, ivec2(1, -1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _757, vec4(0.0), vec4(1.0));
        highp vec4 _769 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _752, ivec2(-1, 1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _757, vec4(0.0), vec4(1.0));
        highp vec4 _774 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _752, ivec2(1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _757, vec4(0.0), vec4(1.0));
        highp float _776 = _748.x;
        highp float _777 = 1.0 - _776;
        highp vec4 _799;
        _799.x = fma(_764.z, _776, fma(_759.w, _777, _759.z) + _764.w);
        _799.y = fma(_764.y, _776, fma(_759.x, _777, _759.y) + _764.x);
        _799.z = fma(_774.z, _776, fma(_769.w, _777, _769.z) + _774.w);
        _799.w = fma(_774.y, _776, fma(_769.x, _777, _769.y) + _774.x);
        highp float _809 = _748.y;
        highp float _817 = clamp(fma(_715, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.x, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.y), 0.0, 1.0);
        _269 = mix(dot(_799, vec4(1.0 - _809, 1.0, 1.0, _809) * 0.111111111938953399658203125), 1.0, _817 * _817);
    }
    else
    {
        _269 = 1.0;
    }
    highp vec4 _835 = vec4(float(MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
    highp float _839 = max(0.0, dot(_125, normalize(_476 + MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz)));
    vec3 _218 = _162 * 0.318407952785491943359375;
    highp vec3 _840 = vec3(1.0) * max(0.0, dot(_125, MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz));
    float _219 = _656 * _656;
    highp float _844 = _839 * _219;
    highp float _846 = _219 / fma(_844, _844, fma(-_839, _839, 1.0));
    float _223 = fma(_656, 0.25, 0.25);
    vec4 _230 = (vec4(-1.0, -0.027496337890625, -0.57177734375, 0.022003173828125) * _656) + vec4(1.0, 0.042510986328125, 1.0400390625, -0.040008544921875);
    float _231 = _230.x;
    vec2 _240 = (vec2(-1.0400390625, 1.0400390625) * fma(min(_231 * _231, exp2((-9.28125) * clamp(abs(dot(_125, _476)) + 1.0013580322265625e-05, 0.0, 1.0))), _231, _230.y)) + _230.zw;
    highp vec3 _848 = (vec3(0.039999999105930328369140625) * _240.x) + vec3(_240.y);
    uvec2 _881 = uvec2(uint(_459.x), uint(_459.y)) >> (uvec2(MobileBasePass_Forward_LightGridPixelSizeShift) & uvec2(31u));
    vec3 _270;
    if (float(MobileReflectionCapture_Params.y > 0.0) != 0.0)
    {
        _270 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _631, (MobileReflectionCapture_Params.y - 1.0) - fma(-1.2001953125, log2(max(_656, 0.00100040435791015625)), 1.0)).xyz * View_SkyLightColor.xyz;
    }
    else
    {
        _270 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _631, (View_ReflectionCubemapMaxMip - 1.0) - fma(-1.2001953125, log2(max(_656, 0.00100040435791015625)), 1.0)).xyz * MobileReflectionCapture_Params.w;
    }
    uint _926 = ((((min(uint(max(0.0, log2(fma(_440, MobileBasePass_Forward_LightGridZParams.x, MobileBasePass_Forward_LightGridZParams.y)) * MobileBasePass_Forward_LightGridZParams.z)), uint(MobileBasePass_Forward_CulledGridSize.z - 1)) * uint(MobileBasePass_Forward_CulledGridSize.y)) + _881.y) * uint(MobileBasePass_Forward_CulledGridSize.x)) + _881.x) * 2u;
    uvec4 _934 = texelFetch(ps1, int(_926 + 1u));
    uint _935 = _934.x;
    uint _948 = (uint((_707 & 2048u) != 0u) | (uint((_707 & 4096u) != 0u) << 1u)) | (uint((_707 & 8192u) != 0u) << 2u);
    uint _949 = min(min(texelFetch(ps1, int(_926)).x, MobileBasePass_Forward_NumLocalLights), MobileBasePass_Forward_NumLocalLights);
    highp vec3 _951;
    _951 = fma((_270 * mix(1.0, min(((dot(_164, vec3(0.300048828125, 0.58984375, 0.1099853515625)) + dot(_703 * View_SkyLightColor.xyz, vec3(0.300048828125, 0.58984375, 0.1099853515625))) * _161) / max(MobileReflectionCapture_Params.x, 9.9999997473787516355514526367188e-05), View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0, 1.0, clamp(fma(_656, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0, 1.0)))) * _161, _848, fma(fma(_703, View_SkyLightColor.xyz, _164) * _162, vec3(_161), fma(((_218 * _840) * 1.0) + ((_840 * (_848 * (min((0.318407952785491943359375 * _846) * _846, 2048.0) * _223))) * MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.z), MobileDirectionalLight_DirectionalLightColor.xyz * (_269 * mix(1.0, dot(_268, _835), dot(_835, vec4(1.0)))), vec3(0.0))));
    highp vec3 _952;
    SPIRV_CROSS_LOOP
    for (uint _954 = 0u; _954 < _949; _951 = _952, _954++)
    {
        uint _963 = texelFetch(ps2, int(_935 + _954)).x * 6u;
        highp vec4 _965 = texelFetch(ps0, int(_963));
        highp vec4 _967 = texelFetch(ps0, int(_963 + 1u));
        highp vec4 _969 = texelFetch(ps0, int(_963 + 2u));
        highp float _972 = _965.w;
        highp float _973 = _972 * _972;
        highp vec3 _974 = _965.xyz;
        highp vec3 _975 = in_var_TEXCOORD8.xyz - _974;
        if (!((dot(_975, _975) * _973) <= 1.0))
        {
            _952 = _951;
            continue;
        }
        uint _983 = floatBitsToUint(_969.w);
        if ((((_983 >> 8u) & 7u) & _948) == 0u)
        {
            _952 = _951;
            continue;
        }
        uint _991 = (_983 >> 16u) & 3u;
        highp float _993 = _967.w;
        uint _996 = floatBitsToUint(texelFetch(ps0, int(_963 + 3u)).x);
        highp vec4 _1019 = vec4(float(_983 & 1u), float((_983 & 2u) >> 1u), float((_983 & 4u) >> 2u), float((_983 & 8u) >> 3u));
        highp vec3 _1021 = _974 - in_var_TEXCOORD8.xyz;
        highp float _1022 = dot(_1021, _1021);
        highp vec3 _1024 = _1021 * inversesqrt(_1022);
        highp float _1041;
        if (_993 == 0.0)
        {
            highp float _1033 = _1022 * _973;
            highp float _1036 = clamp(fma(-_1033, _1033, 1.0), 0.0, 1.0);
            _1041 = (_1036 * _1036) * (1.0 / (_1022 + 1.0));
        }
        else
        {
            highp vec3 _1028 = _1021 * _972;
            _1041 = pow(1.0 - clamp(dot(_1028, _1028), 0.0, 1.0), _993);
        }
        highp float _1050;
        if ((_991 == 2u) || (_991 == 3u))
        {
            highp float _1047 = clamp((dot(_1024, _969.xyz) - unpackHalf2x16(_996 & 65535u).x) * unpackHalf2x16(_996 >> 16u).x, 0.0, 1.0);
            _1050 = _1041 * (_1047 * _1047);
        }
        else
        {
            _1050 = _1041;
        }
        highp vec3 _1075;
        SPIRV_CROSS_BRANCH
        if (_1050 > 0.0)
        {
            float _271;
            SPIRV_CROSS_BRANCH
            if (uint((_983 & 255u) != 0u) != 0u)
            {
                _271 = mix(1.0, dot(_268, _1019), dot(_1019, vec4(1.0)));
            }
            else
            {
                _271 = 1.0;
            }
            highp float _1061 = max(0.0, dot(_125, normalize(_476 + _1024)));
            highp vec3 _1062 = vec3(1.0) * max(0.0, dot(_125, _1024));
            highp float _1066 = _1061 * _219;
            highp float _1068 = _219 / fma(_1066, _1066, fma(-_1061, _1061, 1.0));
            _1075 = fma(((_218 * _1062) * 1.0) + ((_1062 * (_848 * (min((0.318407952785491943359375 * _1068) * _1068, 2048.0) * _223))) * 1.0), (_967.xyz * _1050) * _271, vec3(0.0));
        }
        else
        {
            _1075 = vec3(0.0);
        }
        _952 = _951 + _1075;
    }
    vec3 _74 = (_951 + max(vec3(0.0), vec3(0.0))) * 1.0;
    vec4 _75 = vec4(_74.x, _74.y, _74.z, _432.w);
    _75.w = 0.0;
    highp vec3 _1079 = min((_75.xyz * View_PreExposure).xyz, vec3(32512.0, 32512.0, 32256.0));
    out_var_SV_Target0 = vec4(_1079.x, _1079.y, _1079.z, _75.w);
    out_var_SV_Target1 = gl_FragCoord.z;
}

