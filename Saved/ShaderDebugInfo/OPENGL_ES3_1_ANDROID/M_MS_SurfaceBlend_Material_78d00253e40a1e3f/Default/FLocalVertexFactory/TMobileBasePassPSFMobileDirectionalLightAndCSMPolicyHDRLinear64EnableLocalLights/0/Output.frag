// ! M_MS_SurfaceBlend_Material_78d00253e40a1e3f/Default/FLocalVertexFactory/TMobileBasePassPSFMobileDirectionalLightAndCSMPolicyHDRLinear64EnableLocalLights/0/MobileBasePassPixelShader.usf:Main
// Compiled by ShaderConductor
// @Inputs: f4;10:in_var_TEXCOORD10,f4;11:in_var_TEXCOORD11,f4;0:in_var_COLOR0,f4;1:in_var_TEXCOORD0,f4;8:in_var_TEXCOORD8
// @Outputs: f4;0:out_Target0,f1;1:out_Target1
// @PackedUB: View(0): View_ViewToClip(128,16),View_ViewForward(264,3),View_ViewRectMin(512,4),View_ViewSizeAndInvSize(516,4),View_PreExposure(545,1),View_SkyLightColor(748,4),View_ReflectionCubemapMaxMip(786,1),View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight(792,3)
// @PackedUB: MobileReflectionCapture(1): MobileReflectionCapture_Params(0,4)
// @PackedUB: Primitive(2): Primitive_Flags(0,1)
// @PackedUB: MobileBasePass(3): MobileBasePass_Forward_NumLocalLights(52,1),MobileBasePass_Forward_CulledGridSize(56,3),MobileBasePass_Forward_LightGridPixelSizeShift(60,1),MobileBasePass_Forward_LightGridZParams(64,3)
// @PackedUB: MobileDirectionalLight(4): MobileDirectionalLight_DirectionalLightColor(0,4),MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition(4,4),MobileDirectionalLight_DirectionalLightShadowSize(8,4),MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale(12,4),MobileDirectionalLight_DirectionalLightShadowDistances(16,4),MobileDirectionalLight_DirectionalLightScreenToShadow(20,64),MobileDirectionalLight_DirectionalLightShadowMapChannelMask(84,1)
// @PackedUB: Material(5): Material_PreshaderBuffer_1(4,4),Material_PreshaderBuffer_3(12,4),Material_PreshaderBuffer_4(16,4),Material_PreshaderBuffer_6(24,4),Material_PreshaderBuffer_7(28,4),Material_PreshaderBuffer_8(32,4),Material_PreshaderBuffer_9(36,4),Material_PreshaderBuffer_11(44,4),Material_PreshaderBuffer_13(52,4),Material_PreshaderBuffer_14(56,4),Material_PreshaderBuffer_16(64,4),Material_PreshaderBuffer_17(68,4),Material_PreshaderBuffer_18(72,4),Material_PreshaderBuffer_19(76,4),Material_PreshaderBuffer_21(84,4),Material_PreshaderBuffer_23(92,4),Material_PreshaderBuffer_24(96,4),Material_PreshaderBuffer_26(104,4),Material_PreshaderBuffer_27(108,4),Material_PreshaderBuffer_28(112,4),Material_PreshaderBuffer_29(116,4),Material_PreshaderBuffer_31(124,4),Material_PreshaderBuffer_32(128,4),Material_PreshaderBuffer_34(136,4),Material_PreshaderBuffer_35(140,4)
// @PackedUBCopies: 0:128-0:h:0:16,0:264-0:m:0:3,0:512-0:m:4:4,0:516-0:h:16:4,0:545-0:h:20:1,0:748-0:h:24:4,0:786-0:m:8:1,0:792-0:h:28:3,1:0-1:h:0:4,2:0-2:u:0:1,3:52-3:u:0:1,3:56-3:i:0:3,3:60-3:u:4:1,3:64-3:h:0:3,4:0-4:m:0:20,4:20-4:h:0:64,4:84-4:u:0:1,5:4-5:h:0:4,5:12-5:h:4:8,5:24-5:h:12:16,5:44-5:h:28:4,5:52-5:h:32:8,5:64-5:h:40:16,5:84-5:h:56:4,5:92-5:h:60:8,5:104-5:h:68:16,5:124-5:h:84:8,5:136-5:h:92:8
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

vec4 _364;

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
uniform highp vec4 pc0_h[8];


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
    highp float _369 = 1.0 / gl_FragCoord.w;
    highp vec2 _386 = gl_FragCoord.xy - View_ViewRectMin.xy;
    highp vec4 _394 = vec4(fma(_386, View_ViewSizeAndInvSize.zw, vec2(-0.5)) * vec2(2.0, -2.0), gl_FragCoord.z, 1.0) * _369;
    highp vec3 _403;
    if (View_ViewToClip[3].w >= 1.0)
    {
        _403 = -View_ViewForward;
    }
    else
    {
        _403 = normalize(-in_var_TEXCOORD8.xyz);
    }
    highp vec2 _414 = Material_PreshaderBuffer_4.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_1.zw, Material_PreshaderBuffer_3.xy);
    highp vec2 _422 = Material_PreshaderBuffer_3.zw + vec2(dot(_414, Material_PreshaderBuffer_6.xy), dot(_414, Material_PreshaderBuffer_6.zw));
    vec2 _136 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_0Material_Texture2D_0Sampler, _422).xy, vec2(2.0), vec2(-1.0));
    highp float _429 = sqrt(clamp(1.0 - dot(_136, _136), 0.0, 1.0));
    vec2 _86 = vec4(_136, _429, 1.0).xy * vec2(Material_PreshaderBuffer_7.x);
    highp vec2 _450 = Material_PreshaderBuffer_14.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_11.zw, Material_PreshaderBuffer_13.xy);
    highp vec2 _458 = Material_PreshaderBuffer_13.zw + vec2(dot(_450, Material_PreshaderBuffer_16.xy), dot(_450, Material_PreshaderBuffer_16.zw));
    vec2 _142 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_1Material_Texture2D_1Sampler, _458).xy, vec2(2.0), vec2(-1.0));
    highp float _465 = sqrt(clamp(1.0 - dot(_142, _142), 0.0, 1.0));
    vec2 _90 = vec4(_142, _465, 1.0).xy * vec2(Material_PreshaderBuffer_17.x);
    highp vec2 _486 = Material_PreshaderBuffer_24.xy + fma(vec2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_PreshaderBuffer_21.zw, Material_PreshaderBuffer_23.xy);
    highp vec2 _494 = Material_PreshaderBuffer_23.zw + vec2(dot(_486, Material_PreshaderBuffer_26.xy), dot(_486, Material_PreshaderBuffer_26.zw));
    vec2 _148 = fma(texture(SPIRV_Cross_CombinedMaterial_Texture2D_2Material_Texture2D_2Sampler, _494).xy, vec2(2.0), vec2(-1.0));
    highp float _501 = sqrt(clamp(1.0 - dot(_148, _148), 0.0, 1.0));
    vec2 _94 = vec4(_148, _501, 1.0).xy * vec2(Material_PreshaderBuffer_27.x);
    highp vec4 _515 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_3Material_Texture2D_3Sampler, _458);
    highp vec4 _519 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_4Material_Texture2D_4Sampler, _494);
    highp float _522 = mix(clamp(_515.z, 0.0, 1.0), _519.z, Material_PreshaderBuffer_31.y);
    float _103 = clamp(mix(Material_PreshaderBuffer_32.x, Material_PreshaderBuffer_32.y, clamp(fma(in_var_COLOR0.x, 2.0, mix(_522 * Material_PreshaderBuffer_31.z, (1.0 - _522) * Material_PreshaderBuffer_31.z, Material_PreshaderBuffer_31.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _106 = vec3(_103);
    highp vec4 _538 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_5Material_Texture2D_5Sampler, _422);
    highp float _541 = mix(clamp(_538.z, 0.0, 1.0), 0.0, Material_PreshaderBuffer_34.y);
    float _115 = clamp(mix(Material_PreshaderBuffer_35.x, Material_PreshaderBuffer_35.y, clamp(fma(in_var_COLOR0.y, 2.0, mix(_541 * Material_PreshaderBuffer_34.z, (1.0 - _541) * Material_PreshaderBuffer_34.z, Material_PreshaderBuffer_34.w) - 1.0), 0.0, 1.0)), 0.0, 1.0);
    vec3 _117 = vec3(_115);
    vec3 _119 = normalize(mat3(in_var_TEXCOORD10.xyz, cross(in_var_TEXCOORD11.xyz, in_var_TEXCOORD10.xyz) * in_var_TEXCOORD11.w, in_var_TEXCOORD11.xyz) * mix(vec3(dot(_86, Material_PreshaderBuffer_8.zw), dot(_86, Material_PreshaderBuffer_9.xy), _429), mix(vec3(dot(_90, Material_PreshaderBuffer_18.zw), dot(_90, Material_PreshaderBuffer_19.xy), _465), vec3(dot(_94, Material_PreshaderBuffer_28.zw), dot(_94, Material_PreshaderBuffer_29.xy), _501), _106), _117)) * 1.0;
    highp vec3 _558 = (-_403) + ((_119 * dot(_119, _403)) * 2.0);
    highp vec4 _562 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_6Material_Texture2D_6Sampler, _422);
    highp vec4 _566 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_7Material_Texture2D_7Sampler, _458);
    highp vec4 _570 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_8Material_Texture2D_8Sampler, _494);
    highp vec4 _574 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_9Material_Texture2D_9Sampler, _422);
    highp vec4 _578 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_10Material_Texture2D_10Sampler, _458);
    highp vec4 _582 = texture(SPIRV_Cross_CombinedMaterial_Texture2D_11Material_Texture2D_11Sampler, _494);
    highp float _583 = max(0.015625, clamp(mix(_538.x, mix(_515.y, _519.y, _103), _115), 0.0, 1.0));
    highp float _584 = _394.w;
    highp vec4 _607;
    uint _591 = 0u;
    for (;;)
    {
        if (_591 < 4u)
        {
            if (_584 < MobileDirectionalLight_DirectionalLightShadowDistances[_591])
            {
                _607 = MobileDirectionalLight_DirectionalLightScreenToShadow(_591) * vec4(_394.xy, _584, 1.0);
                break;
            }
            _591++;
            continue;
        }
        else
        {
            _607 = vec4(0.0);
            break;
        }
    }
    float _228;
    if (_607.z > 0.0)
    {
        highp vec2 _616 = fma(_607.xy, MobileDirectionalLight_DirectionalLightShadowSize.xy, vec2(-0.5));
        highp vec2 _617 = fract(_616);
        highp vec2 _621 = (floor(_616) + vec2(1.0)) * MobileDirectionalLight_DirectionalLightShadowSize.zw;
        highp vec4 _626 = vec4(fma(min(1.0 - _607.z, 0.999989986419677734375), MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w, -1.0));
        highp vec4 _628 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _621, ivec2(-1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _626, vec4(0.0), vec4(1.0));
        highp vec4 _633 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _621, ivec2(1, -1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _626, vec4(0.0), vec4(1.0));
        highp vec4 _638 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _621, ivec2(-1, 1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _626, vec4(0.0), vec4(1.0));
        highp vec4 _643 = clamp((textureGatherOffset(SPIRV_Cross_CombinedMobileDirectionalLight_DirectionalLightShadowTextureMobileDirectionalLight_DirectionalLightShadowSampler, _621, ivec2(1)) * MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w) - _626, vec4(0.0), vec4(1.0));
        highp float _645 = _617.x;
        highp float _646 = 1.0 - _645;
        highp vec4 _668;
        _668.x = fma(_633.z, _645, fma(_628.w, _646, _628.z) + _633.w);
        _668.y = fma(_633.y, _645, fma(_628.x, _646, _628.y) + _633.x);
        _668.z = fma(_643.z, _645, fma(_638.w, _646, _638.z) + _643.w);
        _668.w = fma(_643.y, _645, fma(_638.x, _646, _638.y) + _643.x);
        highp float _678 = _617.y;
        highp float _686 = clamp(fma(_584, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.x, MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.y), 0.0, 1.0);
        _228 = mix(dot(_668, vec4(1.0 - _678, 1.0, 1.0, _678) * 0.111111111938953399658203125), 1.0, _686 * _686);
    }
    else
    {
        _228 = 1.0;
    }
    highp vec4 _704 = vec4(float(MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 2u) >> 1u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 4u) >> 2u), float((MobileDirectionalLight_DirectionalLightShadowMapChannelMask & 8u) >> 3u));
    highp float _708 = max(0.0, dot(_119, normalize(_403 + MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz)));
    vec3 _178 = clamp(mix(_562.xyz, mix(_566.xyz, _570.xyz, _106), _117), vec3(0.0), vec3(1.0)) * 0.318407952785491943359375;
    highp vec3 _709 = vec3(1.0) * max(0.0, dot(_119, MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz));
    float _179 = _583 * _583;
    highp float _713 = _708 * _179;
    highp float _715 = _179 / fma(_713, _713, fma(-_708, _708, 1.0));
    float _183 = fma(_583, 0.25, 0.25);
    vec4 _190 = (vec4(-1.0, -0.027496337890625, -0.57177734375, 0.022003173828125) * _583) + vec4(1.0, 0.042510986328125, 1.0400390625, -0.040008544921875);
    float _191 = _190.x;
    vec2 _200 = (vec2(-1.0400390625, 1.0400390625) * fma(min(_191 * _191, exp2((-9.28125) * clamp(abs(dot(_119, _403)) + 1.0013580322265625e-05, 0.0, 1.0))), _191, _190.y)) + _190.zw;
    highp vec3 _717 = (vec3(0.039999999105930328369140625) * _200.x) + vec3(_200.y);
    uvec2 _749 = uvec2(uint(_386.x), uint(_386.y)) >> (uvec2(MobileBasePass_Forward_LightGridPixelSizeShift) & uvec2(31u));
    vec3 _229;
    if (float(MobileReflectionCapture_Params.y > 0.0) != 0.0)
    {
        _229 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _558, (MobileReflectionCapture_Params.y - 1.0) - fma(-1.2001953125, log2(max(_583, 0.00100040435791015625)), 1.0)).xyz * View_SkyLightColor.xyz;
    }
    else
    {
        _229 = textureLod(SPIRV_Cross_CombinedMobileReflectionCapture_TextureMobileReflectionCapture_TextureSampler, _558, (View_ReflectionCubemapMaxMip - 1.0) - fma(-1.2001953125, log2(max(_583, 0.00100040435791015625)), 1.0)).xyz * MobileReflectionCapture_Params.w;
    }
    uint _791 = ((((min(uint(max(0.0, log2(fma(_369, MobileBasePass_Forward_LightGridZParams.x, MobileBasePass_Forward_LightGridZParams.y)) * MobileBasePass_Forward_LightGridZParams.z)), uint(MobileBasePass_Forward_CulledGridSize.z - 1)) * uint(MobileBasePass_Forward_CulledGridSize.y)) + _749.y) * uint(MobileBasePass_Forward_CulledGridSize.x)) + _749.x) * 2u;
    uvec4 _799 = texelFetch(ps1, int(_791 + 1u));
    uint _800 = _799.x;
    uint _815 = (uint((Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Flags & 8192u) != 0u) << 2u);
    uint _816 = min(min(texelFetch(ps1, int(_791)).x, MobileBasePass_Forward_NumLocalLights), MobileBasePass_Forward_NumLocalLights);
    highp vec3 _818;
    _818 = fma((_229 * mix(1.0, min(0.0, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0, 1.0, clamp(fma(_583, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0, 1.0)))) * clamp(mix(_574.x, mix(_578.x, _582.x, _103), _115), 0.0, 1.0), _717, fma(((_178 * _709) * 1.0) + ((_709 * (_717 * (min((0.318407952785491943359375 * _715) * _715, 2048.0) * _183))) * MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.z), MobileDirectionalLight_DirectionalLightColor.xyz * (_228 * mix(1.0, dot(vec4(1.0), _704), dot(_704, vec4(1.0)))), vec3(0.0)));
    highp vec3 _819;
    SPIRV_CROSS_LOOP
    for (uint _821 = 0u; _821 < _816; _818 = _819, _821++)
    {
        uint _830 = texelFetch(ps2, int(_800 + _821)).x * 6u;
        highp vec4 _832 = texelFetch(ps0, int(_830));
        highp vec4 _834 = texelFetch(ps0, int(_830 + 1u));
        highp vec4 _836 = texelFetch(ps0, int(_830 + 2u));
        highp float _839 = _832.w;
        highp float _840 = _839 * _839;
        highp vec3 _841 = _832.xyz;
        highp vec3 _842 = in_var_TEXCOORD8.xyz - _841;
        if (!((dot(_842, _842) * _840) <= 1.0))
        {
            _819 = _818;
            continue;
        }
        uint _850 = floatBitsToUint(_836.w);
        if ((((_850 >> 8u) & 7u) & _815) == 0u)
        {
            _819 = _818;
            continue;
        }
        uint _858 = (_850 >> 16u) & 3u;
        highp float _860 = _834.w;
        uint _863 = floatBitsToUint(texelFetch(ps0, int(_830 + 3u)).x);
        highp vec4 _886 = vec4(float(_850 & 1u), float((_850 & 2u) >> 1u), float((_850 & 4u) >> 2u), float((_850 & 8u) >> 3u));
        highp vec3 _888 = _841 - in_var_TEXCOORD8.xyz;
        highp float _889 = dot(_888, _888);
        highp vec3 _891 = _888 * inversesqrt(_889);
        highp float _908;
        if (_860 == 0.0)
        {
            highp float _900 = _889 * _840;
            highp float _903 = clamp(fma(-_900, _900, 1.0), 0.0, 1.0);
            _908 = (_903 * _903) * (1.0 / (_889 + 1.0));
        }
        else
        {
            highp vec3 _895 = _888 * _839;
            _908 = pow(1.0 - clamp(dot(_895, _895), 0.0, 1.0), _860);
        }
        highp float _917;
        if ((_858 == 2u) || (_858 == 3u))
        {
            highp float _914 = clamp((dot(_891, _836.xyz) - unpackHalf2x16(_863 & 65535u).x) * unpackHalf2x16(_863 >> 16u).x, 0.0, 1.0);
            _917 = _908 * (_914 * _914);
        }
        else
        {
            _917 = _908;
        }
        highp vec3 _942;
        SPIRV_CROSS_BRANCH
        if (_917 > 0.0)
        {
            float _230;
            SPIRV_CROSS_BRANCH
            if (uint((_850 & 255u) != 0u) != 0u)
            {
                _230 = mix(1.0, dot(vec4(1.0), _886), dot(_886, vec4(1.0)));
            }
            else
            {
                _230 = 1.0;
            }
            highp float _928 = max(0.0, dot(_119, normalize(_403 + _891)));
            highp vec3 _929 = vec3(1.0) * max(0.0, dot(_119, _891));
            highp float _933 = _928 * _179;
            highp float _935 = _179 / fma(_933, _933, fma(-_928, _928, 1.0));
            _942 = fma(((_178 * _929) * 1.0) + ((_929 * (_717 * (min((0.318407952785491943359375 * _935) * _935, 2048.0) * _183))) * 1.0), (_834.xyz * _917) * _230, vec3(0.0));
        }
        else
        {
            _942 = vec3(0.0);
        }
        _819 = _818 + _942;
    }
    vec3 _68 = (_818 + max(vec3(0.0), vec3(0.0))) * 1.0;
    vec4 _69 = vec4(_68.x, _68.y, _68.z, _364.w);
    _69.w = 0.0;
    highp vec3 _946 = min((_69.xyz * View_PreExposure).xyz, vec3(32512.0, 32512.0, 32256.0));
    out_var_SV_Target0 = vec4(_946.x, _946.y, _946.z, _69.w);
    out_var_SV_Target1 = gl_FragCoord.z;
}

