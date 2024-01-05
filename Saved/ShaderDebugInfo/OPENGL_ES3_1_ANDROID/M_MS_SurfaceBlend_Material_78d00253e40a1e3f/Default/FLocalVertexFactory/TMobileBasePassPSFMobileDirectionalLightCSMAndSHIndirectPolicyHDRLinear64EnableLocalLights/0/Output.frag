// ! M_MS_SurfaceBlend_Material_78d00253e40a1e3f/Default/FLocalVertexFactory/TMobileBasePassPSFMobileDirectionalLightCSMAndSHIndirectPolicyHDRLinear64EnableLocalLights/0/MobileBasePassPixelShader.usf:Main
// Compiled by ShaderConductor
// @Inputs: f4;10:in_var_TEXCOORD10,f4;11:in_var_TEXCOORD11,f4;0:in_var_COLOR0,f4;1:in_var_TEXCOORD0,f4;8:in_var_TEXCOORD8
// @Outputs: f4;0:out_Target0,f1;1:out_Target1
// @PackedUB: View(0): View_ViewToClip(128,16),View_ViewForward(264,3),View_ViewRectMin(512,4),View_ViewSizeAndInvSize(516,4),View_PreExposure(545,1),View_SkyLightColor(748,4),View_ReflectionCubemapMaxMip(786,1),View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight(792,3),View_IndirectLightingCacheShowFlag(947,1)
// @PackedUB: MobileReflectionCapture(1): MobileReflectionCapture_Params(0,4)
// @PackedUB: Primitive(2): Primitive_Flags(0,1)
// @PackedUB: MobileBasePass(3): MobileBasePass_Forward_NumLocalLights(52,1),MobileBasePass_Forward_CulledGridSize(56,3),MobileBasePass_Forward_LightGridPixelSizeShift(60,1),MobileBasePass_Forward_LightGridZParams(64,3)
// @PackedUB: IndirectLightingCache(4): IndirectLightingCache_DirectionalLightShadowing(20,1),IndirectLightingCache_IndirectLightingSHCoefficients0_0(24,4),IndirectLightingCache_IndirectLightingSHCoefficients0_1(28,4),IndirectLightingCache_IndirectLightingSHCoefficients0_2(32,4),IndirectLightingCache_IndirectLightingSHCoefficients1_0(36,4),IndirectLightingCache_IndirectLightingSHCoefficients1_1(40,4),IndirectLightingCache_IndirectLightingSHCoefficients1_2(44,4),IndirectLightingCache_IndirectLightingSHCoefficients2(48,4)
// @PackedUB: MobileDirectionalLight(5): MobileDirectionalLight_DirectionalLightColor(0,4),MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition(4,4),MobileDirectionalLight_DirectionalLightShadowSize(8,4),MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale(12,4),MobileDirectionalLight_DirectionalLightShadowDistances(16,4),MobileDirectionalLight_DirectionalLightScreenToShadow(20,64),MobileDirectionalLight_DirectionalLightShadowMapChannelMask(84,1)
// @PackedUB: Material(6): Material_PreshaderBuffer_1(4,4),Material_PreshaderBuffer_3(12,4),Material_PreshaderBuffer_4(16,4),Material_PreshaderBuffer_6(24,4),Material_PreshaderBuffer_7(28,4),Material_PreshaderBuffer_8(32,4),Material_PreshaderBuffer_9(36,4),Material_PreshaderBuffer_11(44,4),Material_PreshaderBuffer_13(52,4),Material_PreshaderBuffer_14(56,4),Material_PreshaderBuffer_16(64,4),Material_PreshaderBuffer_17(68,4),Material_PreshaderBuffer_18(72,4),Material_PreshaderBuffer_19(76,4),Material_PreshaderBuffer_21(84,4),Material_PreshaderBuffer_23(92,4),Material_PreshaderBuffer_24(96,4),Material_PreshaderBuffer_26(104,4),Material_PreshaderBuffer_27(108,4),Material_PreshaderBuffer_28(112,4),Material_PreshaderBuffer_29(116,4),Material_PreshaderBuffer_31(124,4),Material_PreshaderBuffer_32(128,4),Material_PreshaderBuffer_34(136,4),Material_PreshaderBuffer_35(140,4)
// @PackedUBCopies: 0:128-0:h:0:16,0:264-0:m:0:3,0:512-0:m:4:4,0:516-0:h:16:4,0:545-0:h:20:1,0:748-0:h:24:4,0:786-0:m:8:1,0:792-0:h:28:3,0:947-0:h:32:1,1:0-1:h:0:4,2:0-2:u:0:1,3:52-3:u:0:1,3:56-3:i:0:3,3:60-3:u:4:1,3:64-3:h:0:3,4:20-4:m:0:1,4:24-4:h:0:28,5:0-5:m:0:20,5:20-5:h:0:64,5:84-5:u:0:1,6:4-6:h:0:4,6:12-6:h:4:8,6:24-6:h:12:16,6:44-6:h:28:4,6:52-6:h:32:8,6:64-6:h:40:16,6:84-6:h:56:4,6:92-6:h:60:8,6:104-6:h:68:16,6:124-6:h:84:8,6:136-6:h:92:8
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

vec4 _426;
vec4 _428;

#define View_IndirectLightingCacheShowFlag (pc0_h[8].x)
#define View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight (pc0_h[7].xyz)
#define View_ReflectionCubemapMaxMip (pc0_m[2].x)
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
uniform highp vec4 pc0_h[9];


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
    highp float _433 = 1.0 / gl_FragCoord.w;
    highp vec2 _452 = gl_FragCoord.xy - View_ViewRectMin.xy;
    highp vec4 _460 = vec4(fma(_452, View_ViewSizeAndInvSize.zw, vec2(-0.5)) * vec2(2.0, -2.0), gl_FragCoord.z, 1.0) * _433;
    highp vec3 _469;
    if (View_ViewToClip[3].w >= 1.0)
    {
        _469 = -View_ViewForward;
    }
    else
    {
        _469 = normalize(-in_var_TEXCOORD8.xyz);
    }
    uint _682;
    highp vec2 _480 = Material_PreshaderBuffer_4.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_1.zw, Material_PreshaderBuffer_3.xy);
    highp vec2 _488 = Material_PreshaderBuffer_3.zw + vec2(dot(_480, Material_PreshaderBuffer_6.xy), dot(_480, Material_PreshaderBuffer_6.zw));
    vec2 _141 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_0Material_Texture2D_0Sampler, _488).xy, vec2(2.0), vec2(-1.0));
    highp float _495 = sqrt(clamp(1.0 - dot(_141, _141), 0.0, 1.0));
    vec2 _91 = vec4(_141, _495, 1.0).xy * vec2(Material_PreshaderBuffer_7.x);
    highp vec2 _516 = Material_PreshaderBuffer_14.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_11.zw, Material_PreshaderBuffer_13.xy);
    highp vec2 _524 = Material_PreshaderBuffer_13.zw + vec2(dot(_516, Material_PreshaderBuffer_16.xy), dot(_516, Material_PreshaderBuffer_16.zw));
    vec2 _147 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_1Material_Texture2D_1Sampler, _524).xy, vec2(2.0), vec2(-1.0));
    highp float _531 = sqrt(clamp(1.0 - dot(_147, _147), 0.0, 1.0));
    vec2 _95 = vec4(_147, _531, 1.0).xy * vec2(Material_PreshaderBuffer_17.x);
    highp vec2 _552 = Material_PreshaderBuffer_24.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_21.zw, Material_PreshaderBuffer_23.xy);
    highp vec2 _560 = Material_PreshaderBuffer_23.zw + vec2(dot(_552, Material_PreshaderBuffer_26.xy), dot(_552, Material_PreshaderBuffer_26.zw));
    vec2 _153 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_2Material_Texture2D_2Sampler, _560).xy, vec2(2.0), vec2(-1.0));
    highp float _567 = sqrt(clamp(1.0 - dot(_153, _153), 0.0, 1.0));
    vec2 _99 = vec4(_153, _567, 1.0).xy * vec2(Material_PreshaderBuffer_27.x);
    highp vec4 _581 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_3Material_Texture2D_3Sampler, _524);
    highp vec4 _585 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_4Material_Texture2D_4Sampler, _560);
    highp float _588 = mix(clamp(_581.z, 0.0, 1.0), _585.z, Material_PreshaderBuffer_31.y);
    float _108 = clamp(mix(Material_PreshaderBuffer_32.x, Material_PreshaderBuffer_32.y, clamp(fma(in_var_COLOR0.x, 2.0, mix(_588 * Material_PreshaderBuffer_31.z, (1.0 - _588) * Material_PreshaderBuffer_31.z, Material_PreshaderBuffer_31.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _111 = vec3(_108);
    highp vec4 _604 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_5Material_Texture2D_5Sampler, _488);
    highp float _607 = mix(clamp(_604.z, 0.0, 1.0), 0.0, Material_PreshaderBuffer_34.y);
    float _120 = clamp(mix(Material_PreshaderBuffer_35.x, Material_PreshaderBuffer_35.y, clamp(fma(in_var_COLOR0.y, 2.0, mix(_607 * Material_PreshaderBuffer_34.z, (1.0 - _607) * Material_PreshaderBuffer_34.z, Material_PreshaderBuffer_34.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _122 = vec3(_120);
    vec3 _124 = normalize(mat3(in_var_TEXCOORD10.xyz, cross(in_var_TEXCOORD11.xyz, in_var_TEXCOORD10.xyz) * in_var_TEXCOORD11.w, in_var_TEXCOORD11.xyz) * mix(vec3(dot(_91, Material_PreshaderBuffer_8.zw), dot(_91, Material_PreshaderBuffer_9.xy), _495), mix(vec3(dot(_95, Material_PreshaderBuffer_18.zw), dot(_95, Material_PreshaderBuffer_19.xy), _531), vec3(dot(_99, Material_PreshaderBuffer_28.zw), dot(_99, Material_PreshaderBuffer_29.xy), _567), _111), _122)) * 1.0;
    highp vec3 _624 = (-_469) + ((_124 * dot(_124, _469)) * 2.0);
    highp vec4 _628 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_6Material_Texture2D_6Sampler, _488);
    highp vec4 _632 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_7Material_Texture2D_7Sampler, _524);
    highp vec4 _636 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_8Material_Texture2D_8Sampler, _560);
    highp vec4 _640 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_9Material_Texture2D_9Sampler, _488);
    highp vec4 _644 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_10Material_Texture2D_10Sampler, _524);
    highp vec4 _648 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_11Material_Texture2D_11Sampler, _560);
    float _160 = clamp(mix(_640.x, mix(_644.x, _648.x, _108), _120), 0.0, 1.0);
    vec3 _161 = clamp(mix(_628.xyz, mix(_632.xyz, _636.xyz, _111), _122), vec3(0.0), vec3(1.0));
    highp float _649 = max(0.015625, clamp(mix(_604.x, mix(_581.y, _585.y, _108), _120), 0.0, 1.0));
    float _169 = _124.y;
    vec4 _267;
    _267.y = (-0.48860299587249755859375) * _169;
    float _170 = _124.z;
    _267.z = 0.48860299587249755859375 * _170;
    float _171 = _124.x;
    _267.w = (-0.48860299587249755859375) * _171;
    vec3 _172 = _124 * _124;
    vec4 _270;
    _270.x = (1.09254801273345947265625 * _171) * _169;
    _270.y = ((-1.09254801273345947265625) * _169) * _170;
    _270.z = 0.3153919875621795654296875 * fma(3.0, _172.z, -1.0);
    _270.w = ((-1.09254801273345947265625) * _171) * _170;
    _267.x = 0.885601043701171875;
    vec3 _165 = _267.yzw * 2.09375;
    vec4 _166 = vec4(_267.x, _165.x, _165.y, _165.z);
    vec4 _167 = _270 * 0.78515625;
    float _168 = (_172.x - _172.y) * 0.4289104640483856201171875;
    vec3 _275 = vec3(0.0);
    _275.x = fma(IndirectLightingCache_IndirectLightingSHCoefficients2.x, _168, dot(IndirectLightingCache_IndirectLightingSHCoefficients0_0, _166) + dot(IndirectLightingCache_IndirectLightingSHCoefficients1_0, _167));
    _275.y = fma(IndirectLightingCache_IndirectLightingSHCoefficients2.y, _168, dot(IndirectLightingCache_IndirectLightingSHCoefficients0_1, _166) + dot(IndirectLightingCache_IndirectLightingSHCoefficients1_1, _167));
    _275.z = fma(IndirectLightingCache_IndirectLightingSHCoefficients2.z, _168, dot(IndirectLightingCache_IndirectLightingSHCoefficients0_2, _166) + dot(IndirectLightingCache_IndirectLightingSHCoefficients1_2, _167));
    vec3 _163 = max(vec3(0.0), _275);
    vec4 _263;
    do
    {
        _682 = Primitive_Flags;
        if (((_682 & 2u) != 0u) && (View_IndirectLightingCacheShowFlag > 0.0))
        {
            _263 = vec4(IndirectLightingCache_DirectionalLightShadowing, 1.0, 1.0, 1.0);
            break;
        }
        _263 = vec4(1.0);
        break;
    } while(false);
    highp float _690 = _460.w;
    highp vec4 _713;
    uint _697 = 0u;
    for (;;)
    {
        if (_697 < 4u)
        {
            if (_690 < MobileDirectionalLight_DirectionalLightShadowDistances[_697])
            {
                _713 = MobileDirectionalLight_DirectionalLightScreenToShadow(_697) * vec4(_460.xy, _690, 1.0);
                break;
            }
            _697++;
            continue;
        }
        else
        {
            _713 = vec4(0.0);
            break;
        }
    }
    float _264;
    if (_713.z > 0.0)
    {
        highp vec2 _722 = fma(_713.xy, MobileDirectionalLight_DirectionalLightShadowSize.xy, vec2(-0.5));
        highp vec2 _723 = fract(_722);
        highp vec2 _727 = (floor(_722) + vec2(1.0)) * MobileDirectionalLight_DirectionalLightShadowSize.zw;
        highp vec4 _732 = vec4(fma(min(1.0 - _713.z, 0.999989986419677734375), MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w, -1.0));
        highp vec4 _734 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _727, ivec2(-1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _732, vec4(0.0), vec4(1.0));
        highp vec4 _739 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _727, ivec2(1, -1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _732, vec4(0.0), vec4(1.0));
        highp vec4 _744 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _727, ivec2(-1, 1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _732, vec4(0.0), vec4(1.0));
        highp vec4 _749 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _727, ivec2(1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _732, vec4(0.0), vec4(1.0));
        highp float _751 = _723.x;
        highp float _752 = 1.0 - _751;
        highp vec4 _774;
        _774.x = fma(_739.z, _751, fma(_734.w, _752, _734.z) + _739.w);
        _774.y = fma(_739.y, _751, fma(_734.x, _752, _734.y) + _739.x);
        _774.z = fma(_749.z, _751, fma(_744.w, _752, _744.z) + _749.w);
        _774.w = fma(_749.y, _751, fma(_744.x, _752, _744.y) + _749.x);
        highp float _784 = _723.y;
        highp float _792 = clamp(fma(_690, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.x, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.y), 0.0, 1.0);
        _264 = mix(dot(_774, vec4(1.0 - _784, 1.0, 1.0, _784) * 0.111111111938953399658203125), 1.0, _792 * _792);
    }
    else
    {
        _264 = 1.0;
    }
    highp vec4 _810 = vec4(float(MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
    highp float _814 = max(0.0, dot(_124, normalize(_469 + MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz)));
    vec3 _213 = _161 * 0.318407952785491943359375;
    highp vec3 _815 = vec3(1.0) * max(0.0, dot(_124, MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz));
    float _214 = _649 * _649;
    highp float _819 = _814 * _214;
    highp float _821 = _214 / fma(_819, _819, fma(-_814, _814, 1.0));
    float _218 = fma(_649, 0.25, 0.25);
    vec4 _225 = (vec4(-1.0, -0.027496337890625, -0.57177734375, 0.022003173828125) * _649) + vec4(1.0, 0.042510986328125, 1.0400390625, -0.040008544921875);
    float _226 = _225.x;
    vec2 _235 = (vec2(-1.0400390625, 1.0400390625) * fma(min(_226 * _226, exp2((-9.28125) * clamp(abs(dot(_124, _469)) + 1.0013580322265625e-05, 0.0, 1.0))), _226, _225.y)) + _225.zw;
    highp vec3 _823 = (vec3(0.039999999105930328369140625) * _235.x) + vec3(_235.y);
    uvec2 _856 = uvec2(uint(_452.x), uint(_452.y)) >> (uvec2(MobileBasePass_Forward_LightGridPixelSizeShift) & uvec2(31u));
    vec3 _265;
    if (float(MobileReflectionCapture_Params.y > 0.0) != 0.0)
    {
        _265 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _624, (MobileReflectionCapture_Params.y - 1.0) - fma(-1.2001953125, log2(max(_649, 0.00100040435791015625)), 1.0)).xyz * View_SkyLightColor.xyz;
    }
    else
    {
        _265 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _624, (View_ReflectionCubemapMaxMip - 1.0) - fma(-1.2001953125, log2(max(_649, 0.00100040435791015625)), 1.0)).xyz * MobileReflectionCapture_Params.w;
    }
    uint _902 = ((((min(uint(max(0.0, log2(fma(_433, MobileBasePass_Forward_LightGridZParams.x, MobileBasePass_Forward_LightGridZParams.y)) * MobileBasePass_Forward_LightGridZParams.z)), uint(MobileBasePass_Forward_CulledGridSize.z - 1)) * uint(MobileBasePass_Forward_CulledGridSize.y)) + _856.y) * uint(MobileBasePass_Forward_CulledGridSize.x)) + _856.x) * 2u;
    uvec4 _910 = texelFetch(ps1, int(_902 + 1u));
    uint _911 = _910.x;
    uint _924 = (uint((_682 & 2048u) != 0u) | (uint((_682 & 4096u) != 0u) << 1u)) | (uint((_682 & 8192u) != 0u) << 2u);
    uint _925 = min(min(texelFetch(ps1, int(_902)).x, MobileBasePass_Forward_NumLocalLights), MobileBasePass_Forward_NumLocalLights);
    highp vec3 _927;
    _927 = fma((_265 * mix(1.0, min((dot(_163, vec3(0.300048828125, 0.58984375, 0.1099853515625)) * _160) / max(MobileReflectionCapture_Params.x, 9.9999997473787516355514526367188e-05), View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0, 1.0, clamp(fma(_649, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0, 1.0)))) * _160, _823, fma(_163 * _161, vec3(_160), fma(((_213 * _815) * 1.0) + ((_815 * (_823 * (min((0.318407952785491943359375 * _821) * _821, 2048.0) * _218))) * MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.z), MobileDirectionalLight_DirectionalLightColor.xyz * (_264 * mix(1.0, dot(_263, _810), dot(_810, vec4(1.0)))), vec3(0.0))));
    highp vec3 _928;
    SPIRV_CROSS_LOOP
    for (uint _930 = 0u; _930 < _925; _927 = _928, _930++)
    {
        uint _939 = texelFetch(ps2, int(_911 + _930)).x * 6u;
        highp vec4 _941 = texelFetch(ps0, int(_939));
        highp vec4 _943 = texelFetch(ps0, int(_939 + 1u));
        highp vec4 _945 = texelFetch(ps0, int(_939 + 2u));
        highp float _948 = _941.w;
        highp float _949 = _948 * _948;
        highp vec3 _950 = _941.xyz;
        highp vec3 _951 = in_var_TEXCOORD8.xyz - _950;
        if (!((dot(_951, _951) * _949) <= 1.0))
        {
            _928 = _927;
            continue;
        }
        uint _959 = floatBitsToUint(_945.w);
        if ((((_959 >> 8u) & 7u) & _924) == 0u)
        {
            _928 = _927;
            continue;
        }
        uint _967 = (_959 >> 16u) & 3u;
        highp float _969 = _943.w;
        uint _972 = floatBitsToUint(texelFetch(ps0, int(_939 + 3u)).x);
        highp vec4 _995 = vec4(float(_959 & 1u), float((_959 & 2u) >> 1u), float((_959 & 4u) >> 2u), float((_959 & 8u) >> 3u));
        highp vec3 _997 = _950 - in_var_TEXCOORD8.xyz;
        highp float _998 = dot(_997, _997);
        highp vec3 _1000 = _997 * inversesqrt(_998);
        highp float _1017;
        if (_969 == 0.0)
        {
            highp float _1009 = _998 * _949;
            highp float _1012 = clamp(fma(-_1009, _1009, 1.0), 0.0, 1.0);
            _1017 = (_1012 * _1012) * (1.0 / (_998 + 1.0));
        }
        else
        {
            highp vec3 _1004 = _997 * _948;
            _1017 = pow(1.0 - clamp(dot(_1004, _1004), 0.0, 1.0), _969);
        }
        highp float _1026;
        if ((_967 == 2u) || (_967 == 3u))
        {
            highp float _1023 = clamp((dot(_1000, _945.xyz) - unpackHalf2x16(_972 & 65535u).x) * unpackHalf2x16(_972 >> 16u).x, 0.0, 1.0);
            _1026 = _1017 * (_1023 * _1023);
        }
        else
        {
            _1026 = _1017;
        }
        highp vec3 _1051;
        SPIRV_CROSS_BRANCH
        if (_1026 > 0.0)
        {
            float _266;
            SPIRV_CROSS_BRANCH
            if (uint((_959 & 255u) != 0u) != 0u)
            {
                _266 = mix(1.0, dot(_263, _995), dot(_995, vec4(1.0)));
            }
            else
            {
                _266 = 1.0;
            }
            highp float _1037 = max(0.0, dot(_124, normalize(_469 + _1000)));
            highp vec3 _1038 = vec3(1.0) * max(0.0, dot(_124, _1000));
            highp float _1042 = _1037 * _214;
            highp float _1044 = _214 / fma(_1042, _1042, fma(-_1037, _1037, 1.0));
            _1051 = fma(((_213 * _1038) * 1.0) + ((_1038 * (_823 * (min((0.318407952785491943359375 * _1044) * _1044, 2048.0) * _218))) * 1.0), (_943.xyz * _1026) * _266, vec3(0.0));
        }
        else
        {
            _1051 = vec3(0.0);
        }
        _928 = _927 + _1051;
    }
    vec3 _73 = (_927 + max(vec3(0.0), vec3(0.0))) * 1.0;
    vec4 _74 = vec4(_73.x, _73.y, _73.z, _426.w);
    _74.w = 0.0;
    highp vec3 _1055 = min((_74.xyz * View_PreExposure).xyz, vec3(32512.0, 32512.0, 32256.0));
    out_var_SV_Target0 = vec4(_1055.x, _1055.y, _1055.z, _74.w);
    out_var_SV_Target1 = gl_FragCoord.z;
}

