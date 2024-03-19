
#line 932 "/Engine/Public/Platform.ush"
float2 select_internal(bool2 c, float2 a, float2 b) {
  return float2(c.x ? a.x : b.x, c.y ? a.y : b.y);
}


#line 932 "/Engine/Public/Platform.ush"
float4 select_internal(bool4 c, float a, float4 b) {
  return float4(c.x ? a : b.x, c.y ? a : b.y, c.z ? a : b.z, c.w ? a : b.w);
}


#line 990 "/Engine/Public/Platform.ush"
uint CondMask(bool Cond, uint Src0, uint Src1) {
  return Cond ? Src0 : Src1;
}


#line 31 "/Engine/Private/Common.ush"
struct FloatDeriv {
  float Value;
  float Ddx;
  float Ddy;
};
#line 38 "/Engine/Private/Common.ush"
struct FloatDeriv2 {
  float2 Value;
  float2 Ddx;
  float2 Ddy;
};
#line 45 "/Engine/Private/Common.ush"
struct FloatDeriv3 {
  float3 Value;
  float3 Ddx;
  float3 Ddy;
};
#line 52 "/Engine/Private/Common.ush"
struct FloatDeriv4 {
  float4 Value;
  float4 Ddx;
  float4 Ddy;
};
#line 109 "/Engine/Private/Common.ush"
static const min16float PI = 3.14159274F;
#line 110 "/Engine/Private/Common.ush"
static const float MaxHalfFloat = 65504.F;
#line 111 "/Engine/Private/Common.ush"
static const float Max11BitsFloat = 65024.F;
#line 112 "/Engine/Private/Common.ush"
static const float Max10BitsFloat = 64512.F;
#line 113 "/Engine/Private/Common.ush"
static const float3 Max111110BitsFloat3 = float3(Max11BitsFloat, Max11BitsFloat, Max10BitsFloat);
#line 5 "/Engine/Private/Nanite/NanitePackedNaniteView.ush"
struct FPackedNaniteView {
  float4x4 SVPositionToTranslatedWorld;
  float4x4 ViewToTranslatedWorld;
  float4x4 TranslatedWorldToView;
  float4x4 TranslatedWorldToClip;
  float4x4 TranslatedWorldToSubpixelClip;
  float4x4 ViewToClip;
  float4x4 ClipToRelativeWorld;
  float4x4 PrevTranslatedWorldToView;
  float4x4 PrevTranslatedWorldToClip;
  float4x4 PrevViewToClip;
  float4x4 PrevClipToRelativeWorld;
  int4 ViewRect;
  float4 ViewSizeAndInvSize;
  float4 ClipSpaceScaleOffset;
  float3 RelativePreViewTranslation;
  float ViewTilePositionX;
  float3 RelativePrevPreViewTranslation;
  float ViewTilePositionY;
  float3 RelativeWorldCameraOrigin;
  float ViewTilePositionZ;
  float3 DrawDistanceOriginTranslatedWorld;
  float RangeBasedCullingDistance;
  float3 ViewForward;
  float NearPlane;
  float4 TranslatedGlobalClipPlane;
  float3 MatrixTilePosition;
  float Padding1;
  float2 LODScales;
  float MinBoundsRadiusSq;
  uint StreamingPriorityCategory_AndFlags;
  int4 TargetLayerIdX_AndMipLevelY_AndNumMipLevelsZ;
  int4 HZBTestViewRect;
};
#line 5 "/Engine/Private/HairStrands/HairStrandsVisibilityCommonStruct.ush"
struct FPackedHairSample {
  float Depth;
  uint PrimitiveID_MacroGroupID;
  uint Tangent_Coverage8bit;
  uint BaseColor_Roughness;
  uint Specular_LightChannels_Backlit;
};
#line 14 "/Engine/Private/HairStrands/HairStrandsVisibilityCommonStruct.ush"
struct FPackedHairVis {
  uint Depth_Coverage8bit;
  uint PrimitiveID_MaterialID;
};
#line 20 "/Engine/Private/HairStrands/HairStrandsVisibilityCommonStruct.ush"
struct FPackedHairVisPPLL {
  uint Depth_Coverage8bit;
  uint PrimitiveID_MaterialID;
  uint NextNodeIndex;
};
#line 5 "/Engine/Private/HairStrands/HairStrandsVoxelPageCommonStruct.ush"
struct FPackedVirtualVoxelNodeDesc {
  float3 TranslatedWorldMinAABB;
  uint PackedPageIndexResolution;
  float3 TranslatedWorldMaxAABB;
  uint PageIndexOffset_VoxelWorldSize;
};
#line 13 "/Engine/Private/HairStrands/HairStrandsVoxelPageCommonStruct.ush"
struct FVoxelizationViewInfo {
  float4x4 TranslatedWorldToClip;
  float3 ViewForward;
  float Pad0;
  uint2 RasterResolution;
  float2 Pad1;
};
#line 5 "/Engine/Private/HairStrands/HairStrandsDeepShadowCommonStruct.ush"
struct FDeepShadowViewInfo {
  float4x4 TranslatedWorldToClipScaledBiased;
  float4x4 TranslatedWorldToClip;
  float4 AtlasScaleBias;
  float3 ViewForward;
  float MinRadiusAtDepth1;
};
#line 3 "/Engine/Generated/UniformBuffers/View.ush"
cbuffer View {
  const float4x4 View_TranslatedWorldToClip;
  const float4x4 View_TranslatedWorldToSubpixelClip;
  const float4x4 View_RelativeWorldToClip;
  const float4x4 View_ClipToRelativeWorld;
  const float4x4 View_TranslatedWorldToView;
  const float4x4 View_ViewToTranslatedWorld;
  const float4x4 View_TranslatedWorldToCameraView;
  const float4x4 View_CameraViewToTranslatedWorld;
  const float4x4 View_ViewToClip;
  const float4x4 View_ViewToClipNoAA;
  const float4x4 View_ClipToView;
  const float4x4 View_ClipToTranslatedWorld;
  const float4x4 View_SVPositionToTranslatedWorld;
  const float4x4 View_ScreenToRelativeWorld;
  const float4x4 View_ScreenToTranslatedWorld;
  const float4x4 View_MobileMultiviewShadowTransform;
  const float3 View_ViewTilePosition;
  const float PrePadding_View_1036;
  const float3 View_MatrixTilePosition;
  const float PrePadding_View_1052;
  const min16float3 View_ViewForward;
  const min16float PrePadding_View_1068;
  const min16float3 View_ViewUp;
  const min16float PrePadding_View_1084;
  const min16float3 View_ViewRight;
  const min16float PrePadding_View_1100;
  const min16float3 View_HMDViewNoRollUp;
  const min16float PrePadding_View_1116;
  const min16float3 View_HMDViewNoRollRight;
  const min16float PrePadding_View_1132;
  const float4 View_InvDeviceZToWorldZTransform;
  const min16float4 View_ScreenPositionScaleBias;
  const float3 View_RelativeWorldCameraOrigin;
  const float PrePadding_View_1180;
  const float3 View_TranslatedWorldCameraOrigin;
  const float PrePadding_View_1196;
  const float3 View_RelativeWorldViewOrigin;
  const float PrePadding_View_1212;
  const float3 View_RelativePreViewTranslation;
  const float PrePadding_View_1228;
  const float4x4 View_PrevViewToClip;
  const float4x4 View_PrevClipToView;
  const float4x4 View_PrevTranslatedWorldToClip;
  const float4x4 View_PrevTranslatedWorldToView;
  const float4x4 View_PrevViewToTranslatedWorld;
  const float4x4 View_PrevTranslatedWorldToCameraView;
  const float4x4 View_PrevCameraViewToTranslatedWorld;
  const float3 View_PrevTranslatedWorldCameraOrigin;
  const float PrePadding_View_1692;
  const float3 View_PrevRelativeWorldCameraOrigin;
  const float PrePadding_View_1708;
  const float3 View_PrevRelativeWorldViewOrigin;
  const float PrePadding_View_1724;
  const float3 View_RelativePrevPreViewTranslation;
  const float PrePadding_View_1740;
  const float4x4 View_PrevClipToRelativeWorld;
  const float4x4 View_PrevScreenToTranslatedWorld;
  const float4x4 View_ClipToPrevClip;
  const float4x4 View_ClipToPrevClipWithAA;
  const float4 View_TemporalAAJitter;
  const float4 View_GlobalClippingPlane;
  const float2 View_FieldOfViewWideAngles;
  const float2 View_PrevFieldOfViewWideAngles;
  const min16float4 View_ViewRectMin;
  const float4 View_ViewSizeAndInvSize;
  const uint4 View_ViewRectMinAndSize;
  const float4 View_LightProbeSizeRatioAndInvSizeRatio;
  const float4 View_BufferSizeAndInvSize;
  const float4 View_BufferBilinearUVMinMax;
  const float4 View_ScreenToViewSpace;
  const float2 View_BufferToSceneTextureScale;
  const float2 View_ResolutionFractionAndInv;
  const int View_NumSceneColorMSAASamples;
  const float View_PreExposure;
  const float View_OneOverPreExposure;
  const float PrePadding_View_2188;
  const min16float4 View_DiffuseOverrideParameter;
  const min16float4 View_SpecularOverrideParameter;
  const min16float4 View_NormalOverrideParameter;
  const min16float2 View_RoughnessOverrideParameter;
  const float View_PrevFrameGameTime;
  const float View_PrevFrameRealTime;
  const min16float View_OutOfBoundsMask;
  const min16float PrePadding_View_2260;
  const min16float PrePadding_View_2264;
  const min16float PrePadding_View_2268;
  const float3 View_WorldCameraMovementSinceLastFrame;
  const float View_CullingSign;
  const min16float View_NearPlane;
  const float View_GameTime;
  const float View_RealTime;
  const float View_DeltaTime;
  const float View_MaterialTextureMipBias;
  const float View_MaterialTextureDerivativeMultiply;
  const uint View_Random;
  const uint View_FrameNumber;
  const uint View_StateFrameIndexMod8;
  const uint View_StateFrameIndex;
  const uint View_DebugViewModeMask;
  const uint View_WorldIsPaused;
  const min16float View_CameraCut;
  const min16float View_UnlitViewmodeMask;
  const min16float PrePadding_View_2344;
  const min16float PrePadding_View_2348;
  const min16float4 View_DirectionalLightColor;
  const min16float3 View_DirectionalLightDirection;
  const min16float PrePadding_View_2380;
  const float4 View_TranslucencyLightingVolumeMin[2];
  const float4 View_TranslucencyLightingVolumeInvSize[2];
  const float4 View_TemporalAAParams;
  const float4 View_CircleDOFParams;
  const float View_DepthOfFieldSensorWidth;
  const float View_DepthOfFieldFocalDistance;
  const float View_DepthOfFieldScale;
  const float View_DepthOfFieldFocalLength;
  const float View_DepthOfFieldFocalRegion;
  const float View_DepthOfFieldNearTransitionRegion;
  const float View_DepthOfFieldFarTransitionRegion;
  const float View_MotionBlurNormalizedToPixel;
  const float View_GeneralPurposeTweak;
  const float View_GeneralPurposeTweak2;
  const min16float View_DemosaicVposOffset;
  const float View_DecalDepthBias;
  const float3 View_IndirectLightingColorScale;
  const float PrePadding_View_2540;
  const float3 View_PrecomputedIndirectLightingColorScale;
  const float PrePadding_View_2556;
  const float3 View_PrecomputedIndirectSpecularColorScale;
  const float PrePadding_View_2572;
  const float4 View_AtmosphereLightDirection[2];
  const float4 View_AtmosphereLightIlluminanceOnGroundPostTransmittance[2];
  const float4 View_AtmosphereLightIlluminanceOuterSpace[2];
  const float4 View_AtmosphereLightDiscLuminance[2];
  const float4 View_AtmosphereLightDiscCosHalfApexAngle_PPTrans[2];
  const float4 View_SkyViewLutSizeAndInvSize;
  const float3 View_SkyCameraTranslatedWorldOrigin;
  const float PrePadding_View_2764;
  const float4 View_SkyPlanetTranslatedWorldCenterAndViewHeight;
  const float4x4 View_SkyViewLutReferential;
  const float4 View_SkyAtmosphereSkyLuminanceFactor;
  const float View_SkyAtmospherePresentInScene;
  const float View_SkyAtmosphereHeightFogContribution;
  const float View_SkyAtmosphereBottomRadiusKm;
  const float View_SkyAtmosphereTopRadiusKm;
  const float4 View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
  const float View_SkyAtmosphereAerialPerspectiveStartDepthKm;
  const float View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
  const float View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
  const float View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm;
  const float View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
  const float View_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
  const float PrePadding_View_2920;
  const float PrePadding_View_2924;
  const float3 View_NormalCurvatureToRoughnessScaleBias;
  const float View_RenderingReflectionCaptureMask;
  const float View_RealTimeReflectionCapture;
  const float View_RealTimeReflectionCapturePreExposure;
  const float PrePadding_View_2952;
  const float PrePadding_View_2956;
  const float4 View_AmbientCubemapTint;
  const float View_AmbientCubemapIntensity;
  const float View_SkyLightApplyPrecomputedBentNormalShadowingFlag;
  const float View_SkyLightAffectReflectionFlag;
  const float View_SkyLightAffectGlobalIlluminationFlag;
  const float4 View_SkyLightColor;
  const float4 View_MobileSkyIrradianceEnvironmentMap[8];
  const float View_MobilePreviewMode;
  const float View_HMDEyePaddingOffset;
  const min16float View_ReflectionCubemapMaxMip;
  const float View_ShowDecalsMask;
  const uint View_DistanceFieldAOSpecularOcclusionMode;
  const float View_IndirectCapsuleSelfShadowingIntensity;
  const float PrePadding_View_3160;
  const float PrePadding_View_3164;
  const float3 View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
  const int View_StereoPassIndex;
  const float4 View_GlobalVolumeTranslatedCenterAndExtent[6];
  const float4 View_GlobalVolumeTranslatedWorldToUVAddAndMul[6];
  const float4 View_GlobalDistanceFieldMipTranslatedWorldToUVScale[6];
  const float4 View_GlobalDistanceFieldMipTranslatedWorldToUVBias[6];
  const float View_GlobalDistanceFieldMipFactor;
  const float View_GlobalDistanceFieldMipTransition;
  const int View_GlobalDistanceFieldClipmapSizeInPages;
  const int PrePadding_View_3580;
  const float3 View_GlobalDistanceFieldInvPageAtlasSize;
  const float PrePadding_View_3596;
  const float3 View_GlobalDistanceFieldInvCoverageAtlasSize;
  const float View_GlobalVolumeDimension;
  const float View_GlobalVolumeTexelSize;
  const float View_MaxGlobalDFAOConeDistance;
  const uint View_NumGlobalSDFClipmaps;
  const float View_CoveredExpandSurfaceScale;
  const float View_NotCoveredExpandSurfaceScale;
  const float View_NotCoveredMinStepScale;
  const float View_DitheredTransparencyStepThreshold;
  const float View_DitheredTransparencyTraceThreshold;
  const int2 View_CursorPosition;
  const float View_bCheckerboardSubsurfaceProfileRendering;
  const float PrePadding_View_3660;
  const float3 View_VolumetricFogInvGridSize;
  const float PrePadding_View_3676;
  const float3 View_VolumetricFogGridZParams;
  const float PrePadding_View_3692;
  const float2 View_VolumetricFogSVPosToVolumeUV;
  const float2 View_VolumetricFogScreenUVToHistoryVolumeUV;
  const float View_VolumetricFogMaxDistance;
  const float PrePadding_View_3716;
  const float PrePadding_View_3720;
  const float PrePadding_View_3724;
  const float3 View_VolumetricLightmapWorldToUVScale;
  const float PrePadding_View_3740;
  const float3 View_VolumetricLightmapWorldToUVAdd;
  const float PrePadding_View_3756;
  const float3 View_VolumetricLightmapIndirectionTextureSize;
  const float View_VolumetricLightmapBrickSize;
  const float3 View_VolumetricLightmapBrickTexelSize;
  const float View_IndirectLightingCacheShowFlag;
  const float View_EyeToPixelSpreadAngle;
  const float PrePadding_View_3796;
  const float PrePadding_View_3800;
  const float PrePadding_View_3804;
  const float4 View_XRPassthroughCameraUVs[2];
  const float View_GlobalVirtualTextureMipBias;
  const uint View_VirtualTextureFeedbackShift;
  const uint View_VirtualTextureFeedbackMask;
  const uint View_VirtualTextureFeedbackStride;
  const uint View_VirtualTextureFeedbackJitterOffset;
  const uint View_VirtualTextureFeedbackSampleOffset;
  const uint PrePadding_View_3864;
  const uint PrePadding_View_3868;
  const float4 View_RuntimeVirtualTextureMipLevel;
  const float2 View_RuntimeVirtualTexturePackHeight;
  const float PrePadding_View_3896;
  const float PrePadding_View_3900;
  const float4 View_RuntimeVirtualTextureDebugParams;
  const float View_OverrideLandscapeLOD;
  const int View_FarShadowStaticMeshLODBias;
  const float View_MinRoughness;
  const float PrePadding_View_3932;
  const float4 View_HairRenderInfo;
  const uint View_EnableSkyLight;
  const uint View_HairRenderInfoBits;
  const uint View_HairComponents;
  const float View_bSubsurfacePostprocessEnabled;
  const float4 View_SSProfilesTextureSizeAndInvSize;
  const float4 View_SSProfilesPreIntegratedTextureSizeAndInvSize;
  const float3 View_PhysicsFieldClipmapCenter;
  const float View_PhysicsFieldClipmapDistance;
  const int View_PhysicsFieldClipmapResolution;
  const int View_PhysicsFieldClipmapExponent;
  const int View_PhysicsFieldClipmapCount;
  const int View_PhysicsFieldTargetCount;
  const int4 View_PhysicsFieldTargets[32];
  const uint View_InstanceSceneDataSOAStride;
  const uint View_GPUSceneViewId;
  const float View_ViewResolutionFraction;
  const float View_SubSurfaceColorAsTransmittanceAtDistanceInMeters;
  const uint BindlessSampler_View_MaterialTextureBilinearWrapedSampler;
  const uint PrePadding_View_4564;
  const uint BindlessSampler_View_MaterialTextureBilinearClampedSampler;
  const uint PrePadding_View_4572;
  const uint BindlessResource_View_VolumetricLightmapIndirectionTexture;
  const uint PrePadding_View_4580;
  const uint BindlessResource_View_VolumetricLightmapBrickAmbientVector;
  const uint PrePadding_View_4588;
  const uint BindlessResource_View_VolumetricLightmapBrickSHCoefficients0;
  const uint PrePadding_View_4596;
  const uint BindlessResource_View_VolumetricLightmapBrickSHCoefficients1;
  const uint PrePadding_View_4604;
  const uint BindlessResource_View_VolumetricLightmapBrickSHCoefficients2;
  const uint PrePadding_View_4612;
  const uint BindlessResource_View_VolumetricLightmapBrickSHCoefficients3;
  const uint PrePadding_View_4620;
  const uint BindlessResource_View_VolumetricLightmapBrickSHCoefficients4;
  const uint PrePadding_View_4628;
  const uint BindlessResource_View_VolumetricLightmapBrickSHCoefficients5;
  const uint PrePadding_View_4636;
  const uint BindlessResource_View_SkyBentNormalBrickTexture;
  const uint PrePadding_View_4644;
  const uint BindlessResource_View_DirectionalLightShadowingBrickTexture;
  const uint PrePadding_View_4652;
  const uint BindlessSampler_View_VolumetricLightmapBrickAmbientVectorSampler;
  const uint PrePadding_View_4660;
  const uint BindlessSampler_View_VolumetricLightmapTextureSampler0;
  const uint PrePadding_View_4668;
  const uint BindlessSampler_View_VolumetricLightmapTextureSampler1;
  const uint PrePadding_View_4676;
  const uint BindlessSampler_View_VolumetricLightmapTextureSampler2;
  const uint PrePadding_View_4684;
  const uint BindlessSampler_View_VolumetricLightmapTextureSampler3;
  const uint PrePadding_View_4692;
  const uint BindlessSampler_View_VolumetricLightmapTextureSampler4;
  const uint PrePadding_View_4700;
  const uint BindlessSampler_View_VolumetricLightmapTextureSampler5;
  const uint PrePadding_View_4708;
  const uint BindlessSampler_View_SkyBentNormalTextureSampler;
  const uint PrePadding_View_4716;
  const uint BindlessSampler_View_DirectionalLightShadowingTextureSampler;
  const uint PrePadding_View_4724;
  const uint BindlessResource_View_GlobalDistanceFieldPageAtlasTexture;
  const uint PrePadding_View_4732;
  const uint BindlessResource_View_GlobalDistanceFieldCoverageAtlasTexture;
  const uint PrePadding_View_4740;
  const uint BindlessResource_View_GlobalDistanceFieldPageTableTexture;
  const uint PrePadding_View_4748;
  const uint BindlessResource_View_GlobalDistanceFieldMipTexture;
  const uint PrePadding_View_4756;
  const uint BindlessResource_View_AtmosphereTransmittanceTexture;
  const uint PrePadding_View_4764;
  const uint BindlessSampler_View_AtmosphereTransmittanceTextureSampler;
  const uint PrePadding_View_4772;
  const uint BindlessResource_View_AtmosphereIrradianceTexture;
  const uint PrePadding_View_4780;
  const uint BindlessSampler_View_AtmosphereIrradianceTextureSampler;
  const uint PrePadding_View_4788;
  const uint BindlessResource_View_AtmosphereInscatterTexture;
  const uint PrePadding_View_4796;
  const uint BindlessSampler_View_AtmosphereInscatterTextureSampler;
  const uint PrePadding_View_4804;
  const uint BindlessResource_View_PerlinNoiseGradientTexture;
  const uint PrePadding_View_4812;
  const uint BindlessSampler_View_PerlinNoiseGradientTextureSampler;
  const uint PrePadding_View_4820;
  const uint BindlessResource_View_PerlinNoise3DTexture;
  const uint PrePadding_View_4828;
  const uint BindlessSampler_View_PerlinNoise3DTextureSampler;
  const uint PrePadding_View_4836;
  const uint BindlessResource_View_SobolSamplingTexture;
  const uint PrePadding_View_4844;
  const uint BindlessSampler_View_SharedPointWrappedSampler;
  const uint PrePadding_View_4852;
  const uint BindlessSampler_View_SharedPointClampedSampler;
  const uint PrePadding_View_4860;
  const uint BindlessSampler_View_SharedBilinearWrappedSampler;
  const uint PrePadding_View_4868;
  const uint BindlessSampler_View_SharedBilinearClampedSampler;
  const uint PrePadding_View_4876;
  const uint BindlessSampler_View_SharedBilinearAnisoClampedSampler;
  const uint PrePadding_View_4884;
  const uint BindlessSampler_View_SharedTrilinearWrappedSampler;
  const uint PrePadding_View_4892;
  const uint BindlessSampler_View_SharedTrilinearClampedSampler;
  const uint PrePadding_View_4900;
  const uint BindlessResource_View_PreIntegratedBRDF;
  const uint PrePadding_View_4908;
  const uint BindlessSampler_View_PreIntegratedBRDFSampler;
  const uint PrePadding_View_4916;
  const uint BindlessResource_View_PrimitiveSceneData;
  const uint PrePadding_View_4924;
  const uint BindlessResource_View_InstanceSceneData;
  const uint PrePadding_View_4932;
  const uint BindlessResource_View_InstancePayloadData;
  const uint PrePadding_View_4940;
  const uint BindlessResource_View_LightmapSceneData;
  const uint PrePadding_View_4948;
  const uint BindlessResource_View_SkyIrradianceEnvironmentMap;
  const uint PrePadding_View_4956;
  const uint BindlessResource_View_TransmittanceLutTexture;
  const uint PrePadding_View_4964;
  const uint BindlessSampler_View_TransmittanceLutTextureSampler;
  const uint PrePadding_View_4972;
  const uint BindlessResource_View_SkyViewLutTexture;
  const uint PrePadding_View_4980;
  const uint BindlessSampler_View_SkyViewLutTextureSampler;
  const uint PrePadding_View_4988;
  const uint BindlessResource_View_DistantSkyLightLutTexture;
  const uint PrePadding_View_4996;
  const uint BindlessSampler_View_DistantSkyLightLutTextureSampler;
  const uint PrePadding_View_5004;
  const uint BindlessResource_View_CameraAerialPerspectiveVolume;
  const uint PrePadding_View_5012;
  const uint BindlessSampler_View_CameraAerialPerspectiveVolumeSampler;
  const uint PrePadding_View_5020;
  const uint BindlessResource_View_CameraAerialPerspectiveVolumeMieOnly;
  const uint PrePadding_View_5028;
  const uint BindlessSampler_View_CameraAerialPerspectiveVolumeMieOnlySampler;
  const uint PrePadding_View_5036;
  const uint BindlessResource_View_CameraAerialPerspectiveVolumeRayOnly;
  const uint PrePadding_View_5044;
  const uint BindlessSampler_View_CameraAerialPerspectiveVolumeRayOnlySampler;
  const uint PrePadding_View_5052;
  const uint BindlessResource_View_HairScatteringLUTTexture;
  const uint PrePadding_View_5060;
  const uint BindlessSampler_View_HairScatteringLUTSampler;
  const uint PrePadding_View_5068;
  const uint BindlessResource_View_LTCMatTexture;
  const uint PrePadding_View_5076;
  const uint BindlessSampler_View_LTCMatSampler;
  const uint PrePadding_View_5084;
  const uint BindlessResource_View_LTCAmpTexture;
  const uint PrePadding_View_5092;
  const uint BindlessSampler_View_LTCAmpSampler;
  const uint PrePadding_View_5100;
  const uint View_bShadingEnergyConservation;
  const uint View_bShadingEnergyPreservation;
  const uint BindlessResource_View_ShadingEnergyGGXSpecTexture;
  const uint PrePadding_View_5116;
  const uint BindlessResource_View_ShadingEnergyGGXGlassTexture;
  const uint PrePadding_View_5124;
  const uint BindlessResource_View_ShadingEnergyClothSpecTexture;
  const uint PrePadding_View_5132;
  const uint BindlessResource_View_ShadingEnergyDiffuseTexture;
  const uint PrePadding_View_5140;
  const uint BindlessSampler_View_ShadingEnergySampler;
  const uint PrePadding_View_5148;
  const uint BindlessResource_View_SSProfilesTexture;
  const uint PrePadding_View_5156;
  const uint BindlessSampler_View_SSProfilesSampler;
  const uint PrePadding_View_5164;
  const uint BindlessSampler_View_SSProfilesTransmissionSampler;
  const uint PrePadding_View_5172;
  const uint BindlessResource_View_SSProfilesPreIntegratedTexture;
  const uint PrePadding_View_5180;
  const uint BindlessSampler_View_SSProfilesPreIntegratedSampler;
  const uint PrePadding_View_5188;
  const uint BindlessResource_View_WaterIndirection;
  const uint PrePadding_View_5196;
  const uint BindlessResource_View_WaterData;
  const uint PrePadding_View_5204;
  const uint PrePadding_View_5208;
  const uint PrePadding_View_5212;
  const float4 View_RectLightAtlasSizeAndInvSize;
  const float View_RectLightAtlasMaxMipLevel;
  const float PrePadding_View_5236;
  const uint BindlessResource_View_RectLightAtlasTexture;
  const uint PrePadding_View_5244;
  const uint BindlessSampler_View_RectLightAtlasSampler;
  const uint PrePadding_View_5252;
  const uint PrePadding_View_5256;
  const uint PrePadding_View_5260;
  const float4 View_IESAtlasSizeAndInvSize;
  const uint BindlessResource_View_IESAtlasTexture;
  const uint PrePadding_View_5284;
  const uint BindlessSampler_View_IESAtlasSampler;
  const uint PrePadding_View_5292;
  const uint BindlessSampler_View_LandscapeWeightmapSampler;
  const uint PrePadding_View_5300;
  const uint BindlessResource_View_LandscapeIndirection;
  const uint PrePadding_View_5308;
  const uint BindlessResource_View_LandscapePerComponentData;
  const uint PrePadding_View_5316;
  const uint BindlessResource_View_VTFeedbackBuffer;
  const uint PrePadding_View_5324;
  const uint BindlessResource_View_EditorVisualizeLevelInstanceIds;
  const uint PrePadding_View_5332;
  const uint BindlessResource_View_EditorSelectedHitProxyIds;
  const uint PrePadding_View_5340;
  const uint BindlessResource_View_PhysicsFieldClipmapBuffer;
  const uint PrePadding_View_5348;
  const uint PrePadding_View_5352;
  const uint PrePadding_View_5356;
  const float3 View_TLASRelativePreViewTranslation;
  const float PrePadding_View_5372;
  const float3 View_TLASViewTilePosition;
}
#line 502 "/Engine/Generated/UniformBuffers/View.ush"
SamplerState View_SharedTrilinearClampedSampler;
#line 503 "/Engine/Generated/UniformBuffers/View.ush"
Texture2D<vector<float, 4> > View_PreIntegratedBRDF;
#line 504 "/Engine/Generated/UniformBuffers/View.ush"
SamplerState View_PreIntegratedBRDFSampler;
#line 524 "/Engine/Generated/UniformBuffers/View.ush"
Texture2D<vector<float, 4> > View_LTCMatTexture;
#line 525 "/Engine/Generated/UniformBuffers/View.ush"
SamplerState View_LTCMatSampler;
#line 526 "/Engine/Generated/UniformBuffers/View.ush"
Texture2D<vector<float, 4> > View_LTCAmpTexture;
#line 527 "/Engine/Generated/UniformBuffers/View.ush"
SamplerState View_LTCAmpSampler;
#line 533 "/Engine/Generated/UniformBuffers/View.ush"
Texture2D<vector<float, 4> > View_SSProfilesTexture;
#line 534 "/Engine/Generated/UniformBuffers/View.ush"
SamplerState View_SSProfilesSampler;
#line 536 "/Engine/Generated/UniformBuffers/View.ush"
Texture2DArray<vector<float, 4> > View_SSProfilesPreIntegratedTexture;
#line 537 "/Engine/Generated/UniformBuffers/View.ush"
SamplerState View_SSProfilesPreIntegratedSampler;
#line 540 "/Engine/Generated/UniformBuffers/View.ush"
Texture2D<float4> View_RectLightAtlasTexture;
#line 3 "/Engine/Generated/UniformBuffers/Strata.ush"
cbuffer Strata {
  const uint Strata_MaxBytesPerPixel;
  const uint Strata_bRoughDiffuse;
  const uint Strata_PeelLayersAboveDepth;
  const uint Strata_bRoughnessTracking;
  const int Strata_SliceStoringDebugStrataTreeData;
  const int Strata_FirstSliceStoringStrataSSSData;
  const uint Strata_TileSize;
  const uint Strata_TileSizeLog2;
  const int2 Strata_TileCount;
  const int2 Strata_TileOffset;
  const int2 Strata_OverflowTileCount;
  const int2 Strata_OverflowTileOffset;
  const uint BindlessResource_Strata_MaterialTextureArray;
  const uint PrePadding_Strata_68;
  const uint BindlessResource_Strata_TopLayerTexture;
  const uint PrePadding_Strata_76;
  const uint BindlessResource_Strata_OpaqueRoughRefractionTexture;
  const uint PrePadding_Strata_84;
  const uint BindlessResource_Strata_BSDFOffsetTexture;
  const uint PrePadding_Strata_92;
  const uint BindlessResource_Strata_BSDFTileTexture;
  const uint PrePadding_Strata_100;
  const uint BindlessResource_Strata_BSDFTileCountBuffer;
}
#line 3 "/Engine/Generated/UniformBuffers/DrawRectangleParameters.ush"
cbuffer DrawRectangleParameters {
  const float4 DrawRectangleParameters_PosScaleBias;
  const float4 DrawRectangleParameters_UVScaleBias;
  const float4 DrawRectangleParameters_InvTargetSizeAndTextureSize;
}
#line 3 "/Engine/Generated/UniformBuffers/InstancedView.ush"
cbuffer InstancedView {
  const float4x4 InstancedView_TranslatedWorldToClip[2];
  const float4x4 InstancedView_TranslatedWorldToSubpixelClip[2];
  const float4x4 InstancedView_RelativeWorldToClip[2];
  const float4x4 InstancedView_ClipToRelativeWorld[2];
  const float4x4 InstancedView_TranslatedWorldToView[2];
  const float4x4 InstancedView_ViewToTranslatedWorld[2];
  const float4x4 InstancedView_TranslatedWorldToCameraView[2];
  const float4x4 InstancedView_CameraViewToTranslatedWorld[2];
  const float4x4 InstancedView_ViewToClip[2];
  const float4x4 InstancedView_ViewToClipNoAA[2];
  const float4x4 InstancedView_ClipToView[2];
  const float4x4 InstancedView_ClipToTranslatedWorld[2];
  const float4x4 InstancedView_SVPositionToTranslatedWorld[2];
  const float4x4 InstancedView_ScreenToRelativeWorld[2];
  const float4x4 InstancedView_ScreenToTranslatedWorld[2];
  const float4x4 InstancedView_MobileMultiviewShadowTransform[2];
  const float3 InstancedView_ViewTilePosition;
  const float PrePadding_InstancedView_2060;
  const float3 InstancedView_MatrixTilePosition;
  const float PrePadding_InstancedView_2076;
  const min16float3 InstancedView_ViewForward;
  const min16float PrePadding_InstancedView_2092;
  const min16float3 InstancedView_ViewUp;
  const min16float PrePadding_InstancedView_2108;
  const min16float3 InstancedView_ViewRight;
  const min16float PrePadding_InstancedView_2124;
  const min16float4 InstancedView_HMDViewNoRollUp[2];
  const min16float4 InstancedView_HMDViewNoRollRight[2];
  const float4 InstancedView_InvDeviceZToWorldZTransform[2];
  const min16float4 InstancedView_ScreenPositionScaleBias[2];
  const float4 InstancedView_RelativeWorldCameraOrigin[2];
  const float4 InstancedView_TranslatedWorldCameraOrigin[2];
  const float4 InstancedView_RelativeWorldViewOrigin[2];
  const float4 InstancedView_RelativePreViewTranslation[2];
  const float4x4 InstancedView_PrevViewToClip[2];
  const float4x4 InstancedView_PrevClipToView[2];
  const float4x4 InstancedView_PrevTranslatedWorldToClip[2];
  const float4x4 InstancedView_PrevTranslatedWorldToView[2];
  const float4x4 InstancedView_PrevViewToTranslatedWorld[2];
  const float4x4 InstancedView_PrevTranslatedWorldToCameraView[2];
  const float4x4 InstancedView_PrevCameraViewToTranslatedWorld[2];
  const float4 InstancedView_PrevTranslatedWorldCameraOrigin[2];
  const float4 InstancedView_PrevRelativeWorldCameraOrigin[2];
  const float4 InstancedView_PrevRelativeWorldViewOrigin[2];
  const float4 InstancedView_RelativePrevPreViewTranslation[2];
  const float4x4 InstancedView_PrevClipToRelativeWorld[2];
  const float4x4 InstancedView_PrevScreenToTranslatedWorld[2];
  const float4x4 InstancedView_ClipToPrevClip[2];
  const float4x4 InstancedView_ClipToPrevClipWithAA[2];
  const float4 InstancedView_TemporalAAJitter[2];
  const float4 InstancedView_GlobalClippingPlane[2];
  const float4 InstancedView_FieldOfViewWideAngles[2];
  const float4 InstancedView_PrevFieldOfViewWideAngles[2];
  const min16float4 InstancedView_ViewRectMin[2];
  const float4 InstancedView_ViewSizeAndInvSize;
  const uint4 InstancedView_ViewRectMinAndSize;
  const float4 InstancedView_LightProbeSizeRatioAndInvSizeRatio;
  const float4 InstancedView_BufferSizeAndInvSize;
  const float4 InstancedView_BufferBilinearUVMinMax[2];
  const float4 InstancedView_ScreenToViewSpace[2];
  const float4 InstancedView_BufferToSceneTextureScale[2];
  const float2 InstancedView_ResolutionFractionAndInv;
  const int InstancedView_NumSceneColorMSAASamples;
  const float InstancedView_PreExposure;
  const float InstancedView_OneOverPreExposure;
  const float PrePadding_InstancedView_4260;
  const float PrePadding_InstancedView_4264;
  const float PrePadding_InstancedView_4268;
  const min16float4 InstancedView_DiffuseOverrideParameter;
  const min16float4 InstancedView_SpecularOverrideParameter;
  const min16float4 InstancedView_NormalOverrideParameter;
  const min16float2 InstancedView_RoughnessOverrideParameter;
  const float InstancedView_PrevFrameGameTime;
  const float InstancedView_PrevFrameRealTime;
  const min16float InstancedView_OutOfBoundsMask;
  const min16float PrePadding_InstancedView_4340;
  const min16float PrePadding_InstancedView_4344;
  const min16float PrePadding_InstancedView_4348;
  const float4 InstancedView_WorldCameraMovementSinceLastFrame[2];
  const float InstancedView_CullingSign;
  const float PrePadding_InstancedView_4388;
  const float PrePadding_InstancedView_4392;
  const float PrePadding_InstancedView_4396;
  const min16float4 InstancedView_NearPlane[2];
  const float InstancedView_GameTime;
  const float InstancedView_RealTime;
  const float InstancedView_DeltaTime;
  const float InstancedView_MaterialTextureMipBias;
  const float InstancedView_MaterialTextureDerivativeMultiply;
  const uint InstancedView_Random;
  const uint InstancedView_FrameNumber;
  const uint InstancedView_StateFrameIndexMod8;
  const uint InstancedView_StateFrameIndex;
  const uint InstancedView_DebugViewModeMask;
  const uint InstancedView_WorldIsPaused;
  const min16float InstancedView_CameraCut;
  const min16float InstancedView_UnlitViewmodeMask;
  const min16float PrePadding_InstancedView_4484;
  const min16float PrePadding_InstancedView_4488;
  const min16float PrePadding_InstancedView_4492;
  const min16float4 InstancedView_DirectionalLightColor;
  const min16float3 InstancedView_DirectionalLightDirection;
  const min16float PrePadding_InstancedView_4524;
  const float4 InstancedView_TranslucencyLightingVolumeMin[2];
  const float4 InstancedView_TranslucencyLightingVolumeInvSize[2];
  const float4 InstancedView_TemporalAAParams;
  const float4 InstancedView_CircleDOFParams;
  const float InstancedView_DepthOfFieldSensorWidth;
  const float InstancedView_DepthOfFieldFocalDistance;
  const float InstancedView_DepthOfFieldScale;
  const float InstancedView_DepthOfFieldFocalLength;
  const float InstancedView_DepthOfFieldFocalRegion;
  const float InstancedView_DepthOfFieldNearTransitionRegion;
  const float InstancedView_DepthOfFieldFarTransitionRegion;
  const float InstancedView_MotionBlurNormalizedToPixel;
  const float InstancedView_GeneralPurposeTweak;
  const float InstancedView_GeneralPurposeTweak2;
  const min16float InstancedView_DemosaicVposOffset;
  const float InstancedView_DecalDepthBias;
  const float3 InstancedView_IndirectLightingColorScale;
  const float PrePadding_InstancedView_4684;
  const float3 InstancedView_PrecomputedIndirectLightingColorScale;
  const float PrePadding_InstancedView_4700;
  const float3 InstancedView_PrecomputedIndirectSpecularColorScale;
  const float PrePadding_InstancedView_4716;
  const float4 InstancedView_AtmosphereLightDirection[2];
  const float4 InstancedView_AtmosphereLightIlluminanceOnGroundPostTransmittance[2];
  const float4 InstancedView_AtmosphereLightIlluminanceOuterSpace[2];
  const float4 InstancedView_AtmosphereLightDiscLuminance[2];
  const float4 InstancedView_AtmosphereLightDiscCosHalfApexAngle_PPTrans[2];
  const float4 InstancedView_SkyViewLutSizeAndInvSize;
  const float3 InstancedView_SkyCameraTranslatedWorldOrigin;
  const float PrePadding_InstancedView_4908;
  const float4 InstancedView_SkyPlanetTranslatedWorldCenterAndViewHeight;
  const float4x4 InstancedView_SkyViewLutReferential;
  const float4 InstancedView_SkyAtmosphereSkyLuminanceFactor;
  const float InstancedView_SkyAtmospherePresentInScene;
  const float InstancedView_SkyAtmosphereHeightFogContribution;
  const float InstancedView_SkyAtmosphereBottomRadiusKm;
  const float InstancedView_SkyAtmosphereTopRadiusKm;
  const float4 InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
  const float InstancedView_SkyAtmosphereAerialPerspectiveStartDepthKm;
  const float InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
  const float InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
  const float InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm;
  const float InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
  const float InstancedView_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
  const float PrePadding_InstancedView_5064;
  const float PrePadding_InstancedView_5068;
  const float3 InstancedView_NormalCurvatureToRoughnessScaleBias;
  const float InstancedView_RenderingReflectionCaptureMask;
  const float InstancedView_RealTimeReflectionCapture;
  const float InstancedView_RealTimeReflectionCapturePreExposure;
  const float PrePadding_InstancedView_5096;
  const float PrePadding_InstancedView_5100;
  const float4 InstancedView_AmbientCubemapTint;
  const float InstancedView_AmbientCubemapIntensity;
  const float InstancedView_SkyLightApplyPrecomputedBentNormalShadowingFlag;
  const float InstancedView_SkyLightAffectReflectionFlag;
  const float InstancedView_SkyLightAffectGlobalIlluminationFlag;
  const float4 InstancedView_SkyLightColor;
  const float4 InstancedView_MobileSkyIrradianceEnvironmentMap[8];
  const float InstancedView_MobilePreviewMode;
  const float PrePadding_InstancedView_5284;
  const float PrePadding_InstancedView_5288;
  const float PrePadding_InstancedView_5292;
  const float4 InstancedView_HMDEyePaddingOffset[2];
  const min16float InstancedView_ReflectionCubemapMaxMip;
  const float InstancedView_ShowDecalsMask;
  const uint InstancedView_DistanceFieldAOSpecularOcclusionMode;
  const float InstancedView_IndirectCapsuleSelfShadowingIntensity;
  const float3 InstancedView_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
  const float PrePadding_InstancedView_5356;
  const int4 InstancedView_StereoPassIndex[2];
  const float4 InstancedView_GlobalVolumeTranslatedCenterAndExtent[6];
  const float4 InstancedView_GlobalVolumeTranslatedWorldToUVAddAndMul[6];
  const float4 InstancedView_GlobalDistanceFieldMipTranslatedWorldToUVScale[6];
  const float4 InstancedView_GlobalDistanceFieldMipTranslatedWorldToUVBias[6];
  const float InstancedView_GlobalDistanceFieldMipFactor;
  const float InstancedView_GlobalDistanceFieldMipTransition;
  const int InstancedView_GlobalDistanceFieldClipmapSizeInPages;
  const int PrePadding_InstancedView_5788;
  const float3 InstancedView_GlobalDistanceFieldInvPageAtlasSize;
  const float PrePadding_InstancedView_5804;
  const float3 InstancedView_GlobalDistanceFieldInvCoverageAtlasSize;
  const float InstancedView_GlobalVolumeDimension;
  const float InstancedView_GlobalVolumeTexelSize;
  const float InstancedView_MaxGlobalDFAOConeDistance;
  const uint InstancedView_NumGlobalSDFClipmaps;
  const float InstancedView_CoveredExpandSurfaceScale;
  const float InstancedView_NotCoveredExpandSurfaceScale;
  const float InstancedView_NotCoveredMinStepScale;
  const float InstancedView_DitheredTransparencyStepThreshold;
  const float InstancedView_DitheredTransparencyTraceThreshold;
  const int2 InstancedView_CursorPosition;
  const float InstancedView_bCheckerboardSubsurfaceProfileRendering;
  const float PrePadding_InstancedView_5868;
  const float3 InstancedView_VolumetricFogInvGridSize;
  const float PrePadding_InstancedView_5884;
  const float3 InstancedView_VolumetricFogGridZParams;
  const float PrePadding_InstancedView_5900;
  const float2 InstancedView_VolumetricFogSVPosToVolumeUV;
  const float2 InstancedView_VolumetricFogScreenUVToHistoryVolumeUV;
  const float InstancedView_VolumetricFogMaxDistance;
  const float PrePadding_InstancedView_5924;
  const float PrePadding_InstancedView_5928;
  const float PrePadding_InstancedView_5932;
  const float3 InstancedView_VolumetricLightmapWorldToUVScale;
  const float PrePadding_InstancedView_5948;
  const float3 InstancedView_VolumetricLightmapWorldToUVAdd;
  const float PrePadding_InstancedView_5964;
  const float3 InstancedView_VolumetricLightmapIndirectionTextureSize;
  const float InstancedView_VolumetricLightmapBrickSize;
  const float3 InstancedView_VolumetricLightmapBrickTexelSize;
  const float InstancedView_IndirectLightingCacheShowFlag;
  const float InstancedView_EyeToPixelSpreadAngle;
  const float PrePadding_InstancedView_6004;
  const float PrePadding_InstancedView_6008;
  const float PrePadding_InstancedView_6012;
  const float4 InstancedView_XRPassthroughCameraUVs[2];
  const float InstancedView_GlobalVirtualTextureMipBias;
  const uint InstancedView_VirtualTextureFeedbackShift;
  const uint InstancedView_VirtualTextureFeedbackMask;
  const uint InstancedView_VirtualTextureFeedbackStride;
  const uint InstancedView_VirtualTextureFeedbackJitterOffset;
  const uint InstancedView_VirtualTextureFeedbackSampleOffset;
  const uint PrePadding_InstancedView_6072;
  const uint PrePadding_InstancedView_6076;
  const float4 InstancedView_RuntimeVirtualTextureMipLevel;
  const float2 InstancedView_RuntimeVirtualTexturePackHeight;
  const float PrePadding_InstancedView_6104;
  const float PrePadding_InstancedView_6108;
  const float4 InstancedView_RuntimeVirtualTextureDebugParams;
  const float InstancedView_OverrideLandscapeLOD;
  const int InstancedView_FarShadowStaticMeshLODBias;
  const float InstancedView_MinRoughness;
  const float PrePadding_InstancedView_6140;
  const float4 InstancedView_HairRenderInfo;
  const uint InstancedView_EnableSkyLight;
  const uint InstancedView_HairRenderInfoBits;
  const uint InstancedView_HairComponents;
  const float InstancedView_bSubsurfacePostprocessEnabled;
  const float4 InstancedView_SSProfilesTextureSizeAndInvSize;
  const float4 InstancedView_SSProfilesPreIntegratedTextureSizeAndInvSize;
  const float3 InstancedView_PhysicsFieldClipmapCenter;
  const float InstancedView_PhysicsFieldClipmapDistance;
  const int InstancedView_PhysicsFieldClipmapResolution;
  const int InstancedView_PhysicsFieldClipmapExponent;
  const int InstancedView_PhysicsFieldClipmapCount;
  const int InstancedView_PhysicsFieldTargetCount;
  const int4 InstancedView_PhysicsFieldTargets[32];
  const uint InstancedView_InstanceSceneDataSOAStride;
  const uint PrePadding_InstancedView_6756;
  const uint PrePadding_InstancedView_6760;
  const uint PrePadding_InstancedView_6764;
  const uint4 InstancedView_GPUSceneViewId[2];
  const float InstancedView_ViewResolutionFraction;
  const float InstancedView_SubSurfaceColorAsTransmittanceAtDistanceInMeters;
}
#line 3 "/Engine/Generated/UniformBuffers/SceneTexturesStruct.ush"
cbuffer SceneTexturesStruct {
  const uint BindlessResource_SceneTexturesStruct_SceneColorTexture;
  const uint PrePadding_SceneTexturesStruct_4;
  const uint BindlessResource_SceneTexturesStruct_SceneDepthTexture;
  const uint PrePadding_SceneTexturesStruct_12;
  const uint BindlessResource_SceneTexturesStruct_GBufferATexture;
  const uint PrePadding_SceneTexturesStruct_20;
  const uint BindlessResource_SceneTexturesStruct_GBufferBTexture;
  const uint PrePadding_SceneTexturesStruct_28;
  const uint BindlessResource_SceneTexturesStruct_GBufferCTexture;
  const uint PrePadding_SceneTexturesStruct_36;
  const uint BindlessResource_SceneTexturesStruct_GBufferDTexture;
  const uint PrePadding_SceneTexturesStruct_44;
  const uint BindlessResource_SceneTexturesStruct_GBufferETexture;
  const uint PrePadding_SceneTexturesStruct_52;
  const uint BindlessResource_SceneTexturesStruct_GBufferFTexture;
  const uint PrePadding_SceneTexturesStruct_60;
  const uint BindlessResource_SceneTexturesStruct_GBufferVelocityTexture;
  const uint PrePadding_SceneTexturesStruct_68;
  const uint BindlessResource_SceneTexturesStruct_ScreenSpaceAOTexture;
  const uint PrePadding_SceneTexturesStruct_76;
  const uint BindlessResource_SceneTexturesStruct_CustomDepthTexture;
  const uint PrePadding_SceneTexturesStruct_84;
  const uint BindlessResource_SceneTexturesStruct_CustomStencilTexture;
  const uint PrePadding_SceneTexturesStruct_92;
  const uint BindlessSampler_SceneTexturesStruct_PointClampSampler;
}
#line 3 "/Engine/Generated/UniformBuffers/MobileReflectionCapture.ush"
cbuffer MobileReflectionCapture {
  const float4 MobileReflectionCapture_Params;
  const uint BindlessResource_MobileReflectionCapture_Texture;
  const uint PrePadding_MobileReflectionCapture_20;
  const uint BindlessSampler_MobileReflectionCapture_TextureSampler;
}
#line 10 "/Engine/Generated/UniformBuffers/MobileReflectionCapture.ush"
TextureCube<vector<float, 4> > MobileReflectionCapture_Texture;
#line 11 "/Engine/Generated/UniformBuffers/MobileReflectionCapture.ush"
SamplerState MobileReflectionCapture_TextureSampler;
#line 3 "/Engine/Generated/UniformBuffers/InstanceVF.ush"
cbuffer InstanceVF {
  const uint BindlessResource_InstanceVF_VertexFetch_InstanceOriginBuffer;
  const uint PrePadding_InstanceVF_4;
  const uint BindlessResource_InstanceVF_VertexFetch_InstanceTransformBuffer;
  const uint PrePadding_InstanceVF_12;
  const uint BindlessResource_InstanceVF_VertexFetch_InstanceLightmapBuffer;
  const uint PrePadding_InstanceVF_20;
  const uint BindlessResource_InstanceVF_InstanceCustomDataBuffer;
  const uint PrePadding_InstanceVF_28;
  const int InstanceVF_NumCustomDataFloats;
}
#line 3 "/Engine/Generated/UniformBuffers/SingleLayerWater.ush"
cbuffer SingleLayerWater {
  const uint BindlessResource_SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture;
  const uint PrePadding_SingleLayerWater_4;
  const uint BindlessSampler_SingleLayerWater_SceneColorWithoutSingleLayerWaterSampler;
  const uint PrePadding_SingleLayerWater_12;
  const uint BindlessResource_SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture;
  const uint PrePadding_SingleLayerWater_20;
  const uint BindlessSampler_SingleLayerWater_SceneDepthWithoutSingleLayerWaterSampler;
  const uint PrePadding_SingleLayerWater_28;
  const uint BindlessResource_SingleLayerWater_CustomDepthTexture;
  const uint PrePadding_SingleLayerWater_36;
  const uint BindlessResource_SingleLayerWater_CustomStencilTexture;
  const uint PrePadding_SingleLayerWater_44;
  const uint BindlessSampler_SingleLayerWater_CustomDepthSampler;
  const uint PrePadding_SingleLayerWater_52;
  const uint PrePadding_SingleLayerWater_56;
  const uint PrePadding_SingleLayerWater_60;
  const float4 SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV;
  const float4 SingleLayerWater_DistortionParams;
  const float2 SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize;
  const float2 SingleLayerWater_SceneWithoutSingleLayerWaterInvTextureSize;
  const uint SingleLayerWater_bMainDirectionalLightVSMFiltering;
  const uint SingleLayerWater_bSeparateMainDirLightLuminance;
  const float PrePadding_SingleLayerWater_ForwardDirLightCloudShadow_120;
  const float PrePadding_SingleLayerWater_ForwardDirLightCloudShadow_124;
  const float4x4 SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapTranslatedWorldToLightClipMatrix;
  const float SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapFarDepthKm;
  const float PrePadding_SingleLayerWater_ForwardDirLightCloudShadow_196;
  const uint BindlessResource_SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapTexture;
  const uint PrePadding_SingleLayerWater_ForwardDirLightCloudShadow_204;
  const uint BindlessSampler_SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapSampler;
  const uint PrePadding_SingleLayerWater_ForwardDirLightCloudShadow_212;
  const float SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapStrength;
  const float PrePadding_SingleLayerWater_BlueNoise_220;
  const int3 SingleLayerWater_BlueNoise_Dimensions;
  const int PrePadding_SingleLayerWater_BlueNoise_236;
  const int3 SingleLayerWater_BlueNoise_ModuloMasks;
  const int PrePadding_SingleLayerWater_BlueNoise_252;
  const uint BindlessResource_SingleLayerWater_BlueNoise_ScalarTexture;
  const uint PrePadding_SingleLayerWater_BlueNoise_260;
  const uint BindlessResource_SingleLayerWater_BlueNoise_Vec2Texture;
}
#line 3 "/Engine/Generated/UniformBuffers/PrimitiveDither.ush"
cbuffer PrimitiveDither {
  const min16float PrimitiveDither_LODFactor;
}
#line 3 "/Engine/Generated/UniformBuffers/PrimitiveFade.ush"
cbuffer PrimitiveFade {
  const min16float2 PrimitiveFade_FadeTimeScaleBias;
}
#line 3 "/Engine/Generated/UniformBuffers/DeferredDecal.ush"
cbuffer DeferredDecal {
  const uint BindlessResource_DeferredDecal_PreviousFrameNormal;
  const uint PrePadding_DeferredDecal_4;
  const int DeferredDecal_NormalReprojectionEnabled;
  const float DeferredDecal_NormalReprojectionThresholdLow;
  const float DeferredDecal_NormalReprojectionThresholdHigh;
  const float DeferredDecal_NormalReprojectionThresholdScaleHelper;
  const float2 DeferredDecal_NormalReprojectionJitter;
}
#line 3 "/Engine/Generated/UniformBuffers/MobileSceneTextures.ush"
cbuffer MobileSceneTextures {
  const uint BindlessResource_MobileSceneTextures_SceneColorTexture;
  const uint PrePadding_MobileSceneTextures_4;
  const uint BindlessSampler_MobileSceneTextures_SceneColorTextureSampler;
  const uint PrePadding_MobileSceneTextures_12;
  const uint BindlessResource_MobileSceneTextures_SceneDepthTexture;
  const uint PrePadding_MobileSceneTextures_20;
  const uint BindlessSampler_MobileSceneTextures_SceneDepthTextureSampler;
  const uint PrePadding_MobileSceneTextures_28;
  const uint BindlessResource_MobileSceneTextures_CustomDepthTexture;
  const uint PrePadding_MobileSceneTextures_36;
  const uint BindlessSampler_MobileSceneTextures_CustomDepthTextureSampler;
  const uint PrePadding_MobileSceneTextures_44;
  const uint BindlessResource_MobileSceneTextures_CustomStencilTexture;
  const uint PrePadding_MobileSceneTextures_52;
  const uint BindlessResource_MobileSceneTextures_SceneVelocityTexture;
  const uint PrePadding_MobileSceneTextures_60;
  const uint BindlessSampler_MobileSceneTextures_SceneVelocityTextureSampler;
  const uint PrePadding_MobileSceneTextures_68;
  const uint BindlessResource_MobileSceneTextures_GBufferATexture;
  const uint PrePadding_MobileSceneTextures_76;
  const uint BindlessResource_MobileSceneTextures_GBufferBTexture;
  const uint PrePadding_MobileSceneTextures_84;
  const uint BindlessResource_MobileSceneTextures_GBufferCTexture;
  const uint PrePadding_MobileSceneTextures_92;
  const uint BindlessResource_MobileSceneTextures_GBufferDTexture;
  const uint PrePadding_MobileSceneTextures_100;
  const uint BindlessResource_MobileSceneTextures_SceneDepthAuxTexture;
  const uint PrePadding_MobileSceneTextures_108;
  const uint BindlessSampler_MobileSceneTextures_GBufferATextureSampler;
  const uint PrePadding_MobileSceneTextures_116;
  const uint BindlessSampler_MobileSceneTextures_GBufferBTextureSampler;
  const uint PrePadding_MobileSceneTextures_124;
  const uint BindlessSampler_MobileSceneTextures_GBufferCTextureSampler;
  const uint PrePadding_MobileSceneTextures_132;
  const uint BindlessSampler_MobileSceneTextures_GBufferDTextureSampler;
  const uint PrePadding_MobileSceneTextures_140;
  const uint BindlessSampler_MobileSceneTextures_SceneDepthAuxTextureSampler;
}
#line 3 "/Engine/Generated/UniformBuffers/Primitive.ush"
cbuffer Primitive {
  const uint Primitive_Flags;
  const uint Primitive_InstanceSceneDataOffset;
  const uint Primitive_NumInstanceSceneDataEntries;
  const int Primitive_SingleCaptureIndex;
  const float3 Primitive_TilePosition;
  const uint Primitive_PrimitiveComponentId;
  const float4x4 Primitive_LocalToRelativeWorld;
  const float4x4 Primitive_RelativeWorldToLocal;
  const float4x4 Primitive_PreviousLocalToRelativeWorld;
  const float4x4 Primitive_PreviousRelativeWorldToLocal;
  const float4x4 Primitive_WorldToPreviousWorld;
  const min16float3 Primitive_InvNonUniformScale;
  const float Primitive_ObjectBoundsX;
  const float4 Primitive_ObjectRelativeWorldPositionAndRadius;
  const float3 Primitive_ActorRelativeWorldPosition;
  const uint Primitive_LightmapUVIndex;
  const min16float3 Primitive_ObjectOrientation;
  const uint Primitive_LightmapDataIndex;
  const min16float4 Primitive_NonUniformScale;
  const float3 Primitive_PreSkinnedLocalBoundsMin;
  const uint Primitive_NaniteResourceID;
  const float3 Primitive_PreSkinnedLocalBoundsMax;
  const uint Primitive_NaniteHierarchyOffset;
  const float3 Primitive_LocalObjectBoundsMin;
  const float Primitive_ObjectBoundsY;
  const float3 Primitive_LocalObjectBoundsMax;
  const float Primitive_ObjectBoundsZ;
  const float3 Primitive_InstanceLocalBoundsCenter;
  const uint Primitive_InstancePayloadDataOffset;
  const float3 Primitive_InstanceLocalBoundsExtent;
  const uint Primitive_InstancePayloadDataStride;
  const float3 Primitive_WireframeColor;
  const uint Primitive_PackedNaniteFlags;
  const float3 Primitive_LevelColor;
  const int Primitive_PersistentPrimitiveIndex;
  const float2 Primitive_InstanceDrawDistanceMinMaxSquared;
  const float Primitive_InstanceWPODisableDistanceSquared;
  const uint Primitive_NaniteRayTracingDataOffset;
  const float Primitive_MaxWPODisplacement;
  const uint Primitive_CustomStencilValueAndMask;
  const uint PrePadding_Primitive_584;
  const uint PrePadding_Primitive_588;
  const float4 Primitive_CustomPrimitiveData[9];
}
#line 3 "/Engine/Generated/UniformBuffers/InstanceCulling.ush"
cbuffer InstanceCulling {
  const uint BindlessResource_InstanceCulling_InstanceIdsBuffer;
  const uint PrePadding_InstanceCulling_4;
  const uint BindlessResource_InstanceCulling_PageInfoBuffer;
  const uint PrePadding_InstanceCulling_12;
  const uint InstanceCulling_BufferCapacity;
}
#line 3 "/Engine/Generated/UniformBuffers/SpeedTreeData.ush"
cbuffer SpeedTreeData {
  const float4 SpeedTreeData_WindVector;
  const float4 SpeedTreeData_WindGlobal;
  const float4 SpeedTreeData_WindBranch;
  const float4 SpeedTreeData_WindBranchTwitch;
  const float4 SpeedTreeData_WindBranchWhip;
  const float4 SpeedTreeData_WindBranchAnchor;
  const float4 SpeedTreeData_WindBranchAdherences;
  const float4 SpeedTreeData_WindTurbulences;
  const float4 SpeedTreeData_WindLeaf1Ripple;
  const float4 SpeedTreeData_WindLeaf1Tumble;
  const float4 SpeedTreeData_WindLeaf1Twitch;
  const float4 SpeedTreeData_WindLeaf2Ripple;
  const float4 SpeedTreeData_WindLeaf2Tumble;
  const float4 SpeedTreeData_WindLeaf2Twitch;
  const float4 SpeedTreeData_WindFrondRipple;
  const float4 SpeedTreeData_WindRollingBranch;
  const float4 SpeedTreeData_WindRollingLeafAndDirection;
  const float4 SpeedTreeData_WindRollingNoise;
  const float4 SpeedTreeData_WindAnimation;
  const float4 SpeedTreeData_PrevWindVector;
  const float4 SpeedTreeData_PrevWindGlobal;
  const float4 SpeedTreeData_PrevWindBranch;
  const float4 SpeedTreeData_PrevWindBranchTwitch;
  const float4 SpeedTreeData_PrevWindBranchWhip;
  const float4 SpeedTreeData_PrevWindBranchAnchor;
  const float4 SpeedTreeData_PrevWindBranchAdherences;
  const float4 SpeedTreeData_PrevWindTurbulences;
  const float4 SpeedTreeData_PrevWindLeaf1Ripple;
  const float4 SpeedTreeData_PrevWindLeaf1Tumble;
  const float4 SpeedTreeData_PrevWindLeaf1Twitch;
  const float4 SpeedTreeData_PrevWindLeaf2Ripple;
  const float4 SpeedTreeData_PrevWindLeaf2Tumble;
  const float4 SpeedTreeData_PrevWindLeaf2Twitch;
  const float4 SpeedTreeData_PrevWindFrondRipple;
  const float4 SpeedTreeData_PrevWindRollingBranch;
  const float4 SpeedTreeData_PrevWindRollingLeafAndDirection;
  const float4 SpeedTreeData_PrevWindRollingNoise;
  const float4 SpeedTreeData_PrevWindAnimation;
}
#line 3 "/Engine/Generated/UniformBuffers/Atmosphere.ush"
cbuffer Atmosphere {
  const float Atmosphere_MultiScatteringFactor;
  const float Atmosphere_BottomRadiusKm;
  const float Atmosphere_TopRadiusKm;
  const float Atmosphere_RayleighDensityExpScale;
  const float4 Atmosphere_RayleighScattering;
  const float4 Atmosphere_MieScattering;
  const float Atmosphere_MieDensityExpScale;
  const float PrePadding_Atmosphere_52;
  const float PrePadding_Atmosphere_56;
  const float PrePadding_Atmosphere_60;
  const float4 Atmosphere_MieExtinction;
  const float Atmosphere_MiePhaseG;
  const float PrePadding_Atmosphere_84;
  const float PrePadding_Atmosphere_88;
  const float PrePadding_Atmosphere_92;
  const float4 Atmosphere_MieAbsorption;
  const float Atmosphere_AbsorptionDensity0LayerWidth;
  const float Atmosphere_AbsorptionDensity0ConstantTerm;
  const float Atmosphere_AbsorptionDensity0LinearTerm;
  const float Atmosphere_AbsorptionDensity1ConstantTerm;
  const float Atmosphere_AbsorptionDensity1LinearTerm;
  const float PrePadding_Atmosphere_132;
  const float PrePadding_Atmosphere_136;
  const float PrePadding_Atmosphere_140;
  const float4 Atmosphere_AbsorptionExtinction;
  const float4 Atmosphere_GroundAlbedo;
}
#line 3 "/Engine/Generated/UniformBuffers/OpaqueBasePass.ush"
cbuffer OpaqueBasePass {
  const uint OpaqueBasePass_Shared_Forward_NumLocalLights;
  const uint OpaqueBasePass_Shared_Forward_NumReflectionCaptures;
  const uint OpaqueBasePass_Shared_Forward_HasDirectionalLight;
  const uint OpaqueBasePass_Shared_Forward_NumGridCells;
  const int3 OpaqueBasePass_Shared_Forward_CulledGridSize;
  const uint OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell;
  const uint OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_36;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_40;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_44;
  const float3 OpaqueBasePass_Shared_Forward_LightGridZParams;
  const float PrePadding_OpaqueBasePass_Shared_Forward_60;
  const float3 OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius;
  const float3 OpaqueBasePass_Shared_Forward_DirectionalLightColor;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightVolumetricScatteringIntensity;
  const uint OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_100;
  const float2 OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
  const uint OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades;
  const int OpaqueBasePass_Shared_Forward_DirectionalLightVSM;
  const int PrePadding_OpaqueBasePass_Shared_Forward_120;
  const int PrePadding_OpaqueBasePass_Shared_Forward_124;
  const float4 OpaqueBasePass_Shared_Forward_CascadeEndDepths;
  const float4x4 OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4];
  const float4 OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightDepthBias;
  const uint OpaqueBasePass_Shared_Forward_DirectionalLightUseStaticShadowing;
  const uint OpaqueBasePass_Shared_Forward_SimpleLightsEndIndex;
  const uint OpaqueBasePass_Shared_Forward_ClusteredDeferredSupportedEndIndex;
  const uint OpaqueBasePass_Shared_Forward_LumenSupportedStartIndex;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_500;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_504;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_508;
  const float4 OpaqueBasePass_Shared_Forward_DirectionalLightStaticShadowBufferSize;
  const float4x4 OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow;
  const uint OpaqueBasePass_Shared_Forward_DirectLightingShowFlag;
  const float PrePadding_OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_596;
  const float PrePadding_OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_600;
  const float PrePadding_OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_604;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_ScreenRayLength;
  const int OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTRayCount;
  const int OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint OpaqueBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_644;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_648;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_652;
  const uint BindlessResource_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_660;
  const uint BindlessSampler_OpaqueBasePass_Shared_Forward_ShadowmapSampler;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_668;
  const uint BindlessResource_OpaqueBasePass_Shared_Forward_DirectionalLightStaticShadowmap;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_676;
  const uint BindlessSampler_OpaqueBasePass_Shared_Forward_StaticShadowmapSampler;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_684;
  const uint BindlessResource_OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_692;
  const uint BindlessResource_OpaqueBasePass_Shared_Forward_NumCulledLightsGrid;
  const uint PrePadding_OpaqueBasePass_Shared_Forward_700;
  const uint BindlessResource_OpaqueBasePass_Shared_Forward_CulledLightDataGrid;
  const float PrePadding_OpaqueBasePass_Shared_ForwardISR_708;
  const float PrePadding_OpaqueBasePass_Shared_ForwardISR_712;
  const float PrePadding_OpaqueBasePass_Shared_ForwardISR_716;
  const uint OpaqueBasePass_Shared_ForwardISR_NumLocalLights;
  const uint OpaqueBasePass_Shared_ForwardISR_NumReflectionCaptures;
  const uint OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
  const uint OpaqueBasePass_Shared_ForwardISR_NumGridCells;
  const int3 OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
  const uint OpaqueBasePass_Shared_ForwardISR_MaxCulledLightsPerCell;
  const uint OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_756;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_760;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_764;
  const float3 OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
  const float PrePadding_OpaqueBasePass_Shared_ForwardISR_780;
  const float3 OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightSourceRadius;
  const float3 OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightVolumetricScatteringIntensity;
  const uint OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_820;
  const float2 OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
  const uint OpaqueBasePass_Shared_ForwardISR_NumDirectionalLightCascades;
  const int OpaqueBasePass_Shared_ForwardISR_DirectionalLightVSM;
  const int PrePadding_OpaqueBasePass_Shared_ForwardISR_840;
  const int PrePadding_OpaqueBasePass_Shared_ForwardISR_844;
  const float4 OpaqueBasePass_Shared_ForwardISR_CascadeEndDepths;
  const float4x4 OpaqueBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowmapMinMax[4];
  const float4 OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlasBufferSize;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightDepthBias;
  const uint OpaqueBasePass_Shared_ForwardISR_DirectionalLightUseStaticShadowing;
  const uint OpaqueBasePass_Shared_ForwardISR_SimpleLightsEndIndex;
  const uint OpaqueBasePass_Shared_ForwardISR_ClusteredDeferredSupportedEndIndex;
  const uint OpaqueBasePass_Shared_ForwardISR_LumenSupportedStartIndex;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1220;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1224;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1228;
  const float4 OpaqueBasePass_Shared_ForwardISR_DirectionalLightStaticShadowBufferSize;
  const float4x4 OpaqueBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToStaticShadow;
  const uint OpaqueBasePass_Shared_ForwardISR_DirectLightingShowFlag;
  const float PrePadding_OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_1316;
  const float PrePadding_OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_1320;
  const float PrePadding_OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_1324;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_ScreenRayLength;
  const int OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTRayCount;
  const int OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint OpaqueBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1364;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1368;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1372;
  const uint BindlessResource_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlas;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1380;
  const uint BindlessSampler_OpaqueBasePass_Shared_ForwardISR_ShadowmapSampler;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1388;
  const uint BindlessResource_OpaqueBasePass_Shared_ForwardISR_DirectionalLightStaticShadowmap;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1396;
  const uint BindlessSampler_OpaqueBasePass_Shared_ForwardISR_StaticShadowmapSampler;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1404;
  const uint BindlessResource_OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1412;
  const uint BindlessResource_OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid;
  const uint PrePadding_OpaqueBasePass_Shared_ForwardISR_1420;
  const uint BindlessResource_OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid;
  const float PrePadding_OpaqueBasePass_Shared_Reflection_1428;
  const float PrePadding_OpaqueBasePass_Shared_Reflection_1432;
  const float PrePadding_OpaqueBasePass_Shared_Reflection_1436;
  const float4 OpaqueBasePass_Shared_Reflection_SkyLightParameters;
  const uint BindlessResource_OpaqueBasePass_Shared_Reflection_SkyLightCubemap;
  const uint PrePadding_OpaqueBasePass_Shared_Reflection_1460;
  const uint BindlessSampler_OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler;
  const uint PrePadding_OpaqueBasePass_Shared_Reflection_1468;
  const uint BindlessResource_OpaqueBasePass_Shared_Reflection_SkyLightBlendDestinationCubemap;
  const uint PrePadding_OpaqueBasePass_Shared_Reflection_1476;
  const uint BindlessSampler_OpaqueBasePass_Shared_Reflection_SkyLightBlendDestinationCubemapSampler;
  const uint PrePadding_OpaqueBasePass_Shared_Reflection_1484;
  const uint BindlessResource_OpaqueBasePass_Shared_Reflection_ReflectionCubemap;
  const uint PrePadding_OpaqueBasePass_Shared_Reflection_1492;
  const uint BindlessSampler_OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler;
  const uint PrePadding_OpaqueBasePass_Shared_Reflection_1500;
  const uint BindlessResource_OpaqueBasePass_Shared_Reflection_PreIntegratedGF;
  const uint PrePadding_OpaqueBasePass_Shared_Reflection_1508;
  const uint BindlessSampler_OpaqueBasePass_Shared_Reflection_PreIntegratedGFSampler;
  const float PrePadding_OpaqueBasePass_Shared_PlanarReflection_1516;
  const float4 OpaqueBasePass_Shared_PlanarReflection_ReflectionPlane;
  const float4 OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionOrigin;
  const float4 OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionXAxis;
  const float4 OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionYAxis;
  const float3x4 OpaqueBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix;
  const float3 OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionParameters;
  const float PrePadding_OpaqueBasePass_Shared_PlanarReflection_1644;
  const float2 OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionParameters2;
  const float PrePadding_OpaqueBasePass_Shared_PlanarReflection_1656;
  const float PrePadding_OpaqueBasePass_Shared_PlanarReflection_1660;
  const float4x4 OpaqueBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[2];
  const float4 OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[2];
  const float2 OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound;
  const uint OpaqueBasePass_Shared_PlanarReflection_bIsStereo;
  const uint PrePadding_OpaqueBasePass_Shared_PlanarReflection_1836;
  const uint BindlessResource_OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionTexture;
  const uint PrePadding_OpaqueBasePass_Shared_PlanarReflection_1844;
  const uint BindlessSampler_OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionSampler;
  const float PrePadding_OpaqueBasePass_Shared_Fog_1852;
  const float4 OpaqueBasePass_Shared_Fog_ExponentialFogParameters;
  const float4 OpaqueBasePass_Shared_Fog_ExponentialFogParameters2;
  const float4 OpaqueBasePass_Shared_Fog_ExponentialFogColorParameter;
  const float4 OpaqueBasePass_Shared_Fog_ExponentialFogParameters3;
  const float4 OpaqueBasePass_Shared_Fog_SkyAtmosphereAmbientContributionColorScale;
  const float4 OpaqueBasePass_Shared_Fog_InscatteringLightDirection;
  const float4 OpaqueBasePass_Shared_Fog_DirectionalInscatteringColor;
  const float2 OpaqueBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation;
  const float PrePadding_OpaqueBasePass_Shared_Fog_1976;
  const float PrePadding_OpaqueBasePass_Shared_Fog_1980;
  const float3 OpaqueBasePass_Shared_Fog_FogInscatteringTextureParameters;
  const float OpaqueBasePass_Shared_Fog_ApplyVolumetricFog;
  const float OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
  const float OpaqueBasePass_Shared_Fog_VolumetricFogNearFadeInDistanceInv;
  const uint BindlessResource_OpaqueBasePass_Shared_Fog_FogInscatteringColorCubemap;
  const uint PrePadding_OpaqueBasePass_Shared_Fog_2012;
  const uint BindlessSampler_OpaqueBasePass_Shared_Fog_FogInscatteringColorSampler;
  const uint PrePadding_OpaqueBasePass_Shared_Fog_2020;
  const uint BindlessResource_OpaqueBasePass_Shared_Fog_IntegratedLightScattering;
  const uint PrePadding_OpaqueBasePass_Shared_Fog_2028;
  const uint BindlessSampler_OpaqueBasePass_Shared_Fog_IntegratedLightScatteringSampler;
  const float PrePadding_OpaqueBasePass_Shared_FogISR_2036;
  const float PrePadding_OpaqueBasePass_Shared_FogISR_2040;
  const float PrePadding_OpaqueBasePass_Shared_FogISR_2044;
  const float4 OpaqueBasePass_Shared_FogISR_ExponentialFogParameters;
  const float4 OpaqueBasePass_Shared_FogISR_ExponentialFogParameters2;
  const float4 OpaqueBasePass_Shared_FogISR_ExponentialFogColorParameter;
  const float4 OpaqueBasePass_Shared_FogISR_ExponentialFogParameters3;
  const float4 OpaqueBasePass_Shared_FogISR_SkyAtmosphereAmbientContributionColorScale;
  const float4 OpaqueBasePass_Shared_FogISR_InscatteringLightDirection;
  const float4 OpaqueBasePass_Shared_FogISR_DirectionalInscatteringColor;
  const float2 OpaqueBasePass_Shared_FogISR_SinCosInscatteringColorCubemapRotation;
  const float PrePadding_OpaqueBasePass_Shared_FogISR_2168;
  const float PrePadding_OpaqueBasePass_Shared_FogISR_2172;
  const float3 OpaqueBasePass_Shared_FogISR_FogInscatteringTextureParameters;
  const float OpaqueBasePass_Shared_FogISR_ApplyVolumetricFog;
  const float OpaqueBasePass_Shared_FogISR_VolumetricFogStartDistance;
  const float OpaqueBasePass_Shared_FogISR_VolumetricFogNearFadeInDistanceInv;
  const uint BindlessResource_OpaqueBasePass_Shared_FogISR_FogInscatteringColorCubemap;
  const uint PrePadding_OpaqueBasePass_Shared_FogISR_2204;
  const uint BindlessSampler_OpaqueBasePass_Shared_FogISR_FogInscatteringColorSampler;
  const uint PrePadding_OpaqueBasePass_Shared_FogISR_2212;
  const uint BindlessResource_OpaqueBasePass_Shared_FogISR_IntegratedLightScattering;
  const uint PrePadding_OpaqueBasePass_Shared_FogISR_2220;
  const uint BindlessSampler_OpaqueBasePass_Shared_FogISR_IntegratedLightScatteringSampler;
  const float PrePadding_OpaqueBasePass_Shared_2228;
  const float PrePadding_OpaqueBasePass_Shared_2232;
  const float PrePadding_OpaqueBasePass_Shared_2236;
  const uint OpaqueBasePass_Shared_UseBasePassSkylight;
  const float PrePadding_OpaqueBasePass_Strata_2244;
  const float PrePadding_OpaqueBasePass_Strata_2248;
  const float PrePadding_OpaqueBasePass_Strata_2252;
  const uint OpaqueBasePass_Strata_MaxBytesPerPixel;
  const uint OpaqueBasePass_Strata_bRoughDiffuse;
  const uint OpaqueBasePass_Strata_PeelLayersAboveDepth;
  const uint OpaqueBasePass_Strata_bRoughnessTracking;
  const int OpaqueBasePass_Strata_SliceStoringDebugStrataTreeDataWithoutMRT;
  const int OpaqueBasePass_Strata_FirstSliceStoringStrataSSSDataWithoutMRT;
  const uint BindlessResource_OpaqueBasePass_Strata_MaterialTextureArrayUAVWithoutRTs;
  const uint PrePadding_OpaqueBasePass_Strata_2284;
  const uint BindlessResource_OpaqueBasePass_Strata_OpaqueRoughRefractionTextureUAV;
  const float PrePadding_OpaqueBasePass_2292;
  const float PrePadding_OpaqueBasePass_2296;
  const float PrePadding_OpaqueBasePass_2300;
  const int OpaqueBasePass_UseForwardScreenSpaceShadowMask;
  const int PrePadding_OpaqueBasePass_2308;
  const uint BindlessResource_OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture;
  const uint PrePadding_OpaqueBasePass_2316;
  const uint BindlessResource_OpaqueBasePass_IndirectOcclusionTexture;
  const uint PrePadding_OpaqueBasePass_2324;
  const uint BindlessResource_OpaqueBasePass_ResolvedSceneDepthTexture;
  const float PrePadding_OpaqueBasePass_2332;
  const uint BindlessResource_OpaqueBasePass_DBufferATexture;
  const uint PrePadding_OpaqueBasePass_2340;
  const uint BindlessResource_OpaqueBasePass_DBufferBTexture;
  const uint PrePadding_OpaqueBasePass_2348;
  const uint BindlessResource_OpaqueBasePass_DBufferCTexture;
  const uint PrePadding_OpaqueBasePass_2356;
  const uint BindlessResource_OpaqueBasePass_DBufferRenderMask;
  const uint PrePadding_OpaqueBasePass_2364;
  const uint BindlessSampler_OpaqueBasePass_DBufferATextureSampler;
  const uint PrePadding_OpaqueBasePass_2372;
  const uint BindlessSampler_OpaqueBasePass_DBufferBTextureSampler;
  const uint PrePadding_OpaqueBasePass_2380;
  const uint BindlessSampler_OpaqueBasePass_DBufferCTextureSampler;
  const uint PrePadding_OpaqueBasePass_2388;
  const uint PrePadding_OpaqueBasePass_2392;
  const uint PrePadding_OpaqueBasePass_2396;
  const uint BindlessResource_OpaqueBasePass_PreIntegratedGFTexture;
  const uint PrePadding_OpaqueBasePass_2404;
  const uint BindlessSampler_OpaqueBasePass_PreIntegratedGFSampler;
  const uint PrePadding_OpaqueBasePass_2412;
  const int OpaqueBasePass_Is24BitUnormDepthStencil;
  const int PrePadding_OpaqueBasePass_2420;
  const uint BindlessResource_OpaqueBasePass_EyeAdaptationBuffer;
}
#line 3 "/Engine/Generated/UniformBuffers/BasePass.ush"
cbuffer BasePass {
  const uint BasePass_Forward_NumLocalLights;
  const uint BasePass_Forward_NumReflectionCaptures;
  const uint BasePass_Forward_HasDirectionalLight;
  const uint BasePass_Forward_NumGridCells;
  const int3 BasePass_Forward_CulledGridSize;
  const uint BasePass_Forward_MaxCulledLightsPerCell;
  const uint BasePass_Forward_LightGridPixelSizeShift;
  const uint PrePadding_BasePass_Forward_36;
  const uint PrePadding_BasePass_Forward_40;
  const uint PrePadding_BasePass_Forward_44;
  const float3 BasePass_Forward_LightGridZParams;
  const float PrePadding_BasePass_Forward_60;
  const float3 BasePass_Forward_DirectionalLightDirection;
  const float BasePass_Forward_DirectionalLightSourceRadius;
  const float3 BasePass_Forward_DirectionalLightColor;
  const float BasePass_Forward_DirectionalLightVolumetricScatteringIntensity;
  const uint BasePass_Forward_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_BasePass_Forward_100;
  const float2 BasePass_Forward_DirectionalLightDistanceFadeMAD;
  const uint BasePass_Forward_NumDirectionalLightCascades;
  const int BasePass_Forward_DirectionalLightVSM;
  const int PrePadding_BasePass_Forward_120;
  const int PrePadding_BasePass_Forward_124;
  const float4 BasePass_Forward_CascadeEndDepths;
  const float4x4 BasePass_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 BasePass_Forward_DirectionalLightShadowmapMinMax[4];
  const float4 BasePass_Forward_DirectionalLightShadowmapAtlasBufferSize;
  const float BasePass_Forward_DirectionalLightDepthBias;
  const uint BasePass_Forward_DirectionalLightUseStaticShadowing;
  const uint BasePass_Forward_SimpleLightsEndIndex;
  const uint BasePass_Forward_ClusteredDeferredSupportedEndIndex;
  const uint BasePass_Forward_LumenSupportedStartIndex;
  const uint PrePadding_BasePass_Forward_500;
  const uint PrePadding_BasePass_Forward_504;
  const uint PrePadding_BasePass_Forward_508;
  const float4 BasePass_Forward_DirectionalLightStaticShadowBufferSize;
  const float4x4 BasePass_Forward_DirectionalLightTranslatedWorldToStaticShadow;
  const uint BasePass_Forward_DirectLightingShowFlag;
  const float PrePadding_BasePass_Forward_DirectionalLightSMRTSettings_596;
  const float PrePadding_BasePass_Forward_DirectionalLightSMRTSettings_600;
  const float PrePadding_BasePass_Forward_DirectionalLightSMRTSettings_604;
  const float BasePass_Forward_DirectionalLightSMRTSettings_ScreenRayLength;
  const int BasePass_Forward_DirectionalLightSMRTSettings_SMRTRayCount;
  const int BasePass_Forward_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float BasePass_Forward_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float BasePass_Forward_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float BasePass_Forward_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float BasePass_Forward_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float BasePass_Forward_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint BasePass_Forward_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_BasePass_Forward_644;
  const uint PrePadding_BasePass_Forward_648;
  const uint PrePadding_BasePass_Forward_652;
  const uint BindlessResource_BasePass_Forward_DirectionalLightShadowmapAtlas;
  const uint PrePadding_BasePass_Forward_660;
  const uint BindlessSampler_BasePass_Forward_ShadowmapSampler;
  const uint PrePadding_BasePass_Forward_668;
  const uint BindlessResource_BasePass_Forward_DirectionalLightStaticShadowmap;
  const uint PrePadding_BasePass_Forward_676;
  const uint BindlessSampler_BasePass_Forward_StaticShadowmapSampler;
  const uint PrePadding_BasePass_Forward_684;
  const uint BindlessResource_BasePass_Forward_ForwardLocalLightBuffer;
  const uint PrePadding_BasePass_Forward_692;
  const uint BindlessResource_BasePass_Forward_NumCulledLightsGrid;
  const uint PrePadding_BasePass_Forward_700;
  const uint BindlessResource_BasePass_Forward_CulledLightDataGrid;
  const float PrePadding_BasePass_ForwardISR_708;
  const float PrePadding_BasePass_ForwardISR_712;
  const float PrePadding_BasePass_ForwardISR_716;
  const uint BasePass_ForwardISR_NumLocalLights;
  const uint BasePass_ForwardISR_NumReflectionCaptures;
  const uint BasePass_ForwardISR_HasDirectionalLight;
  const uint BasePass_ForwardISR_NumGridCells;
  const int3 BasePass_ForwardISR_CulledGridSize;
  const uint BasePass_ForwardISR_MaxCulledLightsPerCell;
  const uint BasePass_ForwardISR_LightGridPixelSizeShift;
  const uint PrePadding_BasePass_ForwardISR_756;
  const uint PrePadding_BasePass_ForwardISR_760;
  const uint PrePadding_BasePass_ForwardISR_764;
  const float3 BasePass_ForwardISR_LightGridZParams;
  const float PrePadding_BasePass_ForwardISR_780;
  const float3 BasePass_ForwardISR_DirectionalLightDirection;
  const float BasePass_ForwardISR_DirectionalLightSourceRadius;
  const float3 BasePass_ForwardISR_DirectionalLightColor;
  const float BasePass_ForwardISR_DirectionalLightVolumetricScatteringIntensity;
  const uint BasePass_ForwardISR_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_BasePass_ForwardISR_820;
  const float2 BasePass_ForwardISR_DirectionalLightDistanceFadeMAD;
  const uint BasePass_ForwardISR_NumDirectionalLightCascades;
  const int BasePass_ForwardISR_DirectionalLightVSM;
  const int PrePadding_BasePass_ForwardISR_840;
  const int PrePadding_BasePass_ForwardISR_844;
  const float4 BasePass_ForwardISR_CascadeEndDepths;
  const float4x4 BasePass_ForwardISR_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 BasePass_ForwardISR_DirectionalLightShadowmapMinMax[4];
  const float4 BasePass_ForwardISR_DirectionalLightShadowmapAtlasBufferSize;
  const float BasePass_ForwardISR_DirectionalLightDepthBias;
  const uint BasePass_ForwardISR_DirectionalLightUseStaticShadowing;
  const uint BasePass_ForwardISR_SimpleLightsEndIndex;
  const uint BasePass_ForwardISR_ClusteredDeferredSupportedEndIndex;
  const uint BasePass_ForwardISR_LumenSupportedStartIndex;
  const uint PrePadding_BasePass_ForwardISR_1220;
  const uint PrePadding_BasePass_ForwardISR_1224;
  const uint PrePadding_BasePass_ForwardISR_1228;
  const float4 BasePass_ForwardISR_DirectionalLightStaticShadowBufferSize;
  const float4x4 BasePass_ForwardISR_DirectionalLightTranslatedWorldToStaticShadow;
  const uint BasePass_ForwardISR_DirectLightingShowFlag;
  const float PrePadding_BasePass_ForwardISR_DirectionalLightSMRTSettings_1316;
  const float PrePadding_BasePass_ForwardISR_DirectionalLightSMRTSettings_1320;
  const float PrePadding_BasePass_ForwardISR_DirectionalLightSMRTSettings_1324;
  const float BasePass_ForwardISR_DirectionalLightSMRTSettings_ScreenRayLength;
  const int BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTRayCount;
  const int BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint BasePass_ForwardISR_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_BasePass_ForwardISR_1364;
  const uint PrePadding_BasePass_ForwardISR_1368;
  const uint PrePadding_BasePass_ForwardISR_1372;
  const uint BindlessResource_BasePass_ForwardISR_DirectionalLightShadowmapAtlas;
  const uint PrePadding_BasePass_ForwardISR_1380;
  const uint BindlessSampler_BasePass_ForwardISR_ShadowmapSampler;
  const uint PrePadding_BasePass_ForwardISR_1388;
  const uint BindlessResource_BasePass_ForwardISR_DirectionalLightStaticShadowmap;
  const uint PrePadding_BasePass_ForwardISR_1396;
  const uint BindlessSampler_BasePass_ForwardISR_StaticShadowmapSampler;
  const uint PrePadding_BasePass_ForwardISR_1404;
  const uint BindlessResource_BasePass_ForwardISR_ForwardLocalLightBuffer;
  const uint PrePadding_BasePass_ForwardISR_1412;
  const uint BindlessResource_BasePass_ForwardISR_NumCulledLightsGrid;
  const uint PrePadding_BasePass_ForwardISR_1420;
  const uint BindlessResource_BasePass_ForwardISR_CulledLightDataGrid;
  const float PrePadding_BasePass_Reflection_1428;
  const float PrePadding_BasePass_Reflection_1432;
  const float PrePadding_BasePass_Reflection_1436;
  const float4 BasePass_Reflection_SkyLightParameters;
  const uint BindlessResource_BasePass_Reflection_SkyLightCubemap;
  const uint PrePadding_BasePass_Reflection_1460;
  const uint BindlessSampler_BasePass_Reflection_SkyLightCubemapSampler;
  const uint PrePadding_BasePass_Reflection_1468;
  const uint BindlessResource_BasePass_Reflection_SkyLightBlendDestinationCubemap;
  const uint PrePadding_BasePass_Reflection_1476;
  const uint BindlessSampler_BasePass_Reflection_SkyLightBlendDestinationCubemapSampler;
  const uint PrePadding_BasePass_Reflection_1484;
  const uint BindlessResource_BasePass_Reflection_ReflectionCubemap;
  const uint PrePadding_BasePass_Reflection_1492;
  const uint BindlessSampler_BasePass_Reflection_ReflectionCubemapSampler;
  const uint PrePadding_BasePass_Reflection_1500;
  const uint BindlessResource_BasePass_Reflection_PreIntegratedGF;
  const uint PrePadding_BasePass_Reflection_1508;
  const uint BindlessSampler_BasePass_Reflection_PreIntegratedGFSampler;
  const float PrePadding_BasePass_PlanarReflection_1516;
  const float4 BasePass_PlanarReflection_ReflectionPlane;
  const float4 BasePass_PlanarReflection_PlanarReflectionOrigin;
  const float4 BasePass_PlanarReflection_PlanarReflectionXAxis;
  const float4 BasePass_PlanarReflection_PlanarReflectionYAxis;
  const float3x4 BasePass_PlanarReflection_InverseTransposeMirrorMatrix;
  const float3 BasePass_PlanarReflection_PlanarReflectionParameters;
  const float PrePadding_BasePass_PlanarReflection_1644;
  const float2 BasePass_PlanarReflection_PlanarReflectionParameters2;
  const float PrePadding_BasePass_PlanarReflection_1656;
  const float PrePadding_BasePass_PlanarReflection_1660;
  const float4x4 BasePass_PlanarReflection_ProjectionWithExtraFOV[2];
  const float4 BasePass_PlanarReflection_PlanarReflectionScreenScaleBias[2];
  const float2 BasePass_PlanarReflection_PlanarReflectionScreenBound;
  const uint BasePass_PlanarReflection_bIsStereo;
  const uint PrePadding_BasePass_PlanarReflection_1836;
  const uint BindlessResource_BasePass_PlanarReflection_PlanarReflectionTexture;
  const uint PrePadding_BasePass_PlanarReflection_1844;
  const uint BindlessSampler_BasePass_PlanarReflection_PlanarReflectionSampler;
  const float PrePadding_BasePass_Fog_1852;
  const float4 BasePass_Fog_ExponentialFogParameters;
  const float4 BasePass_Fog_ExponentialFogParameters2;
  const float4 BasePass_Fog_ExponentialFogColorParameter;
  const float4 BasePass_Fog_ExponentialFogParameters3;
  const float4 BasePass_Fog_SkyAtmosphereAmbientContributionColorScale;
  const float4 BasePass_Fog_InscatteringLightDirection;
  const float4 BasePass_Fog_DirectionalInscatteringColor;
  const float2 BasePass_Fog_SinCosInscatteringColorCubemapRotation;
  const float PrePadding_BasePass_Fog_1976;
  const float PrePadding_BasePass_Fog_1980;
  const float3 BasePass_Fog_FogInscatteringTextureParameters;
  const float BasePass_Fog_ApplyVolumetricFog;
  const float BasePass_Fog_VolumetricFogStartDistance;
  const float BasePass_Fog_VolumetricFogNearFadeInDistanceInv;
  const uint BindlessResource_BasePass_Fog_FogInscatteringColorCubemap;
  const uint PrePadding_BasePass_Fog_2012;
  const uint BindlessSampler_BasePass_Fog_FogInscatteringColorSampler;
  const uint PrePadding_BasePass_Fog_2020;
  const uint BindlessResource_BasePass_Fog_IntegratedLightScattering;
  const uint PrePadding_BasePass_Fog_2028;
  const uint BindlessSampler_BasePass_Fog_IntegratedLightScatteringSampler;
  const float PrePadding_BasePass_FogISR_2036;
  const float PrePadding_BasePass_FogISR_2040;
  const float PrePadding_BasePass_FogISR_2044;
  const float4 BasePass_FogISR_ExponentialFogParameters;
  const float4 BasePass_FogISR_ExponentialFogParameters2;
  const float4 BasePass_FogISR_ExponentialFogColorParameter;
  const float4 BasePass_FogISR_ExponentialFogParameters3;
  const float4 BasePass_FogISR_SkyAtmosphereAmbientContributionColorScale;
  const float4 BasePass_FogISR_InscatteringLightDirection;
  const float4 BasePass_FogISR_DirectionalInscatteringColor;
  const float2 BasePass_FogISR_SinCosInscatteringColorCubemapRotation;
  const float PrePadding_BasePass_FogISR_2168;
  const float PrePadding_BasePass_FogISR_2172;
  const float3 BasePass_FogISR_FogInscatteringTextureParameters;
  const float BasePass_FogISR_ApplyVolumetricFog;
  const float BasePass_FogISR_VolumetricFogStartDistance;
  const float BasePass_FogISR_VolumetricFogNearFadeInDistanceInv;
  const uint BindlessResource_BasePass_FogISR_FogInscatteringColorCubemap;
  const uint PrePadding_BasePass_FogISR_2204;
  const uint BindlessSampler_BasePass_FogISR_FogInscatteringColorSampler;
  const uint PrePadding_BasePass_FogISR_2212;
  const uint BindlessResource_BasePass_FogISR_IntegratedLightScattering;
  const uint PrePadding_BasePass_FogISR_2220;
  const uint BindlessSampler_BasePass_FogISR_IntegratedLightScatteringSampler;
  const float PrePadding_BasePass_2228;
  const float PrePadding_BasePass_2232;
  const float PrePadding_BasePass_2236;
  const uint BasePass_UseBasePassSkylight;
}
#line 3 "/Engine/Generated/UniformBuffers/MobileBasePass.ush"
cbuffer MobileBasePass {
  const float MobileBasePass_AmbientOcclusionStaticFraction;
  const float PrePadding_MobileBasePass_Fog_4;
  const float PrePadding_MobileBasePass_Fog_8;
  const float PrePadding_MobileBasePass_Fog_12;
  const float4 MobileBasePass_Fog_ExponentialFogParameters;
  const float4 MobileBasePass_Fog_ExponentialFogParameters2;
  const float4 MobileBasePass_Fog_ExponentialFogColorParameter;
  const float4 MobileBasePass_Fog_ExponentialFogParameters3;
  const float4 MobileBasePass_Fog_SkyAtmosphereAmbientContributionColorScale;
  const float4 MobileBasePass_Fog_InscatteringLightDirection;
  const float4 MobileBasePass_Fog_DirectionalInscatteringColor;
  const float2 MobileBasePass_Fog_SinCosInscatteringColorCubemapRotation;
  const float PrePadding_MobileBasePass_Fog_136;
  const float PrePadding_MobileBasePass_Fog_140;
  const float3 MobileBasePass_Fog_FogInscatteringTextureParameters;
  const float MobileBasePass_Fog_ApplyVolumetricFog;
  const float MobileBasePass_Fog_VolumetricFogStartDistance;
  const float MobileBasePass_Fog_VolumetricFogNearFadeInDistanceInv;
  const uint BindlessResource_MobileBasePass_Fog_FogInscatteringColorCubemap;
  const uint PrePadding_MobileBasePass_Fog_172;
  const uint BindlessSampler_MobileBasePass_Fog_FogInscatteringColorSampler;
  const uint PrePadding_MobileBasePass_Fog_180;
  const uint BindlessResource_MobileBasePass_Fog_IntegratedLightScattering;
  const uint PrePadding_MobileBasePass_Fog_188;
  const uint BindlessSampler_MobileBasePass_Fog_IntegratedLightScatteringSampler;
  const float PrePadding_MobileBasePass_Forward_196;
  const float PrePadding_MobileBasePass_Forward_200;
  const float PrePadding_MobileBasePass_Forward_204;
  const uint MobileBasePass_Forward_NumLocalLights;
  const uint MobileBasePass_Forward_NumReflectionCaptures;
  const uint MobileBasePass_Forward_HasDirectionalLight;
  const uint MobileBasePass_Forward_NumGridCells;
  const int3 MobileBasePass_Forward_CulledGridSize;
  const uint MobileBasePass_Forward_MaxCulledLightsPerCell;
  const uint MobileBasePass_Forward_LightGridPixelSizeShift;
  const uint PrePadding_MobileBasePass_Forward_244;
  const uint PrePadding_MobileBasePass_Forward_248;
  const uint PrePadding_MobileBasePass_Forward_252;
  const float3 MobileBasePass_Forward_LightGridZParams;
  const float PrePadding_MobileBasePass_Forward_268;
  const float3 MobileBasePass_Forward_DirectionalLightDirection;
  const float MobileBasePass_Forward_DirectionalLightSourceRadius;
  const float3 MobileBasePass_Forward_DirectionalLightColor;
  const float MobileBasePass_Forward_DirectionalLightVolumetricScatteringIntensity;
  const uint MobileBasePass_Forward_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_MobileBasePass_Forward_308;
  const float2 MobileBasePass_Forward_DirectionalLightDistanceFadeMAD;
  const uint MobileBasePass_Forward_NumDirectionalLightCascades;
  const int MobileBasePass_Forward_DirectionalLightVSM;
  const int PrePadding_MobileBasePass_Forward_328;
  const int PrePadding_MobileBasePass_Forward_332;
  const float4 MobileBasePass_Forward_CascadeEndDepths;
  const float4x4 MobileBasePass_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 MobileBasePass_Forward_DirectionalLightShadowmapMinMax[4];
  const float4 MobileBasePass_Forward_DirectionalLightShadowmapAtlasBufferSize;
  const float MobileBasePass_Forward_DirectionalLightDepthBias;
  const uint MobileBasePass_Forward_DirectionalLightUseStaticShadowing;
  const uint MobileBasePass_Forward_SimpleLightsEndIndex;
  const uint MobileBasePass_Forward_ClusteredDeferredSupportedEndIndex;
  const uint MobileBasePass_Forward_LumenSupportedStartIndex;
  const uint PrePadding_MobileBasePass_Forward_708;
  const uint PrePadding_MobileBasePass_Forward_712;
  const uint PrePadding_MobileBasePass_Forward_716;
  const float4 MobileBasePass_Forward_DirectionalLightStaticShadowBufferSize;
  const float4x4 MobileBasePass_Forward_DirectionalLightTranslatedWorldToStaticShadow;
  const uint MobileBasePass_Forward_DirectLightingShowFlag;
  const float PrePadding_MobileBasePass_Forward_DirectionalLightSMRTSettings_804;
  const float PrePadding_MobileBasePass_Forward_DirectionalLightSMRTSettings_808;
  const float PrePadding_MobileBasePass_Forward_DirectionalLightSMRTSettings_812;
  const float MobileBasePass_Forward_DirectionalLightSMRTSettings_ScreenRayLength;
  const int MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTRayCount;
  const int MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint MobileBasePass_Forward_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_MobileBasePass_Forward_852;
  const uint PrePadding_MobileBasePass_Forward_856;
  const uint PrePadding_MobileBasePass_Forward_860;
  const uint BindlessResource_MobileBasePass_Forward_DirectionalLightShadowmapAtlas;
  const uint PrePadding_MobileBasePass_Forward_868;
  const uint BindlessSampler_MobileBasePass_Forward_ShadowmapSampler;
  const uint PrePadding_MobileBasePass_Forward_876;
  const uint BindlessResource_MobileBasePass_Forward_DirectionalLightStaticShadowmap;
  const uint PrePadding_MobileBasePass_Forward_884;
  const uint BindlessSampler_MobileBasePass_Forward_StaticShadowmapSampler;
  const uint PrePadding_MobileBasePass_Forward_892;
  const uint BindlessResource_MobileBasePass_Forward_ForwardLocalLightBuffer;
  const uint PrePadding_MobileBasePass_Forward_900;
  const uint BindlessResource_MobileBasePass_Forward_NumCulledLightsGrid;
  const uint PrePadding_MobileBasePass_Forward_908;
  const uint BindlessResource_MobileBasePass_Forward_CulledLightDataGrid;
  const float PrePadding_MobileBasePass_ForwardMMV_916;
  const float PrePadding_MobileBasePass_ForwardMMV_920;
  const float PrePadding_MobileBasePass_ForwardMMV_924;
  const uint MobileBasePass_ForwardMMV_NumLocalLights;
  const uint MobileBasePass_ForwardMMV_NumReflectionCaptures;
  const uint MobileBasePass_ForwardMMV_HasDirectionalLight;
  const uint MobileBasePass_ForwardMMV_NumGridCells;
  const int3 MobileBasePass_ForwardMMV_CulledGridSize;
  const uint MobileBasePass_ForwardMMV_MaxCulledLightsPerCell;
  const uint MobileBasePass_ForwardMMV_LightGridPixelSizeShift;
  const uint PrePadding_MobileBasePass_ForwardMMV_964;
  const uint PrePadding_MobileBasePass_ForwardMMV_968;
  const uint PrePadding_MobileBasePass_ForwardMMV_972;
  const float3 MobileBasePass_ForwardMMV_LightGridZParams;
  const float PrePadding_MobileBasePass_ForwardMMV_988;
  const float3 MobileBasePass_ForwardMMV_DirectionalLightDirection;
  const float MobileBasePass_ForwardMMV_DirectionalLightSourceRadius;
  const float3 MobileBasePass_ForwardMMV_DirectionalLightColor;
  const float MobileBasePass_ForwardMMV_DirectionalLightVolumetricScatteringIntensity;
  const uint MobileBasePass_ForwardMMV_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_MobileBasePass_ForwardMMV_1028;
  const float2 MobileBasePass_ForwardMMV_DirectionalLightDistanceFadeMAD;
  const uint MobileBasePass_ForwardMMV_NumDirectionalLightCascades;
  const int MobileBasePass_ForwardMMV_DirectionalLightVSM;
  const int PrePadding_MobileBasePass_ForwardMMV_1048;
  const int PrePadding_MobileBasePass_ForwardMMV_1052;
  const float4 MobileBasePass_ForwardMMV_CascadeEndDepths;
  const float4x4 MobileBasePass_ForwardMMV_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 MobileBasePass_ForwardMMV_DirectionalLightShadowmapMinMax[4];
  const float4 MobileBasePass_ForwardMMV_DirectionalLightShadowmapAtlasBufferSize;
  const float MobileBasePass_ForwardMMV_DirectionalLightDepthBias;
  const uint MobileBasePass_ForwardMMV_DirectionalLightUseStaticShadowing;
  const uint MobileBasePass_ForwardMMV_SimpleLightsEndIndex;
  const uint MobileBasePass_ForwardMMV_ClusteredDeferredSupportedEndIndex;
  const uint MobileBasePass_ForwardMMV_LumenSupportedStartIndex;
  const uint PrePadding_MobileBasePass_ForwardMMV_1428;
  const uint PrePadding_MobileBasePass_ForwardMMV_1432;
  const uint PrePadding_MobileBasePass_ForwardMMV_1436;
  const float4 MobileBasePass_ForwardMMV_DirectionalLightStaticShadowBufferSize;
  const float4x4 MobileBasePass_ForwardMMV_DirectionalLightTranslatedWorldToStaticShadow;
  const uint MobileBasePass_ForwardMMV_DirectLightingShowFlag;
  const float PrePadding_MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_1524;
  const float PrePadding_MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_1528;
  const float PrePadding_MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_1532;
  const float MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_ScreenRayLength;
  const int MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTRayCount;
  const int MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint MobileBasePass_ForwardMMV_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_MobileBasePass_ForwardMMV_1572;
  const uint PrePadding_MobileBasePass_ForwardMMV_1576;
  const uint PrePadding_MobileBasePass_ForwardMMV_1580;
  const uint BindlessResource_MobileBasePass_ForwardMMV_DirectionalLightShadowmapAtlas;
  const uint PrePadding_MobileBasePass_ForwardMMV_1588;
  const uint BindlessSampler_MobileBasePass_ForwardMMV_ShadowmapSampler;
  const uint PrePadding_MobileBasePass_ForwardMMV_1596;
  const uint BindlessResource_MobileBasePass_ForwardMMV_DirectionalLightStaticShadowmap;
  const uint PrePadding_MobileBasePass_ForwardMMV_1604;
  const uint BindlessSampler_MobileBasePass_ForwardMMV_StaticShadowmapSampler;
  const uint PrePadding_MobileBasePass_ForwardMMV_1612;
  const uint BindlessResource_MobileBasePass_ForwardMMV_ForwardLocalLightBuffer;
  const uint PrePadding_MobileBasePass_ForwardMMV_1620;
  const uint BindlessResource_MobileBasePass_ForwardMMV_NumCulledLightsGrid;
  const uint PrePadding_MobileBasePass_ForwardMMV_1628;
  const uint BindlessResource_MobileBasePass_ForwardMMV_CulledLightDataGrid;
  const float PrePadding_MobileBasePass_PlanarReflection_1636;
  const float PrePadding_MobileBasePass_PlanarReflection_1640;
  const float PrePadding_MobileBasePass_PlanarReflection_1644;
  const float4 MobileBasePass_PlanarReflection_ReflectionPlane;
  const float4 MobileBasePass_PlanarReflection_PlanarReflectionOrigin;
  const float4 MobileBasePass_PlanarReflection_PlanarReflectionXAxis;
  const float4 MobileBasePass_PlanarReflection_PlanarReflectionYAxis;
  const float3x4 MobileBasePass_PlanarReflection_InverseTransposeMirrorMatrix;
  const float3 MobileBasePass_PlanarReflection_PlanarReflectionParameters;
  const float PrePadding_MobileBasePass_PlanarReflection_1772;
  const float2 MobileBasePass_PlanarReflection_PlanarReflectionParameters2;
  const float PrePadding_MobileBasePass_PlanarReflection_1784;
  const float PrePadding_MobileBasePass_PlanarReflection_1788;
  const float4x4 MobileBasePass_PlanarReflection_ProjectionWithExtraFOV[2];
  const float4 MobileBasePass_PlanarReflection_PlanarReflectionScreenScaleBias[2];
  const float2 MobileBasePass_PlanarReflection_PlanarReflectionScreenBound;
  const uint MobileBasePass_PlanarReflection_bIsStereo;
  const uint PrePadding_MobileBasePass_PlanarReflection_1964;
  const uint BindlessResource_MobileBasePass_PlanarReflection_PlanarReflectionTexture;
  const uint PrePadding_MobileBasePass_PlanarReflection_1972;
  const uint BindlessSampler_MobileBasePass_PlanarReflection_PlanarReflectionSampler;
  const float PrePadding_MobileBasePass_SceneTextures_1980;
  const uint BindlessResource_MobileBasePass_SceneTextures_SceneColorTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_1988;
  const uint BindlessSampler_MobileBasePass_SceneTextures_SceneColorTextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_1996;
  const uint BindlessResource_MobileBasePass_SceneTextures_SceneDepthTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2004;
  const uint BindlessSampler_MobileBasePass_SceneTextures_SceneDepthTextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_2012;
  const uint BindlessResource_MobileBasePass_SceneTextures_CustomDepthTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2020;
  const uint BindlessSampler_MobileBasePass_SceneTextures_CustomDepthTextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_2028;
  const uint BindlessResource_MobileBasePass_SceneTextures_CustomStencilTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2036;
  const uint BindlessResource_MobileBasePass_SceneTextures_SceneVelocityTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2044;
  const uint BindlessSampler_MobileBasePass_SceneTextures_SceneVelocityTextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_2052;
  const uint BindlessResource_MobileBasePass_SceneTextures_GBufferATexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2060;
  const uint BindlessResource_MobileBasePass_SceneTextures_GBufferBTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2068;
  const uint BindlessResource_MobileBasePass_SceneTextures_GBufferCTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2076;
  const uint BindlessResource_MobileBasePass_SceneTextures_GBufferDTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2084;
  const uint BindlessResource_MobileBasePass_SceneTextures_SceneDepthAuxTexture;
  const uint PrePadding_MobileBasePass_SceneTextures_2092;
  const uint BindlessSampler_MobileBasePass_SceneTextures_GBufferATextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_2100;
  const uint BindlessSampler_MobileBasePass_SceneTextures_GBufferBTextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_2108;
  const uint BindlessSampler_MobileBasePass_SceneTextures_GBufferCTextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_2116;
  const uint BindlessSampler_MobileBasePass_SceneTextures_GBufferDTextureSampler;
  const uint PrePadding_MobileBasePass_SceneTextures_2124;
  const uint BindlessSampler_MobileBasePass_SceneTextures_SceneDepthAuxTextureSampler;
  const float PrePadding_MobileBasePass_Strata_2132;
  const float PrePadding_MobileBasePass_Strata_2136;
  const float PrePadding_MobileBasePass_Strata_2140;
  const uint MobileBasePass_Strata_MaxBytesPerPixel;
  const uint MobileBasePass_Strata_bRoughDiffuse;
  const uint MobileBasePass_Strata_PeelLayersAboveDepth;
  const uint MobileBasePass_Strata_bRoughnessTracking;
  const float4 MobileBasePass_DebugViewMode_AccuracyColors[5];
  const float4 MobileBasePass_DebugViewMode_LODColors[8];
  const float4 MobileBasePass_ReflectionsParameters_SkyLightParameters;
  const uint BindlessResource_MobileBasePass_ReflectionsParameters_SkyLightCubemap;
  const uint PrePadding_MobileBasePass_ReflectionsParameters_2388;
  const uint BindlessSampler_MobileBasePass_ReflectionsParameters_SkyLightCubemapSampler;
  const uint PrePadding_MobileBasePass_ReflectionsParameters_2396;
  const uint BindlessResource_MobileBasePass_ReflectionsParameters_SkyLightBlendDestinationCubemap;
  const uint PrePadding_MobileBasePass_ReflectionsParameters_2404;
  const uint BindlessSampler_MobileBasePass_ReflectionsParameters_SkyLightBlendDestinationCubemapSampler;
  const uint PrePadding_MobileBasePass_ReflectionsParameters_2412;
  const uint BindlessResource_MobileBasePass_ReflectionsParameters_ReflectionCubemap;
  const uint PrePadding_MobileBasePass_ReflectionsParameters_2420;
  const uint BindlessSampler_MobileBasePass_ReflectionsParameters_ReflectionCubemapSampler;
  const uint PrePadding_MobileBasePass_ReflectionsParameters_2428;
  const uint BindlessResource_MobileBasePass_ReflectionsParameters_PreIntegratedGF;
  const uint PrePadding_MobileBasePass_ReflectionsParameters_2436;
  const uint BindlessSampler_MobileBasePass_ReflectionsParameters_PreIntegratedGFSampler;
  const float PrePadding_MobileBasePass_2444;
  const uint BindlessResource_MobileBasePass_PreIntegratedGFTexture;
  const uint PrePadding_MobileBasePass_2452;
  const uint BindlessSampler_MobileBasePass_PreIntegratedGFSampler;
  const uint PrePadding_MobileBasePass_2460;
  const uint BindlessResource_MobileBasePass_EyeAdaptationBuffer;
  const uint PrePadding_MobileBasePass_2468;
  const uint BindlessResource_MobileBasePass_RWOcclusionBufferUAV;
  const uint PrePadding_MobileBasePass_2476;
  const uint BindlessResource_MobileBasePass_AmbientOcclusionTexture;
  const uint PrePadding_MobileBasePass_2484;
  const uint BindlessSampler_MobileBasePass_AmbientOcclusionSampler;
  const uint PrePadding_MobileBasePass_2492;
  const uint BindlessResource_MobileBasePass_ScreenSpaceShadowMaskTexture;
  const uint PrePadding_MobileBasePass_2500;
  const uint BindlessSampler_MobileBasePass_ScreenSpaceShadowMaskSampler;
}
#line 277 "/Engine/Generated/UniformBuffers/MobileBasePass.ush"
Buffer<float4> MobileBasePass_Forward_ForwardLocalLightBuffer;
#line 278 "/Engine/Generated/UniformBuffers/MobileBasePass.ush"
Buffer<uint> MobileBasePass_Forward_NumCulledLightsGrid;
#line 279 "/Engine/Generated/UniformBuffers/MobileBasePass.ush"
Buffer<uint> MobileBasePass_Forward_CulledLightDataGrid;
#line 3 "/Engine/Generated/UniformBuffers/TranslucentBasePass.ush"
cbuffer TranslucentBasePass {
  const uint TranslucentBasePass_Shared_Forward_NumLocalLights;
  const uint TranslucentBasePass_Shared_Forward_NumReflectionCaptures;
  const uint TranslucentBasePass_Shared_Forward_HasDirectionalLight;
  const uint TranslucentBasePass_Shared_Forward_NumGridCells;
  const int3 TranslucentBasePass_Shared_Forward_CulledGridSize;
  const uint TranslucentBasePass_Shared_Forward_MaxCulledLightsPerCell;
  const uint TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_36;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_40;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_44;
  const float3 TranslucentBasePass_Shared_Forward_LightGridZParams;
  const float PrePadding_TranslucentBasePass_Shared_Forward_60;
  const float3 TranslucentBasePass_Shared_Forward_DirectionalLightDirection;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius;
  const float3 TranslucentBasePass_Shared_Forward_DirectionalLightColor;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightVolumetricScatteringIntensity;
  const uint TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_100;
  const float2 TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
  const uint TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades;
  const int TranslucentBasePass_Shared_Forward_DirectionalLightVSM;
  const int PrePadding_TranslucentBasePass_Shared_Forward_120;
  const int PrePadding_TranslucentBasePass_Shared_Forward_124;
  const float4 TranslucentBasePass_Shared_Forward_CascadeEndDepths;
  const float4x4 TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4];
  const float4 TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightDepthBias;
  const uint TranslucentBasePass_Shared_Forward_DirectionalLightUseStaticShadowing;
  const uint TranslucentBasePass_Shared_Forward_SimpleLightsEndIndex;
  const uint TranslucentBasePass_Shared_Forward_ClusteredDeferredSupportedEndIndex;
  const uint TranslucentBasePass_Shared_Forward_LumenSupportedStartIndex;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_500;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_504;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_508;
  const float4 TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowBufferSize;
  const float4x4 TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow;
  const uint TranslucentBasePass_Shared_Forward_DirectLightingShowFlag;
  const float PrePadding_TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_596;
  const float PrePadding_TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_600;
  const float PrePadding_TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_604;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_ScreenRayLength;
  const int TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTRayCount;
  const int TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint TranslucentBasePass_Shared_Forward_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_644;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_648;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_652;
  const uint BindlessResource_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_660;
  const uint BindlessSampler_TranslucentBasePass_Shared_Forward_ShadowmapSampler;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_668;
  const uint BindlessResource_TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_676;
  const uint BindlessSampler_TranslucentBasePass_Shared_Forward_StaticShadowmapSampler;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_684;
  const uint BindlessResource_TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_692;
  const uint BindlessResource_TranslucentBasePass_Shared_Forward_NumCulledLightsGrid;
  const uint PrePadding_TranslucentBasePass_Shared_Forward_700;
  const uint BindlessResource_TranslucentBasePass_Shared_Forward_CulledLightDataGrid;
  const float PrePadding_TranslucentBasePass_Shared_ForwardISR_708;
  const float PrePadding_TranslucentBasePass_Shared_ForwardISR_712;
  const float PrePadding_TranslucentBasePass_Shared_ForwardISR_716;
  const uint TranslucentBasePass_Shared_ForwardISR_NumLocalLights;
  const uint TranslucentBasePass_Shared_ForwardISR_NumReflectionCaptures;
  const uint TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight;
  const uint TranslucentBasePass_Shared_ForwardISR_NumGridCells;
  const int3 TranslucentBasePass_Shared_ForwardISR_CulledGridSize;
  const uint TranslucentBasePass_Shared_ForwardISR_MaxCulledLightsPerCell;
  const uint TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_756;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_760;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_764;
  const float3 TranslucentBasePass_Shared_ForwardISR_LightGridZParams;
  const float PrePadding_TranslucentBasePass_Shared_ForwardISR_780;
  const float3 TranslucentBasePass_Shared_ForwardISR_DirectionalLightDirection;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightSourceRadius;
  const float3 TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightVolumetricScatteringIntensity;
  const uint TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_820;
  const float2 TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
  const uint TranslucentBasePass_Shared_ForwardISR_NumDirectionalLightCascades;
  const int TranslucentBasePass_Shared_ForwardISR_DirectionalLightVSM;
  const int PrePadding_TranslucentBasePass_Shared_ForwardISR_840;
  const int PrePadding_TranslucentBasePass_Shared_ForwardISR_844;
  const float4 TranslucentBasePass_Shared_ForwardISR_CascadeEndDepths;
  const float4x4 TranslucentBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowmapMinMax[4];
  const float4 TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlasBufferSize;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightDepthBias;
  const uint TranslucentBasePass_Shared_ForwardISR_DirectionalLightUseStaticShadowing;
  const uint TranslucentBasePass_Shared_ForwardISR_SimpleLightsEndIndex;
  const uint TranslucentBasePass_Shared_ForwardISR_ClusteredDeferredSupportedEndIndex;
  const uint TranslucentBasePass_Shared_ForwardISR_LumenSupportedStartIndex;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1220;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1224;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1228;
  const float4 TranslucentBasePass_Shared_ForwardISR_DirectionalLightStaticShadowBufferSize;
  const float4x4 TranslucentBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToStaticShadow;
  const uint TranslucentBasePass_Shared_ForwardISR_DirectLightingShowFlag;
  const float PrePadding_TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_1316;
  const float PrePadding_TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_1320;
  const float PrePadding_TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_1324;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_ScreenRayLength;
  const int TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTRayCount;
  const int TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint TranslucentBasePass_Shared_ForwardISR_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1364;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1368;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1372;
  const uint BindlessResource_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlas;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1380;
  const uint BindlessSampler_TranslucentBasePass_Shared_ForwardISR_ShadowmapSampler;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1388;
  const uint BindlessResource_TranslucentBasePass_Shared_ForwardISR_DirectionalLightStaticShadowmap;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1396;
  const uint BindlessSampler_TranslucentBasePass_Shared_ForwardISR_StaticShadowmapSampler;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1404;
  const uint BindlessResource_TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1412;
  const uint BindlessResource_TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid;
  const uint PrePadding_TranslucentBasePass_Shared_ForwardISR_1420;
  const uint BindlessResource_TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid;
  const float PrePadding_TranslucentBasePass_Shared_Reflection_1428;
  const float PrePadding_TranslucentBasePass_Shared_Reflection_1432;
  const float PrePadding_TranslucentBasePass_Shared_Reflection_1436;
  const float4 TranslucentBasePass_Shared_Reflection_SkyLightParameters;
  const uint BindlessResource_TranslucentBasePass_Shared_Reflection_SkyLightCubemap;
  const uint PrePadding_TranslucentBasePass_Shared_Reflection_1460;
  const uint BindlessSampler_TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler;
  const uint PrePadding_TranslucentBasePass_Shared_Reflection_1468;
  const uint BindlessResource_TranslucentBasePass_Shared_Reflection_SkyLightBlendDestinationCubemap;
  const uint PrePadding_TranslucentBasePass_Shared_Reflection_1476;
  const uint BindlessSampler_TranslucentBasePass_Shared_Reflection_SkyLightBlendDestinationCubemapSampler;
  const uint PrePadding_TranslucentBasePass_Shared_Reflection_1484;
  const uint BindlessResource_TranslucentBasePass_Shared_Reflection_ReflectionCubemap;
  const uint PrePadding_TranslucentBasePass_Shared_Reflection_1492;
  const uint BindlessSampler_TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler;
  const uint PrePadding_TranslucentBasePass_Shared_Reflection_1500;
  const uint BindlessResource_TranslucentBasePass_Shared_Reflection_PreIntegratedGF;
  const uint PrePadding_TranslucentBasePass_Shared_Reflection_1508;
  const uint BindlessSampler_TranslucentBasePass_Shared_Reflection_PreIntegratedGFSampler;
  const float PrePadding_TranslucentBasePass_Shared_PlanarReflection_1516;
  const float4 TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane;
  const float4 TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin;
  const float4 TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis;
  const float4 TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis;
  const float3x4 TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix;
  const float3 TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters;
  const float PrePadding_TranslucentBasePass_Shared_PlanarReflection_1644;
  const float2 TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2;
  const float PrePadding_TranslucentBasePass_Shared_PlanarReflection_1656;
  const float PrePadding_TranslucentBasePass_Shared_PlanarReflection_1660;
  const float4x4 TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[2];
  const float4 TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[2];
  const float2 TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound;
  const uint TranslucentBasePass_Shared_PlanarReflection_bIsStereo;
  const uint PrePadding_TranslucentBasePass_Shared_PlanarReflection_1836;
  const uint BindlessResource_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture;
  const uint PrePadding_TranslucentBasePass_Shared_PlanarReflection_1844;
  const uint BindlessSampler_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionSampler;
  const float PrePadding_TranslucentBasePass_Shared_Fog_1852;
  const float4 TranslucentBasePass_Shared_Fog_ExponentialFogParameters;
  const float4 TranslucentBasePass_Shared_Fog_ExponentialFogParameters2;
  const float4 TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter;
  const float4 TranslucentBasePass_Shared_Fog_ExponentialFogParameters3;
  const float4 TranslucentBasePass_Shared_Fog_SkyAtmosphereAmbientContributionColorScale;
  const float4 TranslucentBasePass_Shared_Fog_InscatteringLightDirection;
  const float4 TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor;
  const float2 TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation;
  const float PrePadding_TranslucentBasePass_Shared_Fog_1976;
  const float PrePadding_TranslucentBasePass_Shared_Fog_1980;
  const float3 TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters;
  const float TranslucentBasePass_Shared_Fog_ApplyVolumetricFog;
  const float TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance;
  const float TranslucentBasePass_Shared_Fog_VolumetricFogNearFadeInDistanceInv;
  const uint BindlessResource_TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap;
  const uint PrePadding_TranslucentBasePass_Shared_Fog_2012;
  const uint BindlessSampler_TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler;
  const uint PrePadding_TranslucentBasePass_Shared_Fog_2020;
  const uint BindlessResource_TranslucentBasePass_Shared_Fog_IntegratedLightScattering;
  const uint PrePadding_TranslucentBasePass_Shared_Fog_2028;
  const uint BindlessSampler_TranslucentBasePass_Shared_Fog_IntegratedLightScatteringSampler;
  const float PrePadding_TranslucentBasePass_Shared_FogISR_2036;
  const float PrePadding_TranslucentBasePass_Shared_FogISR_2040;
  const float PrePadding_TranslucentBasePass_Shared_FogISR_2044;
  const float4 TranslucentBasePass_Shared_FogISR_ExponentialFogParameters;
  const float4 TranslucentBasePass_Shared_FogISR_ExponentialFogParameters2;
  const float4 TranslucentBasePass_Shared_FogISR_ExponentialFogColorParameter;
  const float4 TranslucentBasePass_Shared_FogISR_ExponentialFogParameters3;
  const float4 TranslucentBasePass_Shared_FogISR_SkyAtmosphereAmbientContributionColorScale;
  const float4 TranslucentBasePass_Shared_FogISR_InscatteringLightDirection;
  const float4 TranslucentBasePass_Shared_FogISR_DirectionalInscatteringColor;
  const float2 TranslucentBasePass_Shared_FogISR_SinCosInscatteringColorCubemapRotation;
  const float PrePadding_TranslucentBasePass_Shared_FogISR_2168;
  const float PrePadding_TranslucentBasePass_Shared_FogISR_2172;
  const float3 TranslucentBasePass_Shared_FogISR_FogInscatteringTextureParameters;
  const float TranslucentBasePass_Shared_FogISR_ApplyVolumetricFog;
  const float TranslucentBasePass_Shared_FogISR_VolumetricFogStartDistance;
  const float TranslucentBasePass_Shared_FogISR_VolumetricFogNearFadeInDistanceInv;
  const uint BindlessResource_TranslucentBasePass_Shared_FogISR_FogInscatteringColorCubemap;
  const uint PrePadding_TranslucentBasePass_Shared_FogISR_2204;
  const uint BindlessSampler_TranslucentBasePass_Shared_FogISR_FogInscatteringColorSampler;
  const uint PrePadding_TranslucentBasePass_Shared_FogISR_2212;
  const uint BindlessResource_TranslucentBasePass_Shared_FogISR_IntegratedLightScattering;
  const uint PrePadding_TranslucentBasePass_Shared_FogISR_2220;
  const uint BindlessSampler_TranslucentBasePass_Shared_FogISR_IntegratedLightScatteringSampler;
  const float PrePadding_TranslucentBasePass_Shared_2228;
  const float PrePadding_TranslucentBasePass_Shared_2232;
  const float PrePadding_TranslucentBasePass_Shared_2236;
  const uint TranslucentBasePass_Shared_UseBasePassSkylight;
  const float PrePadding_TranslucentBasePass_SceneTextures_2244;
  const float PrePadding_TranslucentBasePass_SceneTextures_2248;
  const float PrePadding_TranslucentBasePass_SceneTextures_2252;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_SceneColorTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2260;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_SceneDepthTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2268;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_GBufferATexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2276;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_GBufferBTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2284;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_GBufferCTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2292;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_GBufferDTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2300;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_GBufferETexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2308;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_GBufferFTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2316;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_GBufferVelocityTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2324;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_ScreenSpaceAOTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2332;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_CustomDepthTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2340;
  const uint BindlessResource_TranslucentBasePass_SceneTextures_CustomStencilTexture;
  const uint PrePadding_TranslucentBasePass_SceneTextures_2348;
  const uint BindlessSampler_TranslucentBasePass_SceneTextures_PointClampSampler;
  const float PrePadding_TranslucentBasePass_Strata_2356;
  const float PrePadding_TranslucentBasePass_Strata_2360;
  const float PrePadding_TranslucentBasePass_Strata_2364;
  const uint TranslucentBasePass_Strata_MaxBytesPerPixel;
  const uint TranslucentBasePass_Strata_bRoughDiffuse;
  const uint TranslucentBasePass_Strata_PeelLayersAboveDepth;
  const uint TranslucentBasePass_Strata_bRoughnessTracking;
  const int TranslucentBasePass_Strata_FirstSliceStoringStrataSSSData;
  const int PrePadding_TranslucentBasePass_Strata_2388;
  const uint BindlessResource_TranslucentBasePass_Strata_MaterialTextureArray;
  const uint PrePadding_TranslucentBasePass_Strata_2396;
  const uint BindlessResource_TranslucentBasePass_Strata_TopLayerTexture;
  const float PrePadding_TranslucentBasePass_ForwardDirLightCloudShadow_2404;
  const float PrePadding_TranslucentBasePass_ForwardDirLightCloudShadow_2408;
  const float PrePadding_TranslucentBasePass_ForwardDirLightCloudShadow_2412;
  const float4x4 TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapTranslatedWorldToLightClipMatrix;
  const float TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapFarDepthKm;
  const float PrePadding_TranslucentBasePass_ForwardDirLightCloudShadow_2484;
  const uint BindlessResource_TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapTexture;
  const uint PrePadding_TranslucentBasePass_ForwardDirLightCloudShadow_2492;
  const uint BindlessSampler_TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapSampler;
  const uint PrePadding_TranslucentBasePass_ForwardDirLightCloudShadow_2500;
  const float TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapStrength;
  const float PrePadding_TranslucentBasePass_OIT_2508;
  const uint TranslucentBasePass_OIT_bOITEnable;
  const uint TranslucentBasePass_OIT_OITMethod;
  const uint TranslucentBasePass_OIT_MaxSideSamplePerPixel;
  const uint TranslucentBasePass_OIT_MaxSamplePerPixel;
  const uint TranslucentBasePass_OIT_TransmittanceThreshold;
  const uint PrePadding_TranslucentBasePass_OIT_2532;
  const uint BindlessResource_TranslucentBasePass_OIT_OutOITSampleCount;
  const uint PrePadding_TranslucentBasePass_OIT_2540;
  const uint BindlessResource_TranslucentBasePass_OIT_OutOITSampleColor;
  const uint PrePadding_TranslucentBasePass_OIT_2548;
  const uint BindlessResource_TranslucentBasePass_OIT_OutOITSampleTrans;
  const uint PrePadding_TranslucentBasePass_OIT_2556;
  const uint BindlessResource_TranslucentBasePass_OIT_OutOITSampleDepth;
  const float PrePadding_TranslucentBasePass_2564;
  const float PrePadding_TranslucentBasePass_2568;
  const float PrePadding_TranslucentBasePass_2572;
  const float4 TranslucentBasePass_HZBUvFactorAndInvFactor;
  const float4 TranslucentBasePass_PrevScreenPositionScaleBias;
  const float2 TranslucentBasePass_PrevSceneColorBilinearUVMin;
  const float2 TranslucentBasePass_PrevSceneColorBilinearUVMax;
  const float TranslucentBasePass_PrevSceneColorPreExposureInv;
  const int TranslucentBasePass_SSRQuality;
  const uint BindlessResource_TranslucentBasePass_HZBTexture;
  const uint PrePadding_TranslucentBasePass_2636;
  const uint BindlessSampler_TranslucentBasePass_HZBSampler;
  const uint PrePadding_TranslucentBasePass_2644;
  const uint BindlessResource_TranslucentBasePass_PrevSceneColor;
  const uint PrePadding_TranslucentBasePass_2652;
  const uint BindlessSampler_TranslucentBasePass_PrevSceneColorSampler;
  const uint PrePadding_TranslucentBasePass_2660;
  const uint BindlessResource_TranslucentBasePass_VolumetricCloudColor;
  const uint PrePadding_TranslucentBasePass_2668;
  const uint BindlessSampler_TranslucentBasePass_VolumetricCloudColorSampler;
  const uint PrePadding_TranslucentBasePass_2676;
  const uint BindlessResource_TranslucentBasePass_VolumetricCloudDepth;
  const uint PrePadding_TranslucentBasePass_2684;
  const uint BindlessSampler_TranslucentBasePass_VolumetricCloudDepthSampler;
  const uint PrePadding_TranslucentBasePass_2692;
  const float TranslucentBasePass_ApplyVolumetricCloudOnTransparent;
  const float TranslucentBasePass_SoftBlendingDistanceKm;
  const uint BindlessResource_TranslucentBasePass_TranslucencyLightingVolumeAmbientInner;
  const uint PrePadding_TranslucentBasePass_2708;
  const uint BindlessResource_TranslucentBasePass_TranslucencyLightingVolumeAmbientOuter;
  const uint PrePadding_TranslucentBasePass_2716;
  const uint BindlessResource_TranslucentBasePass_TranslucencyLightingVolumeDirectionalInner;
  const uint PrePadding_TranslucentBasePass_2724;
  const uint BindlessResource_TranslucentBasePass_TranslucencyLightingVolumeDirectionalOuter;
  const float PrePadding_TranslucentBasePass_2732;
  const float TranslucentBasePass_ReprojectionRadiusScale;
  const float TranslucentBasePass_ClipmapWorldExtent;
  const float TranslucentBasePass_ClipmapDistributionBase;
  const float TranslucentBasePass_InvClipmapFadeSize;
  const int2 TranslucentBasePass_ProbeAtlasResolutionInProbes;
  const uint TranslucentBasePass_RadianceProbeClipmapResolution;
  const uint TranslucentBasePass_NumRadianceProbeClipmaps;
  const uint TranslucentBasePass_RadianceProbeResolution;
  const uint TranslucentBasePass_FinalProbeResolution;
  const uint TranslucentBasePass_FinalRadianceAtlasMaxMip;
  const uint TranslucentBasePass_CalculateIrradiance;
  const uint TranslucentBasePass_IrradianceProbeResolution;
  const uint TranslucentBasePass_OcclusionProbeResolution;
  const uint TranslucentBasePass_NumProbesToTraceBudget;
  const uint TranslucentBasePass_RadianceCacheStats;
  const uint BindlessResource_TranslucentBasePass_RadianceProbeIndirectionTexture;
  const uint PrePadding_TranslucentBasePass_2804;
  const uint BindlessResource_TranslucentBasePass_RadianceCacheFinalRadianceAtlas;
  const uint PrePadding_TranslucentBasePass_2812;
  const uint BindlessResource_TranslucentBasePass_RadianceCacheFinalIrradianceAtlas;
  const uint PrePadding_TranslucentBasePass_2820;
  const uint BindlessResource_TranslucentBasePass_RadianceCacheProbeOcclusionAtlas;
  const uint PrePadding_TranslucentBasePass_2828;
  const uint BindlessResource_TranslucentBasePass_RadianceCacheDepthAtlas;
  const uint PrePadding_TranslucentBasePass_2836;
  const uint BindlessResource_TranslucentBasePass_ProbeWorldOffset;
  const uint PrePadding_TranslucentBasePass_2844;
  const float4 TranslucentBasePass_RadianceProbeSettings[6];
  const float4 TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[6];
  const float4 TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[6];
  const float2 TranslucentBasePass_InvProbeFinalRadianceAtlasResolution;
  const float2 TranslucentBasePass_InvProbeFinalIrradianceAtlasResolution;
  const float2 TranslucentBasePass_InvProbeDepthAtlasResolution;
  const uint TranslucentBasePass_OverrideCacheOcclusionLighting;
  const uint TranslucentBasePass_ShowBlackRadianceCacheLighting;
  const uint TranslucentBasePass_ProbeAtlasResolutionModuloMask;
  const uint TranslucentBasePass_ProbeAtlasResolutionDivideShift;
  const float PrePadding_TranslucentBasePass_3176;
  const float PrePadding_TranslucentBasePass_3180;
  const uint BindlessResource_TranslucentBasePass_Radiance;
  const uint PrePadding_TranslucentBasePass_3188;
  const uint BindlessResource_TranslucentBasePass_Normal;
  const uint PrePadding_TranslucentBasePass_3196;
  const uint BindlessResource_TranslucentBasePass_SceneDepth;
  const uint PrePadding_TranslucentBasePass_3204;
  const uint TranslucentBasePass_Enabled;
  const float TranslucentBasePass_RelativeDepthThreshold;
  const float TranslucentBasePass_SpecularScale;
  const float TranslucentBasePass_Contrast;
  const float PrePadding_TranslucentBasePass_3224;
  const float PrePadding_TranslucentBasePass_3228;
  const uint BindlessResource_TranslucentBasePass_TranslucencyGIVolume0;
  const uint PrePadding_TranslucentBasePass_3236;
  const uint BindlessResource_TranslucentBasePass_TranslucencyGIVolume1;
  const uint PrePadding_TranslucentBasePass_3244;
  const uint BindlessResource_TranslucentBasePass_TranslucencyGIVolumeHistory0;
  const uint PrePadding_TranslucentBasePass_3252;
  const uint BindlessResource_TranslucentBasePass_TranslucencyGIVolumeHistory1;
  const uint PrePadding_TranslucentBasePass_3260;
  const uint BindlessSampler_TranslucentBasePass_TranslucencyGIVolumeSampler;
  const uint PrePadding_TranslucentBasePass_3268;
  const uint PrePadding_TranslucentBasePass_3272;
  const uint PrePadding_TranslucentBasePass_3276;
  const float3 TranslucentBasePass_TranslucencyGIGridZParams;
  const uint TranslucentBasePass_TranslucencyGIGridPixelSizeShift;
  const int3 TranslucentBasePass_TranslucencyGIGridSize;
  const float PrePadding_TranslucentBasePass_3308;
  const uint BindlessResource_TranslucentBasePass_PreIntegratedGFTexture;
  const uint PrePadding_TranslucentBasePass_3316;
  const uint BindlessSampler_TranslucentBasePass_PreIntegratedGFSampler;
  const uint PrePadding_TranslucentBasePass_3324;
  const uint BindlessResource_TranslucentBasePass_EyeAdaptationBuffer;
  const uint PrePadding_TranslucentBasePass_3332;
  const uint BindlessResource_TranslucentBasePass_SceneColorCopyTexture;
  const uint PrePadding_TranslucentBasePass_3340;
  const uint BindlessSampler_TranslucentBasePass_SceneColorCopySampler;
  const float PrePadding_TranslucentBasePass_BlueNoise_3348;
  const float PrePadding_TranslucentBasePass_BlueNoise_3352;
  const float PrePadding_TranslucentBasePass_BlueNoise_3356;
  const int3 TranslucentBasePass_BlueNoise_Dimensions;
  const int PrePadding_TranslucentBasePass_BlueNoise_3372;
  const int3 TranslucentBasePass_BlueNoise_ModuloMasks;
  const int PrePadding_TranslucentBasePass_BlueNoise_3388;
  const uint BindlessResource_TranslucentBasePass_BlueNoise_ScalarTexture;
  const uint PrePadding_TranslucentBasePass_BlueNoise_3396;
  const uint BindlessResource_TranslucentBasePass_BlueNoise_Vec2Texture;
}
#line 3 "/Engine/Generated/UniformBuffers/LightmapResourceCluster.ush"
cbuffer LightmapResourceCluster {
  const uint BindlessResource_LightmapResourceCluster_LightMapTexture;
  const uint PrePadding_LightmapResourceCluster_4;
  const uint BindlessResource_LightmapResourceCluster_SkyOcclusionTexture;
  const uint PrePadding_LightmapResourceCluster_12;
  const uint BindlessResource_LightmapResourceCluster_AOMaterialMaskTexture;
  const uint PrePadding_LightmapResourceCluster_20;
  const uint BindlessResource_LightmapResourceCluster_StaticShadowTexture;
  const uint PrePadding_LightmapResourceCluster_28;
  const uint BindlessResource_LightmapResourceCluster_VTLightMapTexture;
  const uint PrePadding_LightmapResourceCluster_36;
  const uint BindlessResource_LightmapResourceCluster_VTLightMapTexture_1;
  const uint PrePadding_LightmapResourceCluster_44;
  const uint BindlessResource_LightmapResourceCluster_VTSkyOcclusionTexture;
  const uint PrePadding_LightmapResourceCluster_52;
  const uint BindlessResource_LightmapResourceCluster_VTAOMaterialMaskTexture;
  const uint PrePadding_LightmapResourceCluster_60;
  const uint BindlessResource_LightmapResourceCluster_VTStaticShadowTexture;
  const uint PrePadding_LightmapResourceCluster_68;
  const uint BindlessSampler_LightmapResourceCluster_LightMapSampler;
  const uint PrePadding_LightmapResourceCluster_76;
  const uint BindlessSampler_LightmapResourceCluster_LightMapSampler_1;
  const uint PrePadding_LightmapResourceCluster_84;
  const uint BindlessSampler_LightmapResourceCluster_SkyOcclusionSampler;
  const uint PrePadding_LightmapResourceCluster_92;
  const uint BindlessSampler_LightmapResourceCluster_AOMaterialMaskSampler;
  const uint PrePadding_LightmapResourceCluster_100;
  const uint BindlessSampler_LightmapResourceCluster_StaticShadowTextureSampler;
  const uint PrePadding_LightmapResourceCluster_108;
  const uint BindlessResource_LightmapResourceCluster_LightmapVirtualTexturePageTable0;
  const uint PrePadding_LightmapResourceCluster_116;
  const uint BindlessResource_LightmapResourceCluster_LightmapVirtualTexturePageTable1;
}
#line 3 "/Engine/Generated/UniformBuffers/PrecomputedLightingBuffer.ush"
cbuffer PrecomputedLightingBuffer {
  const float4 PrecomputedLightingBuffer_StaticShadowMapMasks;
  const float4 PrecomputedLightingBuffer_InvUniformPenumbraSizes;
  const float4 PrecomputedLightingBuffer_LightMapCoordinateScaleBias;
  const float4 PrecomputedLightingBuffer_ShadowMapCoordinateScaleBias;
  const min16float4 PrecomputedLightingBuffer_LightMapScale[2];
  const min16float4 PrecomputedLightingBuffer_LightMapAdd[2];
  const uint4 PrecomputedLightingBuffer_LightmapVTPackedPageTableUniform[2];
  const uint4 PrecomputedLightingBuffer_LightmapVTPackedUniform[5];
}
#line 3 "/Engine/Generated/UniformBuffers/IndirectLightingCache.ush"
cbuffer IndirectLightingCache {
  const float3 IndirectLightingCache_IndirectLightingCachePrimitiveAdd;
  const float PrePadding_IndirectLightingCache_12;
  const float3 IndirectLightingCache_IndirectLightingCachePrimitiveScale;
  const float PrePadding_IndirectLightingCache_28;
  const float3 IndirectLightingCache_IndirectLightingCacheMinUV;
  const float PrePadding_IndirectLightingCache_44;
  const float3 IndirectLightingCache_IndirectLightingCacheMaxUV;
  const float PrePadding_IndirectLightingCache_60;
  const float4 IndirectLightingCache_PointSkyBentNormal;
  const min16float IndirectLightingCache_DirectionalLightShadowing;
  const min16float PrePadding_IndirectLightingCache_84;
  const min16float PrePadding_IndirectLightingCache_88;
  const min16float PrePadding_IndirectLightingCache_92;
  const float4 IndirectLightingCache_IndirectLightingSHCoefficients0[3];
  const float4 IndirectLightingCache_IndirectLightingSHCoefficients1[3];
  const float4 IndirectLightingCache_IndirectLightingSHCoefficients2;
  const min16float4 IndirectLightingCache_IndirectLightingSHSingleCoefficient;
  const uint BindlessResource_IndirectLightingCache_IndirectLightingCacheTexture0;
  const uint PrePadding_IndirectLightingCache_228;
  const uint BindlessResource_IndirectLightingCache_IndirectLightingCacheTexture1;
  const uint PrePadding_IndirectLightingCache_236;
  const uint BindlessResource_IndirectLightingCache_IndirectLightingCacheTexture2;
  const uint PrePadding_IndirectLightingCache_244;
  const uint BindlessSampler_IndirectLightingCache_IndirectLightingCacheTextureSampler0;
  const uint PrePadding_IndirectLightingCache_252;
  const uint BindlessSampler_IndirectLightingCache_IndirectLightingCacheTextureSampler1;
  const uint PrePadding_IndirectLightingCache_260;
  const uint BindlessSampler_IndirectLightingCache_IndirectLightingCacheTextureSampler2;
}
#line 3 "/Engine/Generated/UniformBuffers/MobileDirectionalLight.ush"
cbuffer MobileDirectionalLight {
  const min16float4 MobileDirectionalLight_DirectionalLightColor;
  const min16float4 MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition;
  const min16float4 MobileDirectionalLight_DirectionalLightShadowSize;
  const min16float4 MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale;
  const min16float4 MobileDirectionalLight_DirectionalLightShadowDistances;
  const float4x4 MobileDirectionalLight_DirectionalLightScreenToShadow[4];
  const uint MobileDirectionalLight_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_MobileDirectionalLight_340;
  const uint BindlessResource_MobileDirectionalLight_DirectionalLightShadowTexture;
  const uint PrePadding_MobileDirectionalLight_348;
  const uint BindlessSampler_MobileDirectionalLight_DirectionalLightShadowSampler;
}
#line 17 "/Engine/Generated/UniformBuffers/MobileDirectionalLight.ush"
Texture2D<vector<float, 4> > MobileDirectionalLight_DirectionalLightShadowTexture;
#line 18 "/Engine/Generated/UniformBuffers/MobileDirectionalLight.ush"
SamplerState MobileDirectionalLight_DirectionalLightShadowSampler;
#line 3 "/Engine/Generated/UniformBuffers/PlanarReflectionStruct.ush"
cbuffer PlanarReflectionStruct {
  const float4 PlanarReflectionStruct_ReflectionPlane;
  const float4 PlanarReflectionStruct_PlanarReflectionOrigin;
  const float4 PlanarReflectionStruct_PlanarReflectionXAxis;
  const float4 PlanarReflectionStruct_PlanarReflectionYAxis;
  const float3x4 PlanarReflectionStruct_InverseTransposeMirrorMatrix;
  const float3 PlanarReflectionStruct_PlanarReflectionParameters;
  const float PrePadding_PlanarReflectionStruct_124;
  const float2 PlanarReflectionStruct_PlanarReflectionParameters2;
  const float PrePadding_PlanarReflectionStruct_136;
  const float PrePadding_PlanarReflectionStruct_140;
  const float4x4 PlanarReflectionStruct_ProjectionWithExtraFOV[2];
  const float4 PlanarReflectionStruct_PlanarReflectionScreenScaleBias[2];
  const float2 PlanarReflectionStruct_PlanarReflectionScreenBound;
  const uint PlanarReflectionStruct_bIsStereo;
  const uint PrePadding_PlanarReflectionStruct_316;
  const uint BindlessResource_PlanarReflectionStruct_PlanarReflectionTexture;
  const uint PrePadding_PlanarReflectionStruct_324;
  const uint BindlessSampler_PlanarReflectionStruct_PlanarReflectionSampler;
}
#line 3 "/Engine/Generated/UniformBuffers/ForwardLightData.ush"
cbuffer ForwardLightData {
  const uint ForwardLightData_NumLocalLights;
  const uint ForwardLightData_NumReflectionCaptures;
  const uint ForwardLightData_HasDirectionalLight;
  const uint ForwardLightData_NumGridCells;
  const int3 ForwardLightData_CulledGridSize;
  const uint ForwardLightData_MaxCulledLightsPerCell;
  const uint ForwardLightData_LightGridPixelSizeShift;
  const uint PrePadding_ForwardLightData_36;
  const uint PrePadding_ForwardLightData_40;
  const uint PrePadding_ForwardLightData_44;
  const float3 ForwardLightData_LightGridZParams;
  const float PrePadding_ForwardLightData_60;
  const float3 ForwardLightData_DirectionalLightDirection;
  const float ForwardLightData_DirectionalLightSourceRadius;
  const float3 ForwardLightData_DirectionalLightColor;
  const float ForwardLightData_DirectionalLightVolumetricScatteringIntensity;
  const uint ForwardLightData_DirectionalLightShadowMapChannelMask;
  const uint PrePadding_ForwardLightData_100;
  const float2 ForwardLightData_DirectionalLightDistanceFadeMAD;
  const uint ForwardLightData_NumDirectionalLightCascades;
  const int ForwardLightData_DirectionalLightVSM;
  const int PrePadding_ForwardLightData_120;
  const int PrePadding_ForwardLightData_124;
  const float4 ForwardLightData_CascadeEndDepths;
  const float4x4 ForwardLightData_DirectionalLightTranslatedWorldToShadowMatrix[4];
  const float4 ForwardLightData_DirectionalLightShadowmapMinMax[4];
  const float4 ForwardLightData_DirectionalLightShadowmapAtlasBufferSize;
  const float ForwardLightData_DirectionalLightDepthBias;
  const uint ForwardLightData_DirectionalLightUseStaticShadowing;
  const uint ForwardLightData_SimpleLightsEndIndex;
  const uint ForwardLightData_ClusteredDeferredSupportedEndIndex;
  const uint ForwardLightData_LumenSupportedStartIndex;
  const uint PrePadding_ForwardLightData_500;
  const uint PrePadding_ForwardLightData_504;
  const uint PrePadding_ForwardLightData_508;
  const float4 ForwardLightData_DirectionalLightStaticShadowBufferSize;
  const float4x4 ForwardLightData_DirectionalLightTranslatedWorldToStaticShadow;
  const uint ForwardLightData_DirectLightingShowFlag;
  const float PrePadding_ForwardLightData_DirectionalLightSMRTSettings_596;
  const float PrePadding_ForwardLightData_DirectionalLightSMRTSettings_600;
  const float PrePadding_ForwardLightData_DirectionalLightSMRTSettings_604;
  const float ForwardLightData_DirectionalLightSMRTSettings_ScreenRayLength;
  const int ForwardLightData_DirectionalLightSMRTSettings_SMRTRayCount;
  const int ForwardLightData_DirectionalLightSMRTSettings_SMRTSamplesPerRay;
  const float ForwardLightData_DirectionalLightSMRTSettings_SMRTRayLengthScale;
  const float ForwardLightData_DirectionalLightSMRTSettings_SMRTCotMaxRayAngleFromLight;
  const float ForwardLightData_DirectionalLightSMRTSettings_SMRTTexelDitherScale;
  const float ForwardLightData_DirectionalLightSMRTSettings_SMRTExtrapolateSlope;
  const float ForwardLightData_DirectionalLightSMRTSettings_SMRTMaxSlopeBias;
  const uint ForwardLightData_DirectionalLightSMRTSettings_SMRTAdaptiveRayCount;
  const uint PrePadding_ForwardLightData_644;
  const uint PrePadding_ForwardLightData_648;
  const uint PrePadding_ForwardLightData_652;
  const uint BindlessResource_ForwardLightData_DirectionalLightShadowmapAtlas;
  const uint PrePadding_ForwardLightData_660;
  const uint BindlessSampler_ForwardLightData_ShadowmapSampler;
  const uint PrePadding_ForwardLightData_668;
  const uint BindlessResource_ForwardLightData_DirectionalLightStaticShadowmap;
  const uint PrePadding_ForwardLightData_676;
  const uint BindlessSampler_ForwardLightData_StaticShadowmapSampler;
  const uint PrePadding_ForwardLightData_684;
  const uint BindlessResource_ForwardLightData_ForwardLocalLightBuffer;
  const uint PrePadding_ForwardLightData_692;
  const uint BindlessResource_ForwardLightData_NumCulledLightsGrid;
  const uint PrePadding_ForwardLightData_700;
  const uint BindlessResource_ForwardLightData_CulledLightDataGrid;
}
#line 3 "/Engine/Generated/UniformBuffers/ReflectionStruct.ush"
cbuffer ReflectionStruct {
  const float4 ReflectionStruct_SkyLightParameters;
  const uint BindlessResource_ReflectionStruct_SkyLightCubemap;
  const uint PrePadding_ReflectionStruct_20;
  const uint BindlessSampler_ReflectionStruct_SkyLightCubemapSampler;
  const uint PrePadding_ReflectionStruct_28;
  const uint BindlessResource_ReflectionStruct_SkyLightBlendDestinationCubemap;
  const uint PrePadding_ReflectionStruct_36;
  const uint BindlessSampler_ReflectionStruct_SkyLightBlendDestinationCubemapSampler;
  const uint PrePadding_ReflectionStruct_44;
  const uint BindlessResource_ReflectionStruct_ReflectionCubemap;
  const uint PrePadding_ReflectionStruct_52;
  const uint BindlessSampler_ReflectionStruct_ReflectionCubemapSampler;
  const uint PrePadding_ReflectionStruct_60;
  const uint BindlessResource_ReflectionStruct_PreIntegratedGF;
  const uint PrePadding_ReflectionStruct_68;
  const uint BindlessSampler_ReflectionStruct_PreIntegratedGFSampler;
}
#line 3 "/Engine/Generated/UniformBuffers/ReflectionCaptureES31.ush"
cbuffer ReflectionCaptureES31 {
  const float4 ReflectionCaptureES31_PositionAndRadius[100];
  const float4 ReflectionCaptureES31_TilePosition[100];
  const float4 ReflectionCaptureES31_CaptureProperties[100];
  const float4 ReflectionCaptureES31_CaptureOffsetAndAverageBrightness[100];
  const float4x4 ReflectionCaptureES31_BoxTransform[100];
  const float4 ReflectionCaptureES31_BoxScales[100];
}
#line 3 "/Engine/Generated/UniformBuffers/ReflectionCaptureSM5.ush"
cbuffer ReflectionCaptureSM5 {
  const float4 ReflectionCaptureSM5_PositionAndRadius[341];
  const float4 ReflectionCaptureSM5_TilePosition[341];
  const float4 ReflectionCaptureSM5_CaptureProperties[341];
  const float4 ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[341];
  const float4x4 ReflectionCaptureSM5_BoxTransform[341];
  const float4 ReflectionCaptureSM5_BoxScales[341];
}
#line 3 "/Engine/Generated/UniformBuffers/VirtualShadowMap.ush"
cbuffer VirtualShadowMap {
  const uint VirtualShadowMap_NumFullShadowMaps;
  const uint VirtualShadowMap_NumSinglePageShadowMaps;
  const uint VirtualShadowMap_MaxPhysicalPages;
  const uint VirtualShadowMap_NumShadowMapSlots;
  const uint VirtualShadowMap_StaticCachedArrayIndex;
  const uint VirtualShadowMap_PhysicalPageRowMask;
  const uint VirtualShadowMap_PhysicalPageRowShift;
  const uint VirtualShadowMap_PackedShadowMaskMaxLightCount;
  const float4 VirtualShadowMap_RecPhysicalPoolSize;
  const int2 VirtualShadowMap_PhysicalPoolSize;
  const int2 VirtualShadowMap_PhysicalPoolSizePages;
  const uint VirtualShadowMap_bExcludeNonNaniteFromCoarsePages;
  const float VirtualShadowMap_CoarsePagePixelThresholdDynamic;
  const float VirtualShadowMap_CoarsePagePixelThresholdStatic;
  const float VirtualShadowMap_CoarsePagePixelThresholdDynamicNanite;
  const uint BindlessResource_VirtualShadowMap_ProjectionData;
  const uint PrePadding_VirtualShadowMap_84;
  const uint BindlessResource_VirtualShadowMap_PageTable;
  const uint PrePadding_VirtualShadowMap_92;
  const uint BindlessResource_VirtualShadowMap_PageFlags;
  const uint PrePadding_VirtualShadowMap_100;
  const uint BindlessResource_VirtualShadowMap_PageRectBounds;
  const uint PrePadding_VirtualShadowMap_108;
  const uint BindlessResource_VirtualShadowMap_PhysicalPagePool;
}
#line 3 "/Engine/Generated/UniformBuffers/DeferredLightUniforms.ush"
cbuffer DeferredLightUniforms {
  const float4 DeferredLightUniforms_ShadowMapChannelMask;
  const float2 DeferredLightUniforms_DistanceFadeMAD;
  const float DeferredLightUniforms_ContactShadowLength;
  const float DeferredLightUniforms_ContactShadowCastingIntensity;
  const float DeferredLightUniforms_ContactShadowNonCastingIntensity;
  const float DeferredLightUniforms_VolumetricScatteringIntensity;
  const uint DeferredLightUniforms_ShadowedBits;
  const uint DeferredLightUniforms_LightingChannelMask;
  const float3 DeferredLightUniforms_TranslatedWorldPosition;
  const float DeferredLightUniforms_InvRadius;
  const float3 DeferredLightUniforms_Color;
  const float DeferredLightUniforms_FalloffExponent;
  const float3 DeferredLightUniforms_Direction;
  const float DeferredLightUniforms_SpecularScale;
  const float3 DeferredLightUniforms_Tangent;
  const float DeferredLightUniforms_SourceRadius;
  const float2 DeferredLightUniforms_SpotAngles;
  const float DeferredLightUniforms_SoftSourceRadius;
  const float DeferredLightUniforms_SourceLength;
  const float DeferredLightUniforms_RectLightBarnCosAngle;
  const float DeferredLightUniforms_RectLightBarnLength;
  const float2 DeferredLightUniforms_RectLightAtlasUVOffset;
  const float2 DeferredLightUniforms_RectLightAtlasUVScale;
  const float DeferredLightUniforms_RectLightAtlasMaxLevel;
  const float DeferredLightUniforms_IESAtlasIndex;
}
#line 3 "/Engine/Generated/UniformBuffers/LocalVFLooseParameters.ush"
cbuffer LocalVFLooseParameters {
  const uint LocalVFLooseParameters_FrameNumber;
  const uint PrePadding_LocalVFLooseParameters_4;
  const uint BindlessResource_LocalVFLooseParameters_GPUSkinPassThroughPositionBuffer;
  const uint PrePadding_LocalVFLooseParameters_12;
  const uint BindlessResource_LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer;
}
#line 3 "/Engine/Generated/UniformBuffers/LocalVF.ush"
cbuffer LocalVF {
  const int4 LocalVF_VertexFetch_Parameters;
  const int LocalVF_PreSkinBaseVertexIndex;
  const uint LocalVF_LODLightmapDataIndex;
  const uint BindlessResource_LocalVF_VertexFetch_TexCoordBuffer;
  const uint PrePadding_LocalVF_28;
  const uint BindlessResource_LocalVF_VertexFetch_PositionBuffer;
  const uint PrePadding_LocalVF_36;
  const uint BindlessResource_LocalVF_VertexFetch_PreSkinPositionBuffer;
  const uint PrePadding_LocalVF_44;
  const uint BindlessResource_LocalVF_VertexFetch_PackedTangentsBuffer;
  const uint PrePadding_LocalVF_52;
  const uint BindlessResource_LocalVF_VertexFetch_ColorComponentsBuffer;
}
#line 3 "/Engine/Generated/UniformBuffers/Material.ush"
cbuffer Material {
  const float4 Material_PreshaderBuffer[36];
  const uint BindlessResource_Material_Texture2D_0;
  const uint PrePadding_Material_580;
  const uint BindlessSampler_Material_Texture2D_0Sampler;
  const uint PrePadding_Material_588;
  const uint BindlessResource_Material_Texture2D_1;
  const uint PrePadding_Material_596;
  const uint BindlessSampler_Material_Texture2D_1Sampler;
  const uint PrePadding_Material_604;
  const uint BindlessResource_Material_Texture2D_2;
  const uint PrePadding_Material_612;
  const uint BindlessSampler_Material_Texture2D_2Sampler;
  const uint PrePadding_Material_620;
  const uint BindlessResource_Material_Texture2D_3;
  const uint PrePadding_Material_628;
  const uint BindlessSampler_Material_Texture2D_3Sampler;
  const uint PrePadding_Material_636;
  const uint BindlessResource_Material_Texture2D_4;
  const uint PrePadding_Material_644;
  const uint BindlessSampler_Material_Texture2D_4Sampler;
  const uint PrePadding_Material_652;
  const uint BindlessResource_Material_Texture2D_5;
  const uint PrePadding_Material_660;
  const uint BindlessSampler_Material_Texture2D_5Sampler;
  const uint PrePadding_Material_668;
  const uint BindlessResource_Material_Texture2D_6;
  const uint PrePadding_Material_676;
  const uint BindlessSampler_Material_Texture2D_6Sampler;
  const uint PrePadding_Material_684;
  const uint BindlessResource_Material_Texture2D_7;
  const uint PrePadding_Material_692;
  const uint BindlessSampler_Material_Texture2D_7Sampler;
  const uint PrePadding_Material_700;
  const uint BindlessResource_Material_Texture2D_8;
  const uint PrePadding_Material_708;
  const uint BindlessSampler_Material_Texture2D_8Sampler;
  const uint PrePadding_Material_716;
  const uint BindlessResource_Material_Texture2D_9;
  const uint PrePadding_Material_724;
  const uint BindlessSampler_Material_Texture2D_9Sampler;
  const uint PrePadding_Material_732;
  const uint BindlessResource_Material_Texture2D_10;
  const uint PrePadding_Material_740;
  const uint BindlessSampler_Material_Texture2D_10Sampler;
  const uint PrePadding_Material_748;
  const uint BindlessResource_Material_Texture2D_11;
  const uint PrePadding_Material_756;
  const uint BindlessSampler_Material_Texture2D_11Sampler;
  const uint PrePadding_Material_764;
  const uint BindlessSampler_Material_Wrap_WorldGroupSettings;
  const uint PrePadding_Material_772;
  const uint BindlessSampler_Material_Clamp_WorldGroupSettings;
}
#line 58 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_0;
#line 59 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_0Sampler;
#line 60 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_1;
#line 61 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_1Sampler;
#line 62 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_2;
#line 63 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_2Sampler;
#line 64 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_3;
#line 65 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_3Sampler;
#line 66 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_4;
#line 67 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_4Sampler;
#line 68 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_5;
#line 69 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_5Sampler;
#line 70 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_6;
#line 71 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_6Sampler;
#line 72 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_7;
#line 73 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_7Sampler;
#line 74 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_8;
#line 75 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_8Sampler;
#line 76 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_9;
#line 77 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_9Sampler;
#line 78 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_10;
#line 79 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_10Sampler;
#line 80 "/Engine/Generated/UniformBuffers/Material.ush"
Texture2D<vector<float, 4> > Material_Texture2D_11;
#line 81 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Texture2D_11Sampler;
#line 82 "/Engine/Generated/UniformBuffers/Material.ush"
SamplerState Material_Wrap_WorldGroupSettings;
#line 5 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCScalar {
  float Tile;
  float Offset;
};
#line 11 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCVector2 {
  float2 Tile;
  float2 Offset;
};
#line 17 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCVector3 {
  float3 Tile;
  float3 Offset;
};
#line 23 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCVector4 {
  float4 Tile;
  float4 Offset;
};
#line 29 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCScalarDeriv {
  FLWCScalar Value;
  float Ddx;
  float Ddy;
};
#line 36 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCVector2Deriv {
  FLWCVector2 Value;
  float2 Ddx;
  float2 Ddy;
};
#line 43 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCVector3Deriv {
  FLWCVector3 Value;
  float3 Ddx;
  float3 Ddy;
};
#line 50 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCVector4Deriv {
  FLWCVector4 Value;
  float4 Ddx;
  float4 Ddy;
};
#line 58 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCMatrix {
  float4x4 M;
  float3 Tile;
};
#line 65 "/Engine/Private/LargeWorldCoordinates.ush"
struct FLWCInverseMatrix {
  float4x4 M;
  float3 Tile;
  int Dummy;
};
#line 82 "/Engine/Private/LargeWorldCoordinates.ush"
float4x4 Make4x3Matrix(float4x4 M) {
  float4x4 Result;
  Result[0] = float4(M[0].xyz, 0.F);
  Result[1] = float4(M[1].xyz, 0.F);
  Result[2] = float4(M[2].xyz, 0.F);
  Result[3] = float4(M[3].xyz, 1.F);
  return Result;
}


#line 119 "/Engine/Private/LargeWorldCoordinates.ush"
FLWCVector3 MakeLWCVector3(float3 Tile, float3 Offset) {
  FLWCVector3 Result;
  (Result).Tile = (Tile);
  Result.Offset = Offset;
  return Result;
}


#line 161 "/Engine/Private/LargeWorldCoordinates.ush"
FLWCMatrix MakeLWCMatrix(float3 Tile, float4x4 InMatrix) {
  FLWCMatrix Result;
  (Result).Tile = (Tile);
  Result.M = InMatrix;
  return Result;
}


#line 169 "/Engine/Private/LargeWorldCoordinates.ush"
FLWCMatrix MakeLWCMatrix4x3(float3 Tile, float4x4 InMatrix) {
  FLWCMatrix Result;
  (Result).Tile = (Tile);
  Result.M = Make4x3Matrix(InMatrix);
  return Result;
}


#line 177 "/Engine/Private/LargeWorldCoordinates.ush"
FLWCInverseMatrix MakeLWCInverseMatrix(float3 Tile, float4x4 InMatrix) {
  FLWCInverseMatrix Result;
  (Result).Tile = (-Tile);
  Result.M = InMatrix;
  Result.Dummy = 0;
  return Result;
}


#line 186 "/Engine/Private/LargeWorldCoordinates.ush"
FLWCInverseMatrix MakeLWCInverseMatrix4x3(float3 Tile, float4x4 InMatrix) {
  FLWCInverseMatrix Result;
  (Result).Tile = (-Tile);
  Result.M = Make4x3Matrix(InMatrix);
  Result.Dummy = 0;
  return Result;
}


#line 57 "/Engine/Private/LWCOperations.ush"
FLWCVector3 LWCSubtract(float3 Lhs, FLWCVector3 Rhs) {
  return MakeLWCVector3(-((Rhs).Tile), Lhs - Rhs.Offset);
}


#line 1 "/Engine/Generated/GeneratedInstancedStereo.ush"
struct ViewState {
  float4x4 TranslatedWorldToClip;
  float4x4 TranslatedWorldToSubpixelClip;
  float4x4 RelativeWorldToClip;
  float4x4 ClipToRelativeWorld;
  float4x4 TranslatedWorldToView;
  float4x4 ViewToTranslatedWorld;
  float4x4 TranslatedWorldToCameraView;
  float4x4 CameraViewToTranslatedWorld;
  float4x4 ViewToClip;
  float4x4 ViewToClipNoAA;
  float4x4 ClipToView;
  float4x4 ClipToTranslatedWorld;
  float4x4 SVPositionToTranslatedWorld;
  float4x4 ScreenToRelativeWorld;
  float4x4 ScreenToTranslatedWorld;
  float4x4 MobileMultiviewShadowTransform;
  float3 ViewTilePosition;
  float3 MatrixTilePosition;
  min16float3 ViewForward;
  min16float3 ViewUp;
  min16float3 ViewRight;
  min16float3 HMDViewNoRollUp;
  min16float3 HMDViewNoRollRight;
  float4 InvDeviceZToWorldZTransform;
  min16float4 ScreenPositionScaleBias;
  float3 RelativeWorldCameraOrigin;
  float3 TranslatedWorldCameraOrigin;
  float3 RelativeWorldViewOrigin;
  float3 RelativePreViewTranslation;
  float4x4 PrevViewToClip;
  float4x4 PrevClipToView;
  float4x4 PrevTranslatedWorldToClip;
  float4x4 PrevTranslatedWorldToView;
  float4x4 PrevViewToTranslatedWorld;
  float4x4 PrevTranslatedWorldToCameraView;
  float4x4 PrevCameraViewToTranslatedWorld;
  float3 PrevTranslatedWorldCameraOrigin;
  float3 PrevRelativeWorldCameraOrigin;
  float3 PrevRelativeWorldViewOrigin;
  float3 RelativePrevPreViewTranslation;
  float4x4 PrevClipToRelativeWorld;
  float4x4 PrevScreenToTranslatedWorld;
  float4x4 ClipToPrevClip;
  float4x4 ClipToPrevClipWithAA;
  float4 TemporalAAJitter;
  float4 GlobalClippingPlane;
  float2 FieldOfViewWideAngles;
  float2 PrevFieldOfViewWideAngles;
  min16float4 ViewRectMin;
  float4 ViewSizeAndInvSize;
  uint4 ViewRectMinAndSize;
  float4 LightProbeSizeRatioAndInvSizeRatio;
  float4 BufferSizeAndInvSize;
  float4 BufferBilinearUVMinMax;
  float4 ScreenToViewSpace;
  float2 BufferToSceneTextureScale;
  float2 ResolutionFractionAndInv;
  int NumSceneColorMSAASamples;
  float PreExposure;
  float OneOverPreExposure;
  min16float4 DiffuseOverrideParameter;
  min16float4 SpecularOverrideParameter;
  min16float4 NormalOverrideParameter;
  min16float2 RoughnessOverrideParameter;
  float PrevFrameGameTime;
  float PrevFrameRealTime;
  min16float OutOfBoundsMask;
  float3 WorldCameraMovementSinceLastFrame;
  float CullingSign;
  min16float NearPlane;
  float GameTime;
  float RealTime;
  float DeltaTime;
  float MaterialTextureMipBias;
  float MaterialTextureDerivativeMultiply;
  uint Random;
  uint FrameNumber;
  uint StateFrameIndexMod8;
  uint StateFrameIndex;
  uint DebugViewModeMask;
  uint WorldIsPaused;
  min16float CameraCut;
  min16float UnlitViewmodeMask;
  min16float4 DirectionalLightColor;
  min16float3 DirectionalLightDirection;
  float4 TranslucencyLightingVolumeMin[2];
  float4 TranslucencyLightingVolumeInvSize[2];
  float4 TemporalAAParams;
  float4 CircleDOFParams;
  float DepthOfFieldSensorWidth;
  float DepthOfFieldFocalDistance;
  float DepthOfFieldScale;
  float DepthOfFieldFocalLength;
  float DepthOfFieldFocalRegion;
  float DepthOfFieldNearTransitionRegion;
  float DepthOfFieldFarTransitionRegion;
  float MotionBlurNormalizedToPixel;
  float GeneralPurposeTweak;
  float GeneralPurposeTweak2;
  min16float DemosaicVposOffset;
  float DecalDepthBias;
  float3 IndirectLightingColorScale;
  float3 PrecomputedIndirectLightingColorScale;
  float3 PrecomputedIndirectSpecularColorScale;
  float4 AtmosphereLightDirection[2];
  float4 AtmosphereLightIlluminanceOnGroundPostTransmittance[2];
  float4 AtmosphereLightIlluminanceOuterSpace[2];
  float4 AtmosphereLightDiscLuminance[2];
  float4 AtmosphereLightDiscCosHalfApexAngle_PPTrans[2];
  float4 SkyViewLutSizeAndInvSize;
  float3 SkyCameraTranslatedWorldOrigin;
  float4 SkyPlanetTranslatedWorldCenterAndViewHeight;
  float4x4 SkyViewLutReferential;
  float4 SkyAtmosphereSkyLuminanceFactor;
  float SkyAtmospherePresentInScene;
  float SkyAtmosphereHeightFogContribution;
  float SkyAtmosphereBottomRadiusKm;
  float SkyAtmosphereTopRadiusKm;
  float4 SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
  float SkyAtmosphereAerialPerspectiveStartDepthKm;
  float SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
  float SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
  float SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm;
  float SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
  float SkyAtmosphereApplyCameraAerialPerspectiveVolume;
  float3 NormalCurvatureToRoughnessScaleBias;
  float RenderingReflectionCaptureMask;
  float RealTimeReflectionCapture;
  float RealTimeReflectionCapturePreExposure;
  float4 AmbientCubemapTint;
  float AmbientCubemapIntensity;
  float SkyLightApplyPrecomputedBentNormalShadowingFlag;
  float SkyLightAffectReflectionFlag;
  float SkyLightAffectGlobalIlluminationFlag;
  float4 SkyLightColor;
  float4 MobileSkyIrradianceEnvironmentMap[8];
  float MobilePreviewMode;
  float HMDEyePaddingOffset;
  min16float ReflectionCubemapMaxMip;
  float ShowDecalsMask;
  uint DistanceFieldAOSpecularOcclusionMode;
  float IndirectCapsuleSelfShadowingIntensity;
  float3 ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
  int StereoPassIndex;
  float4 GlobalVolumeTranslatedCenterAndExtent[6];
  float4 GlobalVolumeTranslatedWorldToUVAddAndMul[6];
  float4 GlobalDistanceFieldMipTranslatedWorldToUVScale[6];
  float4 GlobalDistanceFieldMipTranslatedWorldToUVBias[6];
  float GlobalDistanceFieldMipFactor;
  float GlobalDistanceFieldMipTransition;
  int GlobalDistanceFieldClipmapSizeInPages;
  float3 GlobalDistanceFieldInvPageAtlasSize;
  float3 GlobalDistanceFieldInvCoverageAtlasSize;
  float GlobalVolumeDimension;
  float GlobalVolumeTexelSize;
  float MaxGlobalDFAOConeDistance;
  uint NumGlobalSDFClipmaps;
  float CoveredExpandSurfaceScale;
  float NotCoveredExpandSurfaceScale;
  float NotCoveredMinStepScale;
  float DitheredTransparencyStepThreshold;
  float DitheredTransparencyTraceThreshold;
  int2 CursorPosition;
  float bCheckerboardSubsurfaceProfileRendering;
  float3 VolumetricFogInvGridSize;
  float3 VolumetricFogGridZParams;
  float2 VolumetricFogSVPosToVolumeUV;
  float2 VolumetricFogScreenUVToHistoryVolumeUV;
  float VolumetricFogMaxDistance;
  float3 VolumetricLightmapWorldToUVScale;
  float3 VolumetricLightmapWorldToUVAdd;
  float3 VolumetricLightmapIndirectionTextureSize;
  float VolumetricLightmapBrickSize;
  float3 VolumetricLightmapBrickTexelSize;
  float IndirectLightingCacheShowFlag;
  float EyeToPixelSpreadAngle;
  float4 XRPassthroughCameraUVs[2];
  float GlobalVirtualTextureMipBias;
  uint VirtualTextureFeedbackShift;
  uint VirtualTextureFeedbackMask;
  uint VirtualTextureFeedbackStride;
  uint VirtualTextureFeedbackJitterOffset;
  uint VirtualTextureFeedbackSampleOffset;
  float4 RuntimeVirtualTextureMipLevel;
  float2 RuntimeVirtualTexturePackHeight;
  float4 RuntimeVirtualTextureDebugParams;
  float OverrideLandscapeLOD;
  int FarShadowStaticMeshLODBias;
  float MinRoughness;
  float4 HairRenderInfo;
  uint EnableSkyLight;
  uint HairRenderInfoBits;
  uint HairComponents;
  float bSubsurfacePostprocessEnabled;
  float4 SSProfilesTextureSizeAndInvSize;
  float4 SSProfilesPreIntegratedTextureSizeAndInvSize;
  float3 PhysicsFieldClipmapCenter;
  float PhysicsFieldClipmapDistance;
  int PhysicsFieldClipmapResolution;
  int PhysicsFieldClipmapExponent;
  int PhysicsFieldClipmapCount;
  int PhysicsFieldTargetCount;
  int4 PhysicsFieldTargets[32];
  uint InstanceSceneDataSOAStride;
  uint GPUSceneViewId;
  float ViewResolutionFraction;
  float SubSurfaceColorAsTransmittanceAtDistanceInMeters;
  FLWCInverseMatrix WorldToClip;
  FLWCMatrix ClipToWorld;
  FLWCMatrix ScreenToWorld;
  FLWCMatrix PrevClipToWorld;
  FLWCVector3 WorldCameraOrigin;
  FLWCVector3 WorldViewOrigin;
  FLWCVector3 PrevWorldCameraOrigin;
  FLWCVector3 PrevWorldViewOrigin;
  FLWCVector3 PreViewTranslation;
  FLWCVector3 PrevPreViewTranslation;
};
#line 221 "/Engine/Generated/GeneratedInstancedStereo.ush"
void FinalizeViewState(inout ViewState InOutView);
#line 222 "/Engine/Generated/GeneratedInstancedStereo.ush"
ViewState GetPrimaryView() {
  ViewState Result;
  Result.TranslatedWorldToClip = View_TranslatedWorldToClip;
  Result.TranslatedWorldToSubpixelClip = View_TranslatedWorldToSubpixelClip;
  Result.RelativeWorldToClip = View_RelativeWorldToClip;
  Result.ClipToRelativeWorld = View_ClipToRelativeWorld;
  Result.TranslatedWorldToView = View_TranslatedWorldToView;
  Result.ViewToTranslatedWorld = View_ViewToTranslatedWorld;
  Result.TranslatedWorldToCameraView = View_TranslatedWorldToCameraView;
  Result.CameraViewToTranslatedWorld = View_CameraViewToTranslatedWorld;
  Result.ViewToClip = View_ViewToClip;
  Result.ViewToClipNoAA = View_ViewToClipNoAA;
  Result.ClipToView = View_ClipToView;
  Result.ClipToTranslatedWorld = View_ClipToTranslatedWorld;
  Result.SVPositionToTranslatedWorld = View_SVPositionToTranslatedWorld;
  Result.ScreenToRelativeWorld = View_ScreenToRelativeWorld;
  Result.ScreenToTranslatedWorld = View_ScreenToTranslatedWorld;
  Result.MobileMultiviewShadowTransform = View_MobileMultiviewShadowTransform;
  Result.ViewTilePosition = View_ViewTilePosition;
  Result.MatrixTilePosition = View_MatrixTilePosition;
  Result.ViewForward = View_ViewForward;
  Result.ViewUp = View_ViewUp;
  Result.ViewRight = View_ViewRight;
  Result.HMDViewNoRollUp = View_HMDViewNoRollUp;
  Result.HMDViewNoRollRight = View_HMDViewNoRollRight;
  Result.InvDeviceZToWorldZTransform = View_InvDeviceZToWorldZTransform;
  Result.ScreenPositionScaleBias = View_ScreenPositionScaleBias;
  Result.RelativeWorldCameraOrigin = View_RelativeWorldCameraOrigin;
  Result.TranslatedWorldCameraOrigin = View_TranslatedWorldCameraOrigin;
  Result.RelativeWorldViewOrigin = View_RelativeWorldViewOrigin;
  Result.RelativePreViewTranslation = View_RelativePreViewTranslation;
  Result.PrevViewToClip = View_PrevViewToClip;
  Result.PrevClipToView = View_PrevClipToView;
  Result.PrevTranslatedWorldToClip = View_PrevTranslatedWorldToClip;
  Result.PrevTranslatedWorldToView = View_PrevTranslatedWorldToView;
  Result.PrevViewToTranslatedWorld = View_PrevViewToTranslatedWorld;
  Result.PrevTranslatedWorldToCameraView = View_PrevTranslatedWorldToCameraView;
  Result.PrevCameraViewToTranslatedWorld = View_PrevCameraViewToTranslatedWorld;
  Result.PrevTranslatedWorldCameraOrigin = View_PrevTranslatedWorldCameraOrigin;
  Result.PrevRelativeWorldCameraOrigin = View_PrevRelativeWorldCameraOrigin;
  Result.PrevRelativeWorldViewOrigin = View_PrevRelativeWorldViewOrigin;
  Result.RelativePrevPreViewTranslation = View_RelativePrevPreViewTranslation;
  Result.PrevClipToRelativeWorld = View_PrevClipToRelativeWorld;
  Result.PrevScreenToTranslatedWorld = View_PrevScreenToTranslatedWorld;
  Result.ClipToPrevClip = View_ClipToPrevClip;
  Result.ClipToPrevClipWithAA = View_ClipToPrevClipWithAA;
  Result.TemporalAAJitter = View_TemporalAAJitter;
  Result.GlobalClippingPlane = View_GlobalClippingPlane;
  Result.FieldOfViewWideAngles = View_FieldOfViewWideAngles;
  Result.PrevFieldOfViewWideAngles = View_PrevFieldOfViewWideAngles;
  Result.ViewRectMin = View_ViewRectMin;
  Result.ViewSizeAndInvSize = View_ViewSizeAndInvSize;
  Result.ViewRectMinAndSize = View_ViewRectMinAndSize;
  Result.LightProbeSizeRatioAndInvSizeRatio = View_LightProbeSizeRatioAndInvSizeRatio;
  Result.BufferSizeAndInvSize = View_BufferSizeAndInvSize;
  Result.BufferBilinearUVMinMax = View_BufferBilinearUVMinMax;
  Result.ScreenToViewSpace = View_ScreenToViewSpace;
  Result.BufferToSceneTextureScale = View_BufferToSceneTextureScale;
  Result.ResolutionFractionAndInv = View_ResolutionFractionAndInv;
  Result.NumSceneColorMSAASamples = View_NumSceneColorMSAASamples;
  Result.PreExposure = View_PreExposure;
  Result.OneOverPreExposure = View_OneOverPreExposure;
  Result.DiffuseOverrideParameter = View_DiffuseOverrideParameter;
  Result.SpecularOverrideParameter = View_SpecularOverrideParameter;
  Result.NormalOverrideParameter = View_NormalOverrideParameter;
  Result.RoughnessOverrideParameter = View_RoughnessOverrideParameter;
  Result.PrevFrameGameTime = View_PrevFrameGameTime;
  Result.PrevFrameRealTime = View_PrevFrameRealTime;
  Result.OutOfBoundsMask = View_OutOfBoundsMask;
  Result.WorldCameraMovementSinceLastFrame = View_WorldCameraMovementSinceLastFrame;
  Result.CullingSign = View_CullingSign;
  Result.NearPlane = View_NearPlane;
  Result.GameTime = View_GameTime;
  Result.RealTime = View_RealTime;
  Result.DeltaTime = View_DeltaTime;
  Result.MaterialTextureMipBias = View_MaterialTextureMipBias;
  Result.MaterialTextureDerivativeMultiply = View_MaterialTextureDerivativeMultiply;
  Result.Random = View_Random;
  Result.FrameNumber = View_FrameNumber;
  Result.StateFrameIndexMod8 = View_StateFrameIndexMod8;
  Result.StateFrameIndex = View_StateFrameIndex;
  Result.DebugViewModeMask = View_DebugViewModeMask;
  Result.WorldIsPaused = View_WorldIsPaused;
  Result.CameraCut = View_CameraCut;
  Result.UnlitViewmodeMask = View_UnlitViewmodeMask;
  Result.DirectionalLightColor = View_DirectionalLightColor;
  Result.DirectionalLightDirection = View_DirectionalLightDirection;
  Result.TranslucencyLightingVolumeMin = View_TranslucencyLightingVolumeMin;
  Result.TranslucencyLightingVolumeInvSize = View_TranslucencyLightingVolumeInvSize;
  Result.TemporalAAParams = View_TemporalAAParams;
  Result.CircleDOFParams = View_CircleDOFParams;
  Result.DepthOfFieldSensorWidth = View_DepthOfFieldSensorWidth;
  Result.DepthOfFieldFocalDistance = View_DepthOfFieldFocalDistance;
  Result.DepthOfFieldScale = View_DepthOfFieldScale;
  Result.DepthOfFieldFocalLength = View_DepthOfFieldFocalLength;
  Result.DepthOfFieldFocalRegion = View_DepthOfFieldFocalRegion;
  Result.DepthOfFieldNearTransitionRegion = View_DepthOfFieldNearTransitionRegion;
  Result.DepthOfFieldFarTransitionRegion = View_DepthOfFieldFarTransitionRegion;
  Result.MotionBlurNormalizedToPixel = View_MotionBlurNormalizedToPixel;
  Result.GeneralPurposeTweak = View_GeneralPurposeTweak;
  Result.GeneralPurposeTweak2 = View_GeneralPurposeTweak2;
  Result.DemosaicVposOffset = View_DemosaicVposOffset;
  Result.DecalDepthBias = View_DecalDepthBias;
  Result.IndirectLightingColorScale = View_IndirectLightingColorScale;
  Result.PrecomputedIndirectLightingColorScale = View_PrecomputedIndirectLightingColorScale;
  Result.PrecomputedIndirectSpecularColorScale = View_PrecomputedIndirectSpecularColorScale;
  Result.AtmosphereLightDirection = View_AtmosphereLightDirection;
  Result.AtmosphereLightIlluminanceOnGroundPostTransmittance = View_AtmosphereLightIlluminanceOnGroundPostTransmittance;
  Result.AtmosphereLightIlluminanceOuterSpace = View_AtmosphereLightIlluminanceOuterSpace;
  Result.AtmosphereLightDiscLuminance = View_AtmosphereLightDiscLuminance;
  Result.AtmosphereLightDiscCosHalfApexAngle_PPTrans = View_AtmosphereLightDiscCosHalfApexAngle_PPTrans;
  Result.SkyViewLutSizeAndInvSize = View_SkyViewLutSizeAndInvSize;
  Result.SkyCameraTranslatedWorldOrigin = View_SkyCameraTranslatedWorldOrigin;
  Result.SkyPlanetTranslatedWorldCenterAndViewHeight = View_SkyPlanetTranslatedWorldCenterAndViewHeight;
  Result.SkyViewLutReferential = View_SkyViewLutReferential;
  Result.SkyAtmosphereSkyLuminanceFactor = View_SkyAtmosphereSkyLuminanceFactor;
  Result.SkyAtmospherePresentInScene = View_SkyAtmospherePresentInScene;
  Result.SkyAtmosphereHeightFogContribution = View_SkyAtmosphereHeightFogContribution;
  Result.SkyAtmosphereBottomRadiusKm = View_SkyAtmosphereBottomRadiusKm;
  Result.SkyAtmosphereTopRadiusKm = View_SkyAtmosphereTopRadiusKm;
  Result.SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize = View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
  Result.SkyAtmosphereAerialPerspectiveStartDepthKm = View_SkyAtmosphereAerialPerspectiveStartDepthKm;
  Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
  Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
  Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm;
  Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
  Result.SkyAtmosphereApplyCameraAerialPerspectiveVolume = View_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
  Result.NormalCurvatureToRoughnessScaleBias = View_NormalCurvatureToRoughnessScaleBias;
  Result.RenderingReflectionCaptureMask = View_RenderingReflectionCaptureMask;
  Result.RealTimeReflectionCapture = View_RealTimeReflectionCapture;
  Result.RealTimeReflectionCapturePreExposure = View_RealTimeReflectionCapturePreExposure;
  Result.AmbientCubemapTint = View_AmbientCubemapTint;
  Result.AmbientCubemapIntensity = View_AmbientCubemapIntensity;
  Result.SkyLightApplyPrecomputedBentNormalShadowingFlag = View_SkyLightApplyPrecomputedBentNormalShadowingFlag;
  Result.SkyLightAffectReflectionFlag = View_SkyLightAffectReflectionFlag;
  Result.SkyLightAffectGlobalIlluminationFlag = View_SkyLightAffectGlobalIlluminationFlag;
  Result.SkyLightColor = View_SkyLightColor;
  Result.MobileSkyIrradianceEnvironmentMap = View_MobileSkyIrradianceEnvironmentMap;
  Result.MobilePreviewMode = View_MobilePreviewMode;
  Result.HMDEyePaddingOffset = View_HMDEyePaddingOffset;
  Result.ReflectionCubemapMaxMip = View_ReflectionCubemapMaxMip;
  Result.ShowDecalsMask = View_ShowDecalsMask;
  Result.DistanceFieldAOSpecularOcclusionMode = View_DistanceFieldAOSpecularOcclusionMode;
  Result.IndirectCapsuleSelfShadowingIntensity = View_IndirectCapsuleSelfShadowingIntensity;
  Result.ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight = View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
  Result.StereoPassIndex = View_StereoPassIndex;
  Result.GlobalVolumeTranslatedCenterAndExtent = View_GlobalVolumeTranslatedCenterAndExtent;
  Result.GlobalVolumeTranslatedWorldToUVAddAndMul = View_GlobalVolumeTranslatedWorldToUVAddAndMul;
  Result.GlobalDistanceFieldMipTranslatedWorldToUVScale = View_GlobalDistanceFieldMipTranslatedWorldToUVScale;
  Result.GlobalDistanceFieldMipTranslatedWorldToUVBias = View_GlobalDistanceFieldMipTranslatedWorldToUVBias;
  Result.GlobalDistanceFieldMipFactor = View_GlobalDistanceFieldMipFactor;
  Result.GlobalDistanceFieldMipTransition = View_GlobalDistanceFieldMipTransition;
  Result.GlobalDistanceFieldClipmapSizeInPages = View_GlobalDistanceFieldClipmapSizeInPages;
  Result.GlobalDistanceFieldInvPageAtlasSize = View_GlobalDistanceFieldInvPageAtlasSize;
  Result.GlobalDistanceFieldInvCoverageAtlasSize = View_GlobalDistanceFieldInvCoverageAtlasSize;
  Result.GlobalVolumeDimension = View_GlobalVolumeDimension;
  Result.GlobalVolumeTexelSize = View_GlobalVolumeTexelSize;
  Result.MaxGlobalDFAOConeDistance = View_MaxGlobalDFAOConeDistance;
  Result.NumGlobalSDFClipmaps = View_NumGlobalSDFClipmaps;
  Result.CoveredExpandSurfaceScale = View_CoveredExpandSurfaceScale;
  Result.NotCoveredExpandSurfaceScale = View_NotCoveredExpandSurfaceScale;
  Result.NotCoveredMinStepScale = View_NotCoveredMinStepScale;
  Result.DitheredTransparencyStepThreshold = View_DitheredTransparencyStepThreshold;
  Result.DitheredTransparencyTraceThreshold = View_DitheredTransparencyTraceThreshold;
  Result.CursorPosition = View_CursorPosition;
  Result.bCheckerboardSubsurfaceProfileRendering = View_bCheckerboardSubsurfaceProfileRendering;
  Result.VolumetricFogInvGridSize = View_VolumetricFogInvGridSize;
  Result.VolumetricFogGridZParams = View_VolumetricFogGridZParams;
  Result.VolumetricFogSVPosToVolumeUV = View_VolumetricFogSVPosToVolumeUV;
  Result.VolumetricFogScreenUVToHistoryVolumeUV = View_VolumetricFogScreenUVToHistoryVolumeUV;
  Result.VolumetricFogMaxDistance = View_VolumetricFogMaxDistance;
  Result.VolumetricLightmapWorldToUVScale = View_VolumetricLightmapWorldToUVScale;
  Result.VolumetricLightmapWorldToUVAdd = View_VolumetricLightmapWorldToUVAdd;
  Result.VolumetricLightmapIndirectionTextureSize = View_VolumetricLightmapIndirectionTextureSize;
  Result.VolumetricLightmapBrickSize = View_VolumetricLightmapBrickSize;
  Result.VolumetricLightmapBrickTexelSize = View_VolumetricLightmapBrickTexelSize;
  Result.IndirectLightingCacheShowFlag = View_IndirectLightingCacheShowFlag;
  Result.EyeToPixelSpreadAngle = View_EyeToPixelSpreadAngle;
  Result.XRPassthroughCameraUVs = View_XRPassthroughCameraUVs;
  Result.GlobalVirtualTextureMipBias = View_GlobalVirtualTextureMipBias;
  Result.VirtualTextureFeedbackShift = View_VirtualTextureFeedbackShift;
  Result.VirtualTextureFeedbackMask = View_VirtualTextureFeedbackMask;
  Result.VirtualTextureFeedbackStride = View_VirtualTextureFeedbackStride;
  Result.VirtualTextureFeedbackJitterOffset = View_VirtualTextureFeedbackJitterOffset;
  Result.VirtualTextureFeedbackSampleOffset = View_VirtualTextureFeedbackSampleOffset;
  Result.RuntimeVirtualTextureMipLevel = View_RuntimeVirtualTextureMipLevel;
  Result.RuntimeVirtualTexturePackHeight = View_RuntimeVirtualTexturePackHeight;
  Result.RuntimeVirtualTextureDebugParams = View_RuntimeVirtualTextureDebugParams;
  Result.OverrideLandscapeLOD = View_OverrideLandscapeLOD;
  Result.FarShadowStaticMeshLODBias = View_FarShadowStaticMeshLODBias;
  Result.MinRoughness = View_MinRoughness;
  Result.HairRenderInfo = View_HairRenderInfo;
  Result.EnableSkyLight = View_EnableSkyLight;
  Result.HairRenderInfoBits = View_HairRenderInfoBits;
  Result.HairComponents = View_HairComponents;
  Result.bSubsurfacePostprocessEnabled = View_bSubsurfacePostprocessEnabled;
  Result.SSProfilesTextureSizeAndInvSize = View_SSProfilesTextureSizeAndInvSize;
  Result.SSProfilesPreIntegratedTextureSizeAndInvSize = View_SSProfilesPreIntegratedTextureSizeAndInvSize;
  Result.PhysicsFieldClipmapCenter = View_PhysicsFieldClipmapCenter;
  Result.PhysicsFieldClipmapDistance = View_PhysicsFieldClipmapDistance;
  Result.PhysicsFieldClipmapResolution = View_PhysicsFieldClipmapResolution;
  Result.PhysicsFieldClipmapExponent = View_PhysicsFieldClipmapExponent;
  Result.PhysicsFieldClipmapCount = View_PhysicsFieldClipmapCount;
  Result.PhysicsFieldTargetCount = View_PhysicsFieldTargetCount;
  Result.PhysicsFieldTargets = View_PhysicsFieldTargets;
  Result.InstanceSceneDataSOAStride = View_InstanceSceneDataSOAStride;
  Result.GPUSceneViewId = View_GPUSceneViewId;
  Result.ViewResolutionFraction = View_ViewResolutionFraction;
  Result.SubSurfaceColorAsTransmittanceAtDistanceInMeters = View_SubSurfaceColorAsTransmittanceAtDistanceInMeters;
  FinalizeViewState(Result);
  return Result;
}


#line 17 "/Engine/Private/InstancedStereo.ush"
void FinalizeViewState(inout ViewState InOutView) {
  InOutView.WorldToClip = MakeLWCInverseMatrix(InOutView.MatrixTilePosition, InOutView.RelativeWorldToClip);
  InOutView.ClipToWorld = MakeLWCMatrix(InOutView.MatrixTilePosition, InOutView.ClipToRelativeWorld);
  InOutView.ScreenToWorld = MakeLWCMatrix(InOutView.MatrixTilePosition, InOutView.ScreenToRelativeWorld);
  InOutView.PrevClipToWorld = MakeLWCMatrix(InOutView.MatrixTilePosition, InOutView.PrevClipToRelativeWorld);
  InOutView.WorldCameraOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.RelativeWorldCameraOrigin);
  InOutView.WorldViewOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.RelativeWorldViewOrigin);
  InOutView.PrevWorldCameraOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.PrevRelativeWorldCameraOrigin);
  InOutView.PrevWorldViewOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.PrevRelativeWorldViewOrigin);
  InOutView.PreViewTranslation = MakeLWCVector3(-InOutView.ViewTilePosition, InOutView.RelativePreViewTranslation);
  InOutView.PrevPreViewTranslation = MakeLWCVector3(-InOutView.ViewTilePosition, InOutView.RelativePrevPreViewTranslation);
}


#line 34 "/Engine/Private/InstancedStereo.ush"
static ViewState ResolvedView = (ViewState)0.F;
#line 36 "/Engine/Private/InstancedStereo.ush"
ViewState ResolveView() {
  return GetPrimaryView();
}


#line 246 "/Engine/Private/Common.ush"
static float GlobalTextureMipBias = 0;
#line 247 "/Engine/Private/Common.ush"
static float GlobalRayCone_TexArea = 0;
#line 275 "/Engine/Private/Common.ush"
min16float4 Texture2DSample(Texture2D<vector<float, 4> > Tex, SamplerState Sampler, float2 UV) {
  return Tex.Sample(Sampler, UV);
}


#line 327 "/Engine/Private/Common.ush"
min16float4 Texture2DSampleLevel(Texture2D<vector<float, 4> > Tex, SamplerState Sampler, float2 UV, min16float Mip) {
  return Tex.SampleLevel(Sampler, UV, Mip);
}


#line 444 "/Engine/Private/Common.ush"
min16float4 Texture2DArraySampleLevel(Texture2DArray<vector<float, 4> > Tex, SamplerState Sampler, float3 UV, min16float Mip) {
  return Tex.SampleLevel(Sampler, UV, Mip);
}


#line 585 "/Engine/Private/Common.ush"
min16float Luminance(min16float3 LinearColor) {
  return dot(LinearColor, min16float3(0.29999999999999999, 0.58999999999999997, 0.11));
}


#line 594 "/Engine/Private/Common.ush"
float length2(float3 v) {
  return dot(v, v);
}


#line 52 "/Engine/Private/FastMathThirdParty.ush"
float sqrtFast(float x) {
  int i = asint(x);
  i = 532487669 + (i >> 1);
  return asfloat(i);
}


#line 182 "/Engine/Private/FastMathThirdParty.ush"
float acosFast(float inX) {
  float x = abs(inX);
  float res = -0.156582996F * x + (0.5 * PI);
  res *= sqrt(1.F - x);
  return (inX >= 0) ? res : PI - res;
}


#line 208 "/Engine/Private/FastMathThirdParty.ush"
float asinFast(float x) {
  return (0.5 * PI) - acosFast(x);
}


#line 16 "/Engine/Private/FastMath.ush"
float4 FastExp(float4 x) {
  return exp2(1.44269502F * x);
}


#line 922 "/Engine/Private/Common.ush"
float Square(float x) {
  return x * x;
}


#line 932 "/Engine/Private/Common.ush"
float3 Square(float3 x) {
  return x * x;
}


#line 942 "/Engine/Private/Common.ush"
float Pow2(float x) {
  return x * x;
}


#line 952 "/Engine/Private/Common.ush"
float3 Pow2(float3 x) {
  return x * x;
}


#line 982 "/Engine/Private/Common.ush"
float Pow4(float x) {
  float xx = x * x;
  return xx * xx;
}


#line 1006 "/Engine/Private/Common.ush"
float Pow5(float x) {
  float xx = x * x;
  return xx * xx * x;
}


#line 1227 "/Engine/Private/Common.ush"
float2 ScreenPositionToBufferUV(float4 ScreenPosition) {
  return float2(ScreenPosition.xy / ScreenPosition.w * ResolvedView.ScreenPositionScaleBias.xy + ResolvedView.ScreenPositionScaleBias.wz);
}


#line 1276 "/Engine/Private/Common.ush"
float4 SvPositionToResolvedScreenPosition(float4 SvPosition) {
  float2 PixelPos = SvPosition.xy - ResolvedView.ViewRectMin.xy;
  float3 NDCPos = float3((PixelPos * ResolvedView.ViewSizeAndInvSize.zw - 0.5F) * float2(2, -2), SvPosition.z);
  return float4(NDCPos.xyz, 1) * SvPosition.w;
}


#line 1373 "/Engine/Private/Common.ush"
min16float4 UnpackNormalMap(min16float4 TextureSample) {
  min16float2 NormalXY = TextureSample.rg;
  NormalXY = NormalXY * min16float2(2.F, 2.F) - min16float2(1.F, 1.F);
  min16float NormalZ = sqrt(saturate(1.F - dot(NormalXY, NormalXY)));
  return min16float4(NormalXY.xy, NormalZ, 1.F);
}


#line 1639 "/Engine/Private/Common.ush"
min16float3 TransformTangentVectorToWorld(min16float3x3 TangentToWorld, min16float3 InTangentVector) {
  return mul(InTangentVector, TangentToWorld);
}


#line 1692 "/Engine/Private/Common.ush"
struct FScreenVertexOutput {
  noperspective float2 UV : TEXCOORD0;
  float4 Position : SV_POSITION;
};
#line 1812 "/Engine/Private/Common.ush"
struct FWriteToSliceGeometryOutput {
  FScreenVertexOutput Vertex;
  uint LayerIndex : SV_RenderTargetArrayIndex;
};
#line 2015 "/Engine/Private/Common.ush"
struct FPixelShaderIn {
  float4 SvPosition;
  uint Coverage;
  bool bIsFrontFace;
};
#line 2027 "/Engine/Private/Common.ush"
struct FPixelShaderOut {
  float4 MRT[8];
  uint StrataOutput[3];
  uint StrataTopLayerData;
  uint Coverage;
  float Depth;
};
#line 10 "/Engine/Private/SHCommon.ush"
struct FOneBandSHVector {
  min16float V;
};
#line 16 "/Engine/Private/SHCommon.ush"
struct FOneBandSHVectorRGB {
  FOneBandSHVector R;
  FOneBandSHVector G;
  FOneBandSHVector B;
};
#line 24 "/Engine/Private/SHCommon.ush"
struct FTwoBandSHVector {
  min16float4 V;
};
#line 30 "/Engine/Private/SHCommon.ush"
struct FTwoBandSHVectorRGB {
  FTwoBandSHVector R;
  FTwoBandSHVector G;
  FTwoBandSHVector B;
};
#line 38 "/Engine/Private/SHCommon.ush"
struct FThreeBandSHVector {
  min16float4 V0;
  min16float4 V1;
  min16float V2;
};
#line 45 "/Engine/Private/SHCommon.ush"
struct FThreeBandSHVectorRGB {
  FThreeBandSHVector R;
  FThreeBandSHVector G;
  FThreeBandSHVector B;
};
#line 18 "/Engine/Private/OctahedralCommon.ush"
float2 UnitVectorToOctahedron(float3 N) {
  N.xy /= dot(1, abs(N));
  if (N.z <= 0) {
    N.xy = (1 - abs(N.yx)) * select_internal(N.xy >= 0, float2(1, 1), float2(-1, -1));
  }
  return N.xy;
}


#line 28 "/Engine/Private/OctahedralCommon.ush"
float3 OctahedronToUnitVector(float2 Oct) {
  float3 N = float3(Oct, 1 - dot(1, abs(Oct)));
  float t = max(-N.z, 0);
  N.xy += select_internal(N.xy >= 0, float2(-t, -t), float2(t, t));
  return normalize(N);
}


#line 15 "/Engine/Shared/LightSceneData.h"
struct FLightSceneData {
  FLWCVector3 WorldPosition;
  float InvRadius;
  float4 Color;
  float FalloffExponent;
  float3 Direction;
  float SpecularScale;
  float3 Tangent;
  float SourceRadius;
  float2 SpotAngles;
  float SoftSourceRadius;
  float SourceLength;
  float RectLightBarnCosAngle;
  float RectLightBarnLength;
  float2 RectLightAtlasUVOffset;
  float2 RectLightAtlasUVScale;
  float RectLightAtlasMaxLevel;
  float InverseExposureBlend;
  uint LightTypeAndShadowMapChannelMaskPacked;
};
#line 138 "/Engine/Private/SceneData.ush"
static const uint InstanceTransformSizeFloat4Count = 3U;
#line 143 "/Engine/Private/SceneData.ush"
struct FPrimitiveSceneData {
  uint Flags;
  int InstanceSceneDataOffset;
  int NumInstanceSceneDataEntries;
  int PersistentPrimitiveIndex;
  uint SingleCaptureIndex;
  float3 TilePosition;
  uint PrimitiveComponentId;
  FLWCMatrix LocalToWorld;
  FLWCInverseMatrix WorldToLocal;
  FLWCMatrix PreviousLocalToWorld;
  FLWCInverseMatrix PreviousWorldToLocal;
  float4x4 WorldToPreviousWorld;
  float3 InvNonUniformScale;
  float ObjectBoundsX;
  FLWCVector3 ObjectWorldPosition;
  FLWCVector3 ActorWorldPosition;
  float ObjectRadius;
  uint LightmapUVIndex;
  float3 ObjectOrientation;
  uint LightmapDataIndex;
  float4 NonUniformScale;
  float3 PreSkinnedLocalBoundsMin;
  uint NaniteResourceID;
  float3 PreSkinnedLocalBoundsMax;
  uint NaniteHierarchyOffset;
  float3 LocalObjectBoundsMin;
  float ObjectBoundsY;
  float3 LocalObjectBoundsMax;
  float ObjectBoundsZ;
  uint InstancePayloadDataOffset;
  uint InstancePayloadDataStride;
  float3 InstanceLocalBoundsCenter;
  float3 InstanceLocalBoundsExtent;
  float3 WireframeColor;
  float3 LevelColor;
  uint PackedNaniteFlags;
  float2 InstanceDrawDistanceMinMaxSquared;
  float InstanceWPODisableDistanceSquared;
  uint NaniteRayTracingDataOffset;
  float MaxWPODisplacement;
  uint CustomStencilValueAndMask;
  float4 CustomPrimitiveData[9];
};
#line 190 "/Engine/Private/SceneData.ush"
FPrimitiveSceneData GetPrimitiveDataFromUniformBuffer() {
  FPrimitiveSceneData PrimitiveData;
  PrimitiveData.Flags = Primitive_Flags;
  PrimitiveData.InstanceSceneDataOffset = Primitive_InstanceSceneDataOffset;
  PrimitiveData.NumInstanceSceneDataEntries = Primitive_NumInstanceSceneDataEntries;
  PrimitiveData.SingleCaptureIndex = Primitive_SingleCaptureIndex;
  PrimitiveData.TilePosition = Primitive_TilePosition;
  PrimitiveData.PrimitiveComponentId = Primitive_PrimitiveComponentId;
  PrimitiveData.LocalToWorld = MakeLWCMatrix4x3(Primitive_TilePosition, Primitive_LocalToRelativeWorld);
  PrimitiveData.WorldToLocal = MakeLWCInverseMatrix4x3(Primitive_TilePosition, Primitive_RelativeWorldToLocal);
  PrimitiveData.PreviousLocalToWorld = MakeLWCMatrix4x3(Primitive_TilePosition, Primitive_PreviousLocalToRelativeWorld);
  PrimitiveData.PreviousWorldToLocal = MakeLWCInverseMatrix4x3(Primitive_TilePosition, Primitive_PreviousRelativeWorldToLocal);
  PrimitiveData.WorldToPreviousWorld = Primitive_WorldToPreviousWorld;
  PrimitiveData.InvNonUniformScale = Primitive_InvNonUniformScale;
  PrimitiveData.ObjectBoundsX = Primitive_ObjectBoundsX;
  PrimitiveData.ObjectWorldPosition = MakeLWCVector3(Primitive_TilePosition, Primitive_ObjectRelativeWorldPositionAndRadius.xyz);
  PrimitiveData.ObjectRadius = Primitive_ObjectRelativeWorldPositionAndRadius.w;
  PrimitiveData.ActorWorldPosition = MakeLWCVector3(Primitive_TilePosition, Primitive_ActorRelativeWorldPosition);
  PrimitiveData.LightmapUVIndex = Primitive_LightmapUVIndex;
  PrimitiveData.ObjectOrientation = Primitive_ObjectOrientation;
  PrimitiveData.LightmapDataIndex = Primitive_LightmapDataIndex;
  PrimitiveData.NonUniformScale = Primitive_NonUniformScale;
  PrimitiveData.PreSkinnedLocalBoundsMin = Primitive_PreSkinnedLocalBoundsMin;
  PrimitiveData.NaniteResourceID = Primitive_NaniteResourceID;
  PrimitiveData.PreSkinnedLocalBoundsMax = Primitive_PreSkinnedLocalBoundsMax;
  PrimitiveData.NaniteHierarchyOffset = Primitive_NaniteHierarchyOffset;
  PrimitiveData.LocalObjectBoundsMin = Primitive_LocalObjectBoundsMin;
  PrimitiveData.ObjectBoundsY = Primitive_ObjectBoundsY;
  PrimitiveData.LocalObjectBoundsMax = Primitive_LocalObjectBoundsMax;
  PrimitiveData.ObjectBoundsZ = Primitive_ObjectBoundsZ;
  PrimitiveData.InstancePayloadDataOffset = Primitive_InstancePayloadDataOffset;
  PrimitiveData.InstancePayloadDataStride = Primitive_InstancePayloadDataStride;
  PrimitiveData.InstanceLocalBoundsCenter = Primitive_InstanceLocalBoundsCenter;
  PrimitiveData.InstanceLocalBoundsExtent = Primitive_InstanceLocalBoundsExtent;
  PrimitiveData.WireframeColor = Primitive_WireframeColor;
  PrimitiveData.LevelColor = Primitive_LevelColor;
  PrimitiveData.PackedNaniteFlags = Primitive_PackedNaniteFlags;
  PrimitiveData.InstanceDrawDistanceMinMaxSquared = Primitive_InstanceDrawDistanceMinMaxSquared;
  PrimitiveData.InstanceWPODisableDistanceSquared = Primitive_InstanceWPODisableDistanceSquared;
  PrimitiveData.PersistentPrimitiveIndex = Primitive_PersistentPrimitiveIndex;
  PrimitiveData.NaniteRayTracingDataOffset = Primitive_NaniteRayTracingDataOffset;
  PrimitiveData.MaxWPODisplacement = Primitive_MaxWPODisplacement;
  PrimitiveData.CustomStencilValueAndMask = Primitive_CustomStencilValueAndMask;
  [unroll]
  for (int DataIndex = 0; DataIndex < 9; ++DataIndex) {
    PrimitiveData.CustomPrimitiveData[DataIndex] = Primitive_CustomPrimitiveData[DataIndex];
  }
  return PrimitiveData;
}


#line 381 "/Engine/Private/SceneData.ush"
FPrimitiveSceneData GetPrimitiveData(uint PrimitiveId) {
  return GetPrimitiveDataFromUniformBuffer();
}


#line 424 "/Engine/Private/SceneData.ush"
uint GetPrimitive_LightingChannelMask_FromFlags(uint Flags) {
  const uint Channel0 = CondMask(Flags & 2048, 1U, 0U);
  const uint Channel1 = CondMask(Flags & 4096, 1U, 0U);
  const uint Channel2 = CondMask(Flags & 8192, 1U, 0U);
  return (Channel0 | (Channel1 << 1U) | (Channel2 << 2U));
}


#line 432 "/Engine/Private/SceneData.ush"
uint GetPrimitive_LightingChannelMask(uint PrimitiveId) {
  return GetPrimitive_LightingChannelMask_FromFlags(GetPrimitiveData(PrimitiveId).Flags);
}


#line 465 "/Engine/Private/SceneData.ush"
struct FInstancePayloadDataOffsets {
  uint HierarchyOffset;
  uint EditorData;
  uint LocalBounds;
  uint DynamicData;
  uint LightShadowUVBias;
  uint CustomData;
};
#line 475 "/Engine/Private/SceneData.ush"
struct FInstanceSceneData {
  FLWCMatrix LocalToWorld;
  FLWCMatrix PrevLocalToWorld;
  FLWCInverseMatrix WorldToLocal;
  float4 NonUniformScale;
  float3 InvNonUniformScale;
  float DeterminantSign;
  float3 LocalBoundsCenter;
  uint PrimitiveId;
  uint RelativeId;
  uint PayloadDataOffset;
  float3 LocalBoundsExtent;
  uint LastUpdateSceneFrameNumber;
  uint NaniteRuntimeResourceID;
  uint NaniteHierarchyOffset;
  float4 LightMapAndShadowMapUVBias;
  bool ValidInstance;
  uint Flags;
};
#line 1061 "/Engine/Private/SceneData.ush"
struct FSceneDataIntermediates {
  uint PrimitiveId;
  uint InstanceId;
  uint ViewIndex;
  uint InstanceIdLoadIndex;
  FInstanceSceneData InstanceData;
  FPrimitiveSceneData Primitive;
};
#line 20 "/Engine/Private/HairShadingCommon.ush"
struct FHairTransmittanceData {
  bool bUseLegacyAbsorption;
  bool bUseSeparableR;
  bool bUseBacklit;
  float OpaqueVisibility;
  float3 LocalScattering;
  float3 GlobalScattering;
  uint ScatteringComponent;
};
#line 33 "/Engine/Private/HairShadingCommon.ush"
FHairTransmittanceData InitHairTransmittanceData(bool bMultipleScatterEnable = true) {
  FHairTransmittanceData o;
  o.bUseLegacyAbsorption = true;
  o.bUseSeparableR = true;
  o.bUseBacklit = false;
  o.OpaqueVisibility = 1;
  o.LocalScattering = 0;
  o.GlobalScattering = 1;
  o.ScatteringComponent = 1U | 2U | 4U | (bMultipleScatterEnable ? 32U : 0);
  return o;
}


#line 71 "/Engine/Private/HairShadingCommon.ush"
float3 HairColorToAbsorption(float3 C, float B = 0.300000012F) {
  const float b2 = B * B;
  const float b3 = B * b2;
  const float b4 = b2 * b2;
  const float b5 = B * b4;
  const float D = (5.96899986F - 0.215000004F * B + 2.53200006F * b2 - 10.7299995F * b3 + 5.57399988F * b4 + 0.245000005F * b5);
  return Pow2(log(C) / D);
}


#line 16 "/Engine/Private/HairStrands/HairStrandsVertexFactoryCommon.ush"
struct FHairControlPoint {
  float3 Position;
  float WorldRadius;
  float UCoord;
  uint Type;
};
#line 125 "/Engine/Private/HairStrands/HairStrandsVertexFactoryCommon.ush"
struct FHairCurve {
  uint PointIndex;
  uint PointCount;
};
#line 90 "/Engine/Private/ShadingCommon.ush"
bool GetShadingModelRequiresBackfaceLighting(uint ShadingModelID) {
  return ShadingModelID == 6;
}


#line 113 "/Engine/Private/ShadingCommon.ush"
min16float DielectricSpecularToF0(min16float Specular) {
  return 0.0799999982F * Specular;
}


#line 146 "/Engine/Private/ShadingCommon.ush"
min16float3 ComputeF0(min16float Specular, min16float3 BaseColor, min16float Metallic) {
  return lerp(DielectricSpecularToF0(Specular).xxx, BaseColor, Metallic.xxx);
}


#line 185 "/Engine/Private/ShadingCommon.ush"
struct FVerticalLayeringInfo {
  float TransmittanceTopAndBottom;
  float TransmittanceOnlyBottom;
  float TransmittanceOnlyTop;
  float SurfaceBottom;
  float SurfaceTop;
  float Coverage;
  float NoSurface;
};
#line 24 "/Engine/Private/LightAccumulator.ush"
struct FLightAccumulator {
  float3 TotalLight;
  float ScatterableLightLuma;
  float3 ScatterableLight;
  float EstimatedCost;
  float3 TotalLightDiffuse;
  float3 TotalLightSpecular;
};
#line 49 "/Engine/Private/LightAccumulator.ush"
struct FDeferredLightingSplit {
  float4 DiffuseLighting;
  float4 SpecularLighting;
};
#line 56 "/Engine/Private/LightAccumulator.ush"
void LightAccumulator_AddSplit(inout FLightAccumulator In, float3 DiffuseTotalLight, float3 SpecularTotalLight, float3 ScatterableLight, float3 CommonMultiplier, const bool bNeedsSeparateSubsurfaceLightAccumulation) {
  In.TotalLight += (DiffuseTotalLight + SpecularTotalLight) * CommonMultiplier;
  if (bNeedsSeparateSubsurfaceLightAccumulation) {
    if (1 == 1) {
      if (View_bCheckerboardSubsurfaceProfileRendering == 0) {
        In.ScatterableLightLuma += Luminance(ScatterableLight * CommonMultiplier);
      }
    } else if (1 == 2) {
      In.ScatterableLight += ScatterableLight * CommonMultiplier;
    }
  }
  In.TotalLightDiffuse += DiffuseTotalLight * CommonMultiplier;
  In.TotalLightSpecular += SpecularTotalLight * CommonMultiplier;
}


#line 164 "/Engine/Private/LightAccumulator.ush"
struct FStrataDeferredLighting {
  float4 SceneColor;
};
#line 306 "/Engine/Private/DeferredShadingCommon.ush"
bool UseSubsurfaceProfile(int ShadingModel) {
  return ShadingModel == 5 || ShadingModel == 9;
}


#line 329 "/Engine/Private/DeferredShadingCommon.ush"
struct FGBufferData {
  min16float3 WorldNormal;
  min16float3 WorldTangent;
  min16float3 DiffuseColor;
  min16float3 SpecularColor;
  min16float3 BaseColor;
  min16float Metallic;
  min16float Specular;
  min16float4 CustomData;
  min16float GenericAO;
  min16float IndirectIrradiance;
  min16float4 PrecomputedShadowFactors;
  min16float Roughness;
  min16float Anisotropy;
  min16float GBufferAO;
  uint DiffuseIndirectSampleOcclusion;
  uint ShadingModelID;
  uint SelectiveOutputMask;
  min16float PerObjectGBufferData;
  min16float CustomDepth;
  uint CustomStencil;
  min16float Depth;
  min16float4 Velocity;
  min16float3 StoredBaseColor;
  min16float StoredSpecular;
  min16float StoredMetallic;
  min16float Curvature;
};
#line 437 "/Engine/Private/DeferredShadingCommon.ush"
struct FScreenSpaceData {
  FGBufferData GBuffer;
  float AmbientOcclusion;
};
#line 1024 "/Engine/Private/DeferredShadingCommon.ush"
float3 ExtractSubsurfaceColor(FGBufferData BufferData) {
  return Square(BufferData.CustomData.rgb);
}


#line 1029 "/Engine/Private/DeferredShadingCommon.ush"
uint ExtractSubsurfaceProfileInt(float ProfileNormFloat) {
  return uint(ProfileNormFloat * 255.F + 0.5F);
}


#line 1034 "/Engine/Private/DeferredShadingCommon.ush"
uint ExtractSubsurfaceProfileInt(FGBufferData BufferData) {
  return ExtractSubsurfaceProfileInt(BufferData.CustomData.r);
}


#line 1184 "/Engine/Private/DeferredShadingCommon.ush"
min16float3 AOMultiBounce(min16float3 BaseColor, min16float AO) {
  if (1 && !0) {
    return AO;
  } else {
    min16float3 a = 2.0404 * BaseColor - 0.33239999999999997;
    min16float3 b = -4.7950999999999997 * BaseColor + 0.64170000000000005;
    min16float3 c = 2.7551999999999999 * BaseColor + 0.69030000000000002;
    return max(AO, ((AO * a + b) * AO + c) * AO);
  }
}


#line 144 "/Engine/Private/MaterialTexture.ush"
min16float4 ProcessMaterialColorTextureLookup(min16float4 TextureValue) {
  return TextureValue;
}


#line 163 "/Engine/Private/MaterialTexture.ush"
min16float4 ProcessMaterialLinearColorTextureLookup(min16float4 TextureValue) {
  return TextureValue;
}


#line 162 "/Engine/Generated/Material.ush"
struct FStrataData {
  uint Dummy;
};
#line 166 "/Engine/Generated/Material.ush"
FStrataData GetInitialisedStrataData() {
  return (FStrataData)0;
}


#line 267 "/Engine/Private/DBufferDecalShared.ush"
struct FDBufferData {
  float3 PreMulColor;
  float ColorOpacity;
  float3 PreMulWorldNormal;
  float NormalOpacity;
  float PreMulRoughness;
  float PreMulMetallic;
  float PreMulSpecular;
  float RoughnessOpacity;
};
#line 179 "/Engine/Generated/Material.ush"
struct FMaterialParticleParameters {
  min16float RelativeTime;
  min16float MotionBlurFade;
  min16float Random;
  min16float4 Velocity;
  min16float4 Color;
  float4 TranslatedWorldPositionAndSize;
  min16float4 MacroUV;
  min16float4 DynamicParameter;
  FLWCMatrix ParticleToWorld;
  FLWCInverseMatrix WorldToParticle;
  float2 Size;
};
#line 261 "/Engine/Generated/Material.ush"
struct FMaterialAttributes {
  float3 BaseColor;
  float Metallic;
  float Specular;
  float Roughness;
  float Anisotropy;
  float3 EmissiveColor;
  float Opacity;
  float OpacityMask;
  float3 Normal;
  float3 Tangent;
  float3 WorldPositionOffset;
  float3 SubsurfaceColor;
  float ClearCoat;
  float ClearCoatRoughness;
  float AmbientOcclusion;
  float3 Refraction;
  float PixelDepthOffset;
  uint ShadingModel;
  float SurfaceThickness;
  FStrataData FrontMaterial;
  float2 CustomizedUV0;
  float2 CustomizedUV1;
  float2 CustomizedUV2;
  float2 CustomizedUV3;
  float2 CustomizedUV4;
  float2 CustomizedUV5;
  float2 CustomizedUV6;
  float2 CustomizedUV7;
  float3 BentNormal;
  float3 ClearCoatBottomNormal;
  float3 CustomEyeTangent;
  float3 TransmittanceColor;
};
#line 336 "/Engine/Generated/Material.ush"
struct FPixelMaterialInputs {
  min16float3 EmissiveColor;
  min16float Opacity;
  min16float OpacityMask;
  min16float3 BaseColor;
  min16float Metallic;
  min16float Specular;
  min16float Roughness;
  min16float Anisotropy;
  min16float3 Normal;
  min16float3 Tangent;
  min16float4 Subsurface;
  min16float AmbientOcclusion;
  min16float3 Refraction;
  min16float PixelDepthOffset;
  uint ShadingModel;
  FStrataData FrontMaterial;
  min16float SurfaceThickness;
};
#line 362 "/Engine/Generated/Material.ush"
struct FMaterialPixelParameters {
  float2 TexCoords[1];
  min16float4 VertexColor;
  min16float3 WorldNormal;
  min16float3 WorldTangent;
  min16float3 ReflectionVector;
  float3 CameraVector;
  min16float3 LightVector;
  float4 SvPosition;
  float4 ScreenPosition;
  float2 ViewBufferUV;
  min16float UnMirrored;
  min16float TwoSidedSign;
  min16float3x3 TangentToWorld;
  FLWCVector3 AbsoluteWorldPosition;
  float3 WorldPosition_CamRelative;
  FLWCVector3 WorldPosition_NoOffsets;
  float3 WorldPosition_NoOffsets_CamRelative;
  min16float3 LightingPositionOffset;
  float3 WorldPosition_DDX;
  float3 WorldPosition_DDY;
  float4 VertexColor_DDX;
  float4 VertexColor_DDY;
  float4 ScreenPosition_DDX;
  float4 ScreenPosition_DDY;
  float2 TexCoords_DDX[1];
  float2 TexCoords_DDY[1];
  float AOMaterialMask;
  uint PrimitiveId;
  FMaterialParticleParameters Particle;
  float4 LayerWeights;
  FMaterialAttributes MaterialAttributes;
};
#line 568 "/Engine/Generated/Material.ush"
FMaterialPixelParameters MakeInitializedMaterialPixelParameters() {
  FMaterialPixelParameters MPP;
  MPP = (FMaterialPixelParameters)0;
  MPP.TangentToWorld = float3x3(1, 0, 0, 0, 1, 0, 0, 0, 1);
  return MPP;
}


#line 580 "/Engine/Generated/Material.ush"
struct FMaterialVertexParameters {
  float3 WorldPosition;
  min16float3x3 TangentToWorld;
  FLWCMatrix PrevFrameLocalToWorld;
  float3 PreSkinnedPosition;
  float3 PreSkinnedNormal;
  min16float4 VertexColor;
  float2 TexCoords[1];
  float2 TexCoordOffset;
  FMaterialParticleParameters Particle;
  FMaterialAttributes MaterialAttributes;
  FSceneDataIntermediates SceneData;
  uint PrimitiveId;
};
#line 1993 "/Engine/Generated/Material.ush"
SamplerState GetMaterialSharedSampler(SamplerState TextureSampler, SamplerState SharedSampler) {
  return TextureSampler;
}


#line 2005 "/Engine/Generated/Material.ush"
min16float3 ReflectionAboutCustomWorldNormal(FMaterialPixelParameters Parameters, min16float3 WorldNormal, bool bNormalizeInputNormal) {
  if (bNormalizeInputNormal) {
    WorldNormal = normalize(WorldNormal);
  }
  return -Parameters.CameraVector + WorldNormal * dot(WorldNormal, Parameters.CameraVector) * 2.;
}


#line 2835 "/Engine/Generated/Material.ush"
min16float3 GetMaterialNormalRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.Normal;
}


#line 2840 "/Engine/Generated/Material.ush"
min16float3 GetMaterialNormal(FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs) {
  min16float3 RetNormal;
  RetNormal = GetMaterialNormalRaw(PixelMaterialInputs);
  return RetNormal;
}


#line 2872 "/Engine/Generated/Material.ush"
min16float3 GetMaterialEmissiveRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.EmissiveColor;
}


#line 2877 "/Engine/Generated/Material.ush"
min16float3 GetMaterialEmissive(FPixelMaterialInputs PixelMaterialInputs) {
  min16float3 EmissiveColor = GetMaterialEmissiveRaw(PixelMaterialInputs);
  EmissiveColor = max(EmissiveColor, 0.F);
  return EmissiveColor;
}


#line 2892 "/Engine/Generated/Material.ush"
uint GetMaterialShadingModel(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.ShadingModel;
}


#line 2897 "/Engine/Generated/Material.ush"
min16float3 GetMaterialBaseColorRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.BaseColor;
}


#line 2902 "/Engine/Generated/Material.ush"
min16float3 GetMaterialBaseColor(FPixelMaterialInputs PixelMaterialInputs) {
  return saturate(GetMaterialBaseColorRaw(PixelMaterialInputs));
}


#line 2907 "/Engine/Generated/Material.ush"
min16float GetMaterialMetallicRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.Metallic;
}


#line 2912 "/Engine/Generated/Material.ush"
min16float GetMaterialMetallic(FPixelMaterialInputs PixelMaterialInputs) {
  return saturate(GetMaterialMetallicRaw(PixelMaterialInputs));
}


#line 2917 "/Engine/Generated/Material.ush"
min16float GetMaterialSpecularRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.Specular;
}


#line 2922 "/Engine/Generated/Material.ush"
min16float GetMaterialSpecular(FPixelMaterialInputs PixelMaterialInputs) {
  return saturate(GetMaterialSpecularRaw(PixelMaterialInputs));
}


#line 2927 "/Engine/Generated/Material.ush"
min16float GetMaterialRoughnessRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.Roughness;
}


#line 2932 "/Engine/Generated/Material.ush"
min16float GetMaterialRoughness(FPixelMaterialInputs PixelMaterialInputs) {
  min16float Roughness = saturate(GetMaterialRoughnessRaw(PixelMaterialInputs));
  return Roughness;
}


#line 2949 "/Engine/Generated/Material.ush"
min16float GetMaterialAnisotropyRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.Anisotropy;
}


#line 2954 "/Engine/Generated/Material.ush"
min16float GetMaterialAnisotropy(FPixelMaterialInputs PixelMaterialInputs) {
  return clamp(GetMaterialAnisotropyRaw(PixelMaterialInputs), -1.F, 1.F);
}


#line 3003 "/Engine/Generated/Material.ush"
min16float GetMaterialOpacityRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.Opacity;
}


#line 3025 "/Engine/Generated/Material.ush"
min16float GetMaterialOpacity(FPixelMaterialInputs PixelMaterialInputs) {
  return saturate(GetMaterialOpacityRaw(PixelMaterialInputs));
}


#line 3131 "/Engine/Generated/Material.ush"
min16float GetMaterialAmbientOcclusionRaw(FPixelMaterialInputs PixelMaterialInputs) {
  return PixelMaterialInputs.AmbientOcclusion;
}


#line 3136 "/Engine/Generated/Material.ush"
min16float GetMaterialAmbientOcclusion(FPixelMaterialInputs PixelMaterialInputs) {
  return saturate(GetMaterialAmbientOcclusionRaw(PixelMaterialInputs));
}


#line 3141 "/Engine/Generated/Material.ush"
struct FMaterialRefractionData {
  float2 Data;
  float RefractionDepthBias;
};
#line 3269 "/Engine/Generated/Material.ush"
float3 TransformTangentNormalToWorld(min16float3x3 TangentToWorld, float3 TangentNormal) {
  return normalize(float3(TransformTangentVectorToWorld(TangentToWorld, TangentNormal)));
}


#line 3330 "/Engine/Generated/Material.ush"
void CalcPixelMaterialInputs(in out FMaterialPixelParameters Parameters, in out FPixelMaterialInputs PixelMaterialInputs) {
  min16float2 Local0 = Parameters.TexCoords[0].xy;
  min16float2 Local1 = (Local0 * Material_PreshaderBuffer[1].zw);
  min16float2 Local2 = (Local1 + Material_PreshaderBuffer[3].xy);
  min16float2 Local3 = (Material_PreshaderBuffer[4].xy + Local2);
  min16float Local4 = dot(Local3, Material_PreshaderBuffer[6].xy);
  min16float Local5 = dot(Local3, Material_PreshaderBuffer[6].zw);
  min16float2 Local6 = min16float2(Local4, Local5);
  min16float2 Local7 = (Material_PreshaderBuffer[3].zw + Local6);
  min16float Local8 = 1.F;
  min16float4 Local9 = UnpackNormalMap(Texture2DSample(Material_Texture2D_0, GetMaterialSharedSampler(Material_Texture2D_0Sampler, Material_Wrap_WorldGroupSettings), Local7));
  min16float Local10 = 1.F;
  min16float2 Local11 = (Local9.rgb.rg * ((min16float2)Material_PreshaderBuffer[7].x));
  min16float2 Local12 = (((min16float2)(0. * -1.)) + Local11);
  min16float Local13 = dot(Local12, Material_PreshaderBuffer[8].zw);
  min16float Local14 = dot(Local12, Material_PreshaderBuffer[9].xy);
  min16float2 Local15 = (((min16float2)0.) + min16float2(Local13, Local14));
  min16float2 Local16 = (Local0 * Material_PreshaderBuffer[11].zw);
  min16float2 Local17 = (Local16 + Material_PreshaderBuffer[13].xy);
  min16float2 Local18 = (Material_PreshaderBuffer[14].xy + Local17);
  min16float Local19 = dot(Local18, Material_PreshaderBuffer[16].xy);
  min16float Local20 = dot(Local18, Material_PreshaderBuffer[16].zw);
  min16float2 Local21 = min16float2(Local19, Local20);
  min16float2 Local22 = (Material_PreshaderBuffer[13].zw + Local21);
  min16float Local23 = 1.F;
  min16float4 Local24 = UnpackNormalMap(Texture2DSample(Material_Texture2D_1, GetMaterialSharedSampler(Material_Texture2D_1Sampler, Material_Wrap_WorldGroupSettings), Local22));
  min16float Local25 = 1.F;
  min16float2 Local26 = (Local24.rgb.rg * ((min16float2)Material_PreshaderBuffer[17].x));
  min16float2 Local27 = (((min16float2)(0. * -1.)) + Local26);
  min16float Local28 = dot(Local27, Material_PreshaderBuffer[18].zw);
  min16float Local29 = dot(Local27, Material_PreshaderBuffer[19].xy);
  min16float2 Local30 = (((min16float2)0.) + min16float2(Local28, Local29));
  min16float2 Local31 = (Local0 * Material_PreshaderBuffer[21].zw);
  min16float2 Local32 = (Local31 + Material_PreshaderBuffer[23].xy);
  min16float2 Local33 = (Material_PreshaderBuffer[24].xy + Local32);
  min16float Local34 = dot(Local33, Material_PreshaderBuffer[26].xy);
  min16float Local35 = dot(Local33, Material_PreshaderBuffer[26].zw);
  min16float2 Local36 = min16float2(Local34, Local35);
  min16float2 Local37 = (Material_PreshaderBuffer[23].zw + Local36);
  min16float Local38 = 1.F;
  min16float4 Local39 = UnpackNormalMap(Texture2DSample(Material_Texture2D_2, GetMaterialSharedSampler(Material_Texture2D_2Sampler, Material_Wrap_WorldGroupSettings), Local37));
  min16float Local40 = 1.F;
  min16float2 Local41 = (Local39.rgb.rg * ((min16float2)Material_PreshaderBuffer[27].x));
  min16float2 Local42 = (((min16float2)(0. * -1.)) + Local41);
  min16float Local43 = dot(Local42, Material_PreshaderBuffer[28].zw);
  min16float Local44 = dot(Local42, Material_PreshaderBuffer[29].xy);
  min16float2 Local45 = (((min16float2)0.) + min16float2(Local43, Local44));
  min16float Local46 = 1.F;
  min16float4 Local47 = ProcessMaterialLinearColorTextureLookup(Texture2DSample(Material_Texture2D_3, GetMaterialSharedSampler(Material_Texture2D_3Sampler, Material_Wrap_WorldGroupSettings), Local22));
  min16float Local48 = 1.F;
  min16float Local49 = saturate(Local47.b);
  min16float Local50 = 1.F;
  min16float4 Local51 = ProcessMaterialLinearColorTextureLookup(Texture2DSample(Material_Texture2D_4, GetMaterialSharedSampler(Material_Texture2D_4Sampler, Material_Wrap_WorldGroupSettings), Local37));
  min16float Local52 = 1.F;
  min16float Local53 = lerp(Local49, Local51.b, Material_PreshaderBuffer[31].y);
  min16float Local54 = (Local53 * Material_PreshaderBuffer[31].z);
  min16float Local55 = (1. - Local53);
  min16float Local56 = (Local55 * Material_PreshaderBuffer[31].z);
  min16float Local57 = lerp(Local54, Local56, Material_PreshaderBuffer[31].w);
  min16float Local58 = (Local57 - 1.);
  min16float4 Local59 = Parameters.VertexColor;
  min16float Local60 = Local59.r;
  min16float Local61 = (Local60 * 2.);
  min16float Local62 = (Local58 + Local61);
  min16float Local63 = saturate(Local62);
  min16float Local64 = lerp(Material_PreshaderBuffer[32].x, Material_PreshaderBuffer[32].y, Local63);
  min16float Local65 = saturate(Local64);
  min16float3 Local66 = lerp(min16float3(Local30, Local24.rgb.b), min16float3(Local45, Local39.rgb.b), Local65.r);
  min16float Local67 = 1.F;
  min16float4 Local68 = ProcessMaterialLinearColorTextureLookup(Texture2DSample(Material_Texture2D_5, GetMaterialSharedSampler(Material_Texture2D_5Sampler, Material_Wrap_WorldGroupSettings), Local7));
  min16float Local69 = 1.F;
  min16float Local70 = saturate(Local68.b);
  min16float Local71 = lerp(Local70, min16float3(0., 0., 0.).r, Material_PreshaderBuffer[34].y);
  min16float Local72 = (Local71 * Material_PreshaderBuffer[34].z);
  min16float Local73 = (1. - Local71);
  min16float Local74 = (Local73 * Material_PreshaderBuffer[34].z);
  min16float Local75 = lerp(Local72, Local74, Material_PreshaderBuffer[34].w);
  min16float Local76 = (Local75 - 1.);
  min16float Local77 = Local59.g;
  min16float Local78 = (Local77 * 2.);
  min16float Local79 = (Local76 + Local78);
  min16float Local80 = saturate(Local79);
  min16float Local81 = lerp(Material_PreshaderBuffer[35].x, Material_PreshaderBuffer[35].y, Local80);
  min16float Local82 = saturate(Local81);
  min16float3 Local83 = lerp(min16float3(Local15, Local9.rgb.b), Local66, Local82.r);
  PixelMaterialInputs.Normal = Local83;
  float3 MaterialNormal = GetMaterialNormal(Parameters, PixelMaterialInputs);
  Parameters.WorldNormal = TransformTangentNormalToWorld(Parameters.TangentToWorld, MaterialNormal);
  Parameters.WorldNormal *= Parameters.TwoSidedSign;
  Parameters.ReflectionVector = ReflectionAboutCustomWorldNormal(Parameters, Parameters.WorldNormal, false);
  Parameters.Particle.MotionBlurFade = 1.F;
  min16float Local84 = 1.F;
  min16float4 Local85 = ProcessMaterialColorTextureLookup(Texture2DSample(Material_Texture2D_6, GetMaterialSharedSampler(Material_Texture2D_6Sampler, Material_Wrap_WorldGroupSettings), Local7));
  min16float Local86 = 1.F;
  min16float Local87 = 1.F;
  min16float4 Local88 = ProcessMaterialColorTextureLookup(Texture2DSample(Material_Texture2D_7, GetMaterialSharedSampler(Material_Texture2D_7Sampler, Material_Wrap_WorldGroupSettings), Local22));
  min16float Local89 = 1.F;
  min16float Local90 = 1.F;
  min16float4 Local91 = ProcessMaterialColorTextureLookup(Texture2DSample(Material_Texture2D_8, GetMaterialSharedSampler(Material_Texture2D_8Sampler, Material_Wrap_WorldGroupSettings), Local37));
  min16float Local92 = 1.F;
  min16float3 Local93 = lerp(Local88.rgb, Local91.rgb, Local65.r);
  min16float3 Local94 = lerp(Local85.rgb, Local93, Local82.r);
  min16float Local95 = lerp(Local47.g, Local51.g, Local65.r);
  min16float Local96 = lerp(Local68.r, Local95, Local82.r);
  min16float4 Local149 = ProcessMaterialLinearColorTextureLookup(Texture2DSample(Material_Texture2D_9, GetMaterialSharedSampler(Material_Texture2D_9Sampler, Material_Wrap_WorldGroupSettings), Local7));
  min16float Local150 = 1.F;
  min16float4 Local151 = ProcessMaterialLinearColorTextureLookup(Texture2DSample(Material_Texture2D_10, GetMaterialSharedSampler(Material_Texture2D_10Sampler, Material_Wrap_WorldGroupSettings), Local22));
  min16float Local152 = 1.F;
  min16float4 Local153 = ProcessMaterialLinearColorTextureLookup(Texture2DSample(Material_Texture2D_11, GetMaterialSharedSampler(Material_Texture2D_11Sampler, Material_Wrap_WorldGroupSettings), Local37));
  min16float Local154 = 1.F;
  min16float Local155 = lerp(Local151.r, Local153.r, Local65.r);
  min16float Local156 = lerp(Local149.r, Local155, Local82.r);
  PixelMaterialInputs.EmissiveColor = min16float3(0., 0., 0.);
  PixelMaterialInputs.Opacity = 1.;
  PixelMaterialInputs.OpacityMask = 1.;
  PixelMaterialInputs.BaseColor = Local94;
  PixelMaterialInputs.Metallic = 0.;
  PixelMaterialInputs.Specular = 0.5;
  PixelMaterialInputs.Roughness = Local96;
  PixelMaterialInputs.Anisotropy = 0.;
  PixelMaterialInputs.Normal = Local83;
  PixelMaterialInputs.Tangent = min16float3(1., 0., 0.);
  PixelMaterialInputs.Subsurface = 0;
  PixelMaterialInputs.AmbientOcclusion = Local156;
  PixelMaterialInputs.Refraction = 0;
  PixelMaterialInputs.PixelDepthOffset = 0.;
  PixelMaterialInputs.ShadingModel = 1;
  PixelMaterialInputs.FrontMaterial = GetInitialisedStrataData();
  PixelMaterialInputs.SurfaceThickness = 0.01;
  Parameters.WorldTangent = 0;
}


#line 3743 "/Engine/Generated/Material.ush"
void ClipLODTransition(FMaterialPixelParameters Parameters) {
}


#line 3777 "/Engine/Generated/Material.ush"
void GetMaterialCoverageAndClipping(FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs) {
  ClipLODTransition(Parameters);
}


#line 3876 "/Engine/Generated/Material.ush"
bool IsOrthoProjection(ViewState InView) {
  return InView.ViewToClip[3][3] >= 1.F;
}


#line 3882 "/Engine/Generated/Material.ush"
void CalcMaterialParametersEx(in out FMaterialPixelParameters Parameters, in out FPixelMaterialInputs PixelMaterialInputs, float4 SvPosition, float4 ScreenPosition, bool bIsFrontFace, float3 TranslatedWorldPosition, float3 TranslatedWorldPositionExcludingShaderOffsets) {
  Parameters.WorldPosition_CamRelative = TranslatedWorldPosition.xyz;
  Parameters.AbsoluteWorldPosition = LWCSubtract(TranslatedWorldPosition.xyz, ResolvedView.PreViewTranslation);
  Parameters.SvPosition = SvPosition;
  Parameters.ScreenPosition = ScreenPosition;
  Parameters.ViewBufferUV = ScreenPositionToBufferUV(ScreenPosition);
  if (IsOrthoProjection(ResolvedView)) {
    Parameters.CameraVector = -ResolvedView.ViewForward;
  } else {
    Parameters.CameraVector = normalize(-Parameters.WorldPosition_CamRelative.xyz);
  }
  Parameters.LightVector = 0;
  Parameters.TwoSidedSign = 1.F;
  {
    CalcPixelMaterialInputs(Parameters, PixelMaterialInputs);
  }
}


#line 3990 "/Engine/Generated/Material.ush"
min16float3x3 AssembleTangentToWorld(min16float3 TangentToWorld0, min16float4 TangentToWorld2) {
  min16float3 TangentToWorld1 = cross(TangentToWorld2.xyz, TangentToWorld0) * TangentToWorld2.w;
  return min16float3x3(TangentToWorld0, TangentToWorld1, TangentToWorld2.xyz);
}


#line 4071 "/Engine/Generated/Material.ush"
float3 GetWorldBentNormalZero(in FMaterialPixelParameters MaterialParameters) {
  return MaterialParameters.WorldNormal;
}


#line 7 "/Engine/Private/SphericalGaussian.ush"
struct FSphericalGaussian {
  float3 Axis;
  float Sharpness;
  float Amplitude;
};
#line 241 "/Engine/Private/SphericalGaussian.ush"
struct FAnisoSphericalGaussian {
  float3 AxisX;
  float3 AxisY;
  float3 AxisZ;
  float SharpnessX;
  float SharpnessY;
  float Amplitude;
};
#line 152 "/Engine/Private/BasePassCommon.ush"
struct FShadingOcclusion {
  min16float DiffOcclusion;
  min16float SpecOcclusion;
  min16float3 BentNormal;
};
#line 249 "/Engine/Private/BasePassCommon.ush"
FShadingOcclusion ApplyBentNormal(in min16float3 CameraVector, in min16float3 WorldNormal, in float3 WorldBentNormal0, in min16float Roughness, in min16float MaterialAO) {
  FShadingOcclusion Out;
  Out.DiffOcclusion = MaterialAO;
  Out.SpecOcclusion = MaterialAO;
  Out.BentNormal = WorldNormal;
  return Out;
}


#line 27 "/Engine/Private/MobileBasePassCommon.ush"
struct FSharedMobileBasePassInterpolants {
  float4 PixelPosition : TEXCOORD8;
};
#line 7 "/Engine/Private/LocalVertexFactoryCommon.ush"
struct FVertexFactoryInterpolantsVSToPS {
  min16float4 TangentToWorld0 : TEXCOORD10;
  min16float4 TangentToWorld2 : TEXCOORD11;
  min16float4 Color : COLOR0;
  float4 TexCoords[1] : TEXCOORD0;
};
#line 69 "/Engine/Private/LocalVertexFactoryCommon.ush"
float2 GetUV(FVertexFactoryInterpolantsVSToPS Interpolants, int UVIndex) {
  float4 UVVector = Interpolants.TexCoords[UVIndex / 2];
  return UVIndex % 2 ? UVVector.zw : UVVector.xy;
}


#line 89 "/Engine/Private/LocalVertexFactoryCommon.ush"
float4 GetColor(FVertexFactoryInterpolantsVSToPS Interpolants) {
  return Interpolants.Color;
}


#line 135 "/Engine/Private/LocalVertexFactoryCommon.ush"
float4 GetTangentToWorld2(FVertexFactoryInterpolantsVSToPS Interpolants) {
  return Interpolants.TangentToWorld2;
}


#line 140 "/Engine/Private/LocalVertexFactoryCommon.ush"
float4 GetTangentToWorld0(FVertexFactoryInterpolantsVSToPS Interpolants) {
  return Interpolants.TangentToWorld0;
}


#line 154 "/Engine/Private/LocalVertexFactoryCommon.ush"
uint GetPrimitiveId(FVertexFactoryInterpolantsVSToPS Interpolants) {
  return 0;
}


#line 82 "/Engine/Private/LocalVertexFactory.ush"
struct FVertexFactoryInput {
  float4 Position : ATTRIBUTE0;
  min16float3 TangentX : ATTRIBUTE1;
  min16float4 TangentZ : ATTRIBUTE2;
  min16float4 Color : ATTRIBUTE3;
  float2 TexCoords0 : ATTRIBUTE4;
  uint VertexId : SV_VertexID;
};
#line 257 "/Engine/Private/LocalVertexFactory.ush"
struct FPositionOnlyVertexFactoryInput {
  float4 Position : ATTRIBUTE0;
};
#line 285 "/Engine/Private/LocalVertexFactory.ush"
struct FPositionAndNormalOnlyVertexFactoryInput {
  float4 Position : ATTRIBUTE0;
  float4 Normal : ATTRIBUTE2;
};
#line 314 "/Engine/Private/LocalVertexFactory.ush"
struct FVertexFactoryIntermediates {
  FSceneDataIntermediates SceneData;
  min16float3x3 TangentToLocal;
  min16float3x3 TangentToWorld;
  min16float TangentToWorldSign;
  min16float4 Color;
  float3 PreSkinPosition;
};
#line 465 "/Engine/Private/LocalVertexFactory.ush"
FMaterialPixelParameters GetMaterialPixelParameters(FVertexFactoryInterpolantsVSToPS Interpolants, float4 SvPosition) {
  FMaterialPixelParameters Result = MakeInitializedMaterialPixelParameters();
  [unroll]
  for (int CoordinateIndex = 0; CoordinateIndex < 1; CoordinateIndex++) {
    Result.TexCoords[CoordinateIndex] = GetUV(Interpolants, CoordinateIndex);
  }
  min16float3 TangentToWorld0 = GetTangentToWorld0(Interpolants).xyz;
  min16float4 TangentToWorld2 = GetTangentToWorld2(Interpolants);
  Result.UnMirrored = TangentToWorld2.w;
  Result.VertexColor = GetColor(Interpolants);
  Result.Particle.Color = min16float4(1, 1, 1, 1);
  Result.TangentToWorld = AssembleTangentToWorld(TangentToWorld0, TangentToWorld2);
  Result.TwoSidedSign = 1;
  Result.PrimitiveId = GetPrimitiveId(Interpolants);
  return Result;
}


#line 295 "/Engine/Private/LightmapCommon.ush"
min16float4 GetPrimaryPrecomputedShadowMask(float LightmapVTPageTableResult, FVertexFactoryInterpolantsVSToPS Interpolants, FMaterialPixelParameters MaterialParameters) {
  return 1.F;
}


#line 9 "/Engine/Private/BRDF.ush"
struct BxDFContext {
  min16float NoV;
  min16float NoL;
  min16float VoL;
  min16float NoH;
  min16float VoH;
  min16float XoV;
  min16float XoL;
  min16float XoH;
  min16float YoV;
  min16float YoL;
  min16float YoH;
};
#line 25 "/Engine/Private/BRDF.ush"
void Init(inout BxDFContext Context, min16float3 N, min16float3 V, min16float3 L) {
  Context.NoL = dot(N, L);
  Context.NoV = dot(N, V);
  Context.VoL = dot(V, L);
  float InvLenH = rsqrt(2 + 2 * Context.VoL);
  Context.NoH = saturate((Context.NoL + Context.NoV) * InvLenH);
  Context.VoH = saturate(InvLenH + InvLenH * Context.VoL);
  Context.XoV = 0.F;
  Context.XoL = 0.F;
  Context.XoH = 0.F;
  Context.YoV = 0.F;
  Context.YoL = 0.F;
  Context.YoH = 0.F;
}


#line 44 "/Engine/Private/BRDF.ush"
void Init(inout BxDFContext Context, min16float3 N, min16float3 X, min16float3 Y, min16float3 V, min16float3 L) {
  Context.NoL = dot(N, L);
  Context.NoV = dot(N, V);
  Context.VoL = dot(V, L);
  float InvLenH = rsqrt(2 + 2 * Context.VoL);
  Context.NoH = saturate((Context.NoL + Context.NoV) * InvLenH);
  Context.VoH = saturate(InvLenH + InvLenH * Context.VoL);
  Context.XoV = dot(X, V);
  Context.XoL = dot(X, L);
  Context.XoH = (Context.XoL + Context.XoV) * InvLenH;
  Context.YoV = dot(Y, V);
  Context.YoL = dot(Y, L);
  Context.YoH = (Context.YoL + Context.YoV) * InvLenH;
}


#line 63 "/Engine/Private/BRDF.ush"
void InitMobile(inout BxDFContext Context, min16float3 N, min16float3 V, min16float3 L, min16float NoL) {
  Context.NoL = NoL;
  Context.NoV = dot(N, V);
  Context.VoL = dot(V, L);
  float3 H = normalize(float3(V + L));
  Context.NoH = max(0, dot(N, H));
  Context.VoH = max(0, dot(V, H));
  Context.XoV = 0.F;
  Context.XoL = 0.F;
  Context.XoH = 0.F;
  Context.YoV = 0.F;
  Context.YoL = 0.F;
  Context.YoH = 0.F;
}


#line 84 "/Engine/Private/BRDF.ush"
void SphereMaxNoH(inout BxDFContext Context, float SinAlpha, bool bNewtonIteration) {
  if (SinAlpha > 0) {
    float CosAlpha = sqrt(1 - Pow2(SinAlpha));
    float RoL = 2 * Context.NoL * Context.NoV - Context.VoL;
    if (RoL >= CosAlpha) {
      Context.NoH = 1;
      Context.XoH = 0;
      Context.YoH = 0;
      Context.VoH = abs(Context.NoV);
    } else {
      float rInvLengthT = SinAlpha * rsqrt(1 - RoL * RoL);
      float NoTr = rInvLengthT * (Context.NoV - RoL * Context.NoL);
      float VoTr = rInvLengthT * (2 * Context.NoV * Context.NoV - 1 - RoL * Context.VoL);
      if (bNewtonIteration) {
        float NxLoV = sqrt(saturate(1 - Pow2(Context.NoL) - Pow2(Context.NoV) - Pow2(Context.VoL) + 2 * Context.NoL * Context.NoV * Context.VoL));
        float NoBr = rInvLengthT * NxLoV;
        float VoBr = rInvLengthT * NxLoV * 2 * Context.NoV;
        float NoLVTr = Context.NoL * CosAlpha + Context.NoV + NoTr;
        float VoLVTr = Context.VoL * CosAlpha + 1 + VoTr;
        float p = NoBr * VoLVTr;
        float q = NoLVTr * VoLVTr;
        float s = VoBr * NoLVTr;
        float xNum = q * (-0.5 * p + 0.25 * VoBr * NoLVTr);
        float xDenom = p * p + s * (s - 2 * p) + NoLVTr * ((Context.NoL * CosAlpha + Context.NoV) * Pow2(VoLVTr) + q * (-0.5 * (VoLVTr + Context.VoL * CosAlpha) - 0.5));
        float TwoX1 = 2 * xNum / (Pow2(xDenom) + Pow2(xNum));
        float SinTheta = TwoX1 * xDenom;
        float CosTheta = 1. - TwoX1 * xNum;
        NoTr = CosTheta * NoTr + SinTheta * NoBr;
        VoTr = CosTheta * VoTr + SinTheta * VoBr;
      }
      Context.NoL = Context.NoL * CosAlpha + NoTr;
      Context.VoL = Context.VoL * CosAlpha + VoTr;
      float InvLenH = rsqrt(2 + 2 * Context.VoL);
      Context.NoH = saturate((Context.NoL + Context.NoV) * InvLenH);
      Context.VoH = saturate(InvLenH + InvLenH * Context.VoL);
    }
  }
}


#line 278 "/Engine/Private/BRDF.ush"
min16float3 Diffuse_Lambert(min16float3 DiffuseColor) {
  return DiffuseColor * (1 / PI);
}


#line 385 "/Engine/Private/BRDF.ush"
float D_GGXaniso(float ax, float ay, float NoH, float XoH, float YoH) {
  float a2 = ax * ay;
  float3 V = float3(ay * XoH, ax * YoH, a2 * NoH);
  float S = dot(V, V);
  return (1.F / PI) * a2 * Square(a2 / S);
}


#line 439 "/Engine/Private/BRDF.ush"
float Vis_SmithJointApprox(float a2, float NoV, float NoL) {
  float a = sqrt(a2);
  float Vis_SmithV = NoL * (NoV * (1 - a) + a);
  float Vis_SmithL = NoV * (NoL * (1 - a) + a);
  return 0.5 * rcp(Vis_SmithV + Vis_SmithL);
}


#line 456 "/Engine/Private/BRDF.ush"
float Vis_SmithJointAniso(float ax, float ay, float NoV, float NoL, float XoV, float XoL, float YoV, float YoL) {
  float Vis_SmithV = NoL * length(float3(ax * XoV, ay * YoV, NoV));
  float Vis_SmithL = NoV * length(float3(ax * XoL, ay * YoL, NoL));
  return 0.5 * rcp(Vis_SmithV + Vis_SmithL);
}


#line 469 "/Engine/Private/BRDF.ush"
float3 F_Schlick(float3 SpecularColor, float VoH) {
  float Fc = Pow5(1 - VoH);
  return saturate(50. * SpecularColor.g) * Fc + (1 - Fc) * SpecularColor;
}


#line 528 "/Engine/Private/BRDF.ush"
void GetAnisotropicRoughness(float Alpha, float Anisotropy, out float ax, out float ay) {
  ax = max(Alpha * (1. + Anisotropy), 0.00100000005F);
  ay = max(Alpha * (1. - Anisotropy), 0.00100000005F);
}


#line 587 "/Engine/Private/BRDF.ush"
min16float2 EnvBRDFApproxLazarov(min16float Roughness, min16float NoV) {
  const min16float4 c0 = { -1, -0.0275, -0.57199999999999995, 0.021999999999999999 };
  const min16float4 c1 = { 1, 0.042500000000000003, 1.04, -0.040000000000000001 };
  min16float4 r = Roughness * c0 + c1;
  min16float a004 = min(r.x * r.x, exp2(-9.2799999999999994 * NoV)) * r.x + r.y;
  min16float2 AB = min16float2(-1.04, 1.04) * a004 + r.zw;
  return AB;
}


#line 599 "/Engine/Private/BRDF.ush"
min16float3 EnvBRDFApprox(min16float3 SpecularColor, min16float Roughness, min16float NoV) {
  min16float2 AB = EnvBRDFApproxLazarov(Roughness, NoV);
  float F90 = saturate(50. * SpecularColor.g);
  return SpecularColor * AB.x + F90 * AB.y;
}


#line 662 "/Engine/Private/BRDF.ush"
float D_InvGGX(float a2, float NoH) {
  float A = 4;
  float d = (NoH - a2 * NoH) * NoH + a2;
  return rcp(PI * (1 + A * a2)) * (1 + 4 * a2 * a2 / (d * d));
}


#line 669 "/Engine/Private/BRDF.ush"
float Vis_Cloth(float NoV, float NoL) {
  return rcp(4 * (NoL + NoV - NoL * NoV));
}


#line 710 "/Engine/Private/BRDF.ush"
float3 SimpleClearCoatTransmittance(float NoL, float NoV, float Metallic, float3 BaseColor) {
  float3 Transmittance = 1.;
  float ClearCoatCoverage = Metallic;
  if (ClearCoatCoverage > 0.) {
    float LayerThickness = 1.;
    float ThinDistance = LayerThickness * (rcp(NoV) + rcp(NoL));
    float3 TransmittanceColor = Diffuse_Lambert(BaseColor);
    float3 ExtinctionCoefficient = -log(max(TransmittanceColor, 1.0E-4)) / (2. * LayerThickness);
    float3 OpticalDepth = ExtinctionCoefficient * max(ThinDistance - 2. * LayerThickness, 0.);
    Transmittance = exp(-OpticalDepth);
    Transmittance = lerp(1., Transmittance, ClearCoatCoverage);
  }
  return Transmittance;
}


#line 22 "/Engine/Private/CapsuleLight.ush"
struct FCapsuleLight {
  float3 LightPos[2];
  float Length;
  float Radius;
  float SoftRadius;
  float DistBiasSqr;
};
#line 95 "/Engine/Private/CapsuleLight.ush"
float SphereHorizonCosWrap(float NoL, float SinAlphaSqr) {
  float SinAlpha = sqrt(SinAlphaSqr);
  if (NoL < SinAlpha) {
    NoL = max(NoL, -SinAlpha);
    NoL = Pow2(SinAlpha + NoL) / (4 * SinAlpha);
  }
  return NoL;
}


#line 23 "/Engine/Private/LightData.ush"
struct FRectTexture {
  min16float2 AtlasUVOffset;
  min16float2 AtlasUVScale;
  min16float AtlasMaxLevel;
};
#line 30 "/Engine/Private/LightData.ush"
FRectTexture InitRectTexture() {
  FRectTexture Out;
  Out.AtlasUVOffset = 0;
  Out.AtlasUVScale = 0;
  Out.AtlasMaxLevel = 32;
  return Out;
}


#line 39 "/Engine/Private/LightData.ush"
struct FRectLightData {
  float BarnCosAngle;
  float BarnLength;
  FRectTexture AtlasData;
};
#line 46 "/Engine/Private/LightData.ush"
FRectLightData UnpackRectLightData(uint In0, uint In1, uint In2) {
  FRectLightData Out;
  Out.AtlasData.AtlasUVOffset = min16float2(f16tof32(In0 & 65535), f16tof32(In0 >> 16));
  Out.AtlasData.AtlasUVScale = min16float2(f16tof32(In1 & 65535), f16tof32(In1 >> 16));
  Out.BarnLength = f16tof32(In2 & 65535);
  Out.BarnCosAngle = ((In2 >> 16) & 1023) / 1024.F;
  Out.AtlasData.AtlasMaxLevel = (In2 >> 26);
  return Out;
}


#line 60 "/Engine/Private/LightData.ush"
struct FDirectionalLightData {
  uint HasDirectionalLight;
  uint DirectionalLightShadowMapChannelMask;
  float2 DirectionalLightDistanceFadeMAD;
  float3 DirectionalLightColor;
  float3 DirectionalLightDirection;
  float DirectionalLightSourceRadius;
};
#line 72 "/Engine/Private/LightData.ush"
struct FLocalLightData {
  float4 LightPositionAndInvRadius;
  float4 LightColorAndFalloffExponent;
  float4 SpotAnglesAndIdAndSourceRadiusPacked;
  float4 LightDirectionAndShadowMask;
  float4 LightTangentAndIESDataAndSpecularScale;
  float4 RectDataAndVirtualShadowMapId;
  bool bClusteredDeferredSupported;
  bool bLumenLightSupported;
  bool bIsSimpleLight;
  int VirtualShadowMapId;
  int LightSceneId;
};
#line 98 "/Engine/Private/LightData.ush"
struct FSimpleDeferredLightData {
  float3 TranslatedWorldPosition;
  float InvRadius;
  float3 Color;
  float FalloffExponent;
  bool bInverseSquared;
};
#line 112 "/Engine/Private/LightData.ush"
struct FLightShaderParameters {
  float3 TranslatedWorldPosition;
  float InvRadius;
  float3 Color;
  float FalloffExponent;
  float3 Direction;
  float3 Tangent;
  float2 SpotAngles;
  float SpecularScale;
  float SourceRadius;
  float SoftSourceRadius;
  float SourceLength;
  float RectLightBarnCosAngle;
  float RectLightBarnLength;
  float2 RectLightAtlasUVOffset;
  float2 RectLightAtlasUVScale;
  float RectLightAtlasMaxLevel;
  float IESAtlasIndex;
};
#line 142 "/Engine/Private/LightData.ush"
struct FDeferredLightData {
  float3 TranslatedWorldPosition;
  min16float InvRadius;
  float3 Color;
  min16float FalloffExponent;
  float3 Direction;
  float3 Tangent;
  float SoftSourceRadius;
  min16float2 SpotAngles;
  float SourceRadius;
  float SourceLength;
  min16float SpecularScale;
  float ContactShadowLength;
  float ContactShadowCastingIntensity;
  float ContactShadowNonCastingIntensity;
  float2 DistanceFadeMAD;
  min16float4 ShadowMapChannelMask;
  bool ContactShadowLengthInWS;
  bool bInverseSquared;
  bool bRadialLight;
  bool bSpotLight;
  bool bRectLight;
  uint ShadowedBits;
  FRectLightData RectLightData;
  float IESAtlasIndex;
  FHairTransmittanceData HairTransmittance;
};
#line 187 "/Engine/Private/LightData.ush"
float4 UnpackShadowMapChannelMask(uint In) {
  return float4((In & 1), (In & 2) >> 1, (In & 4) >> 2, (In & 8) >> 3);
}


#line 193 "/Engine/Private/LightData.ush"
uint UnpackLightingChannelMask(uint In) {
  return (In >> 8) & 7;
}


#line 198 "/Engine/Private/LightData.ush"
uint UnpackLightingChannelMask(FLocalLightData In) {
  const uint LightTypeAndPackedShadowMapChannelMask = asuint(In.LightDirectionAndShadowMask.w);
  return UnpackLightingChannelMask(LightTypeAndPackedShadowMapChannelMask);
}


#line 204 "/Engine/Private/LightData.ush"
uint UnpackLightType(uint InShadowMapChannelMaskPacked) {
  return (InShadowMapChannelMaskPacked >> 16) & 3;
}


#line 219 "/Engine/Private/LightData.ush"
float UnpackLightSourceRadius(FLocalLightData In) {
  return f16tof32(asuint(In.SpotAnglesAndIdAndSourceRadiusPacked.z) & 65535);
}


#line 224 "/Engine/Private/LightData.ush"
float UnpackLightSoftSourceRadius(FLocalLightData In) {
  return f16tof32(asuint(In.SpotAnglesAndIdAndSourceRadiusPacked.z) >> 16);
}


#line 229 "/Engine/Private/LightData.ush"
float UnpackLightSourceLength(FLocalLightData In) {
  return f16tof32(asuint(In.SpotAnglesAndIdAndSourceRadiusPacked.w));
}


#line 239 "/Engine/Private/LightData.ush"
float2 GetLightSpotAngles(FLocalLightData In) {
  uint SpotAnglesPacked = asuint(In.SpotAnglesAndIdAndSourceRadiusPacked.x);
  float2 SpotAngles = float2(f16tof32(SpotAnglesPacked & 65535), f16tof32(SpotAnglesPacked >> 16));
  return SpotAngles;
}


#line 246 "/Engine/Private/LightData.ush"
float UnpackLightSpecularScale(FLocalLightData In) {
  return f16tof32(asuint(In.LightTangentAndIESDataAndSpecularScale.w) & 65535);
}


#line 251 "/Engine/Private/LightData.ush"
float UnpackLigthIESAtlasIndex(FLocalLightData In) {
  return f16tof32(asuint(In.LightTangentAndIESDataAndSpecularScale.w) >> 16);
}


#line 269 "/Engine/Private/LightData.ush"
FDeferredLightData ConvertToDeferredLight(const FLocalLightData In, float InSpecularScale, inout min16float4 OutPreviewShadowMapChannelMask, inout uint OutLightingChannelMask) {
  FDeferredLightData Out = (FDeferredLightData)0;
  const uint LightTypeAndPackedShadowMapChannelMask = asuint(In.LightDirectionAndShadowMask.w);
  const uint LightType = UnpackLightType(LightTypeAndPackedShadowMapChannelMask);
  Out.TranslatedWorldPosition = In.LightPositionAndInvRadius.xyz;
  Out.InvRadius = In.LightPositionAndInvRadius.w;
  Out.Color = In.LightColorAndFalloffExponent.xyz;
  Out.FalloffExponent = In.LightColorAndFalloffExponent.w;
  Out.Direction = In.LightDirectionAndShadowMask.xyz;
  Out.SpotAngles = GetLightSpotAngles(In);
  Out.SourceRadius = UnpackLightSourceRadius(In);
  Out.SourceLength = UnpackLightSourceLength(In);
  Out.Tangent = In.LightTangentAndIESDataAndSpecularScale.xyz;
  Out.SoftSourceRadius = UnpackLightSoftSourceRadius(In);
  Out.bInverseSquared = Out.FalloffExponent == 0;
  Out.SpecularScale = UnpackLightSpecularScale(In) * InSpecularScale;
  Out.bRadialLight = true;
  Out.bSpotLight = LightType == 2;
  Out.bRectLight = LightType == 3;
  Out.HairTransmittance = InitHairTransmittanceData();
  Out.RectLightData = UnpackRectLightData(asuint(In.RectDataAndVirtualShadowMapId.x), asuint(In.RectDataAndVirtualShadowMapId.y), asuint(In.RectDataAndVirtualShadowMapId.w));
  Out.IESAtlasIndex = UnpackLigthIESAtlasIndex(In);
  Out.ShadowedBits = (LightTypeAndPackedShadowMapChannelMask & 255) != 0 ? 1 : 0;
  Out.ShadowMapChannelMask = UnpackShadowMapChannelMask(LightTypeAndPackedShadowMapChannelMask);
  OutPreviewShadowMapChannelMask = UnpackShadowMapChannelMask(LightTypeAndPackedShadowMapChannelMask >> 4);
  OutLightingChannelMask = UnpackLightingChannelMask(LightTypeAndPackedShadowMapChannelMask);
  return Out;
}


#line 323 "/Engine/Private/LightData.ush"
FDeferredLightData ConvertToDeferredLight_Mobile(const FLocalLightData In) {
  min16float4 OutPreviewShadowMapChannelMask = 0;
  uint OutLightingChannelMask = 7;
  FDeferredLightData Out = ConvertToDeferredLight(In, 1.F, OutPreviewShadowMapChannelMask, OutLightingChannelMask);
  Out.SourceRadius = 0;
  Out.SourceLength = 0;
  Out.Tangent = 0;
  Out.SoftSourceRadius = 0;
  Out.SpecularScale = 1.F;
  Out.bSpotLight = Out.bSpotLight || Out.bRectLight;
  Out.bRectLight = false;
  return Out;
}


#line 441 "/Engine/Private/LightData.ush"
bool IsLightVisible(FLocalLightData InLight, float3 TranslatedWorldPosition) {
  float InvLightRadiusSq = InLight.LightPositionAndInvRadius.w * InLight.LightPositionAndInvRadius.w;
  return length2(TranslatedWorldPosition - InLight.LightPositionAndInvRadius.xyz) * InvLightRadiusSq <= 1.F;
}


#line 14 "/Engine/Private/RectLight.ush"
struct FRect {
  float3 Origin;
  float3x3 Axis;
  float2 Extent;
  float2 FullExtent;
  float2 Offset;
};
#line 23 "/Engine/Private/RectLight.ush"
float3 SampleRectTexture(FRectTexture RectTexture, float2 RectUV, float Level, bool bIsReference = false) {
  const bool bIsValid = RectTexture.AtlasMaxLevel < 32;
  const float2 RectTextureSize = RectTexture.AtlasUVScale * View_RectLightAtlasSizeAndInvSize.xy;
  Level += log2(min(RectTextureSize.x, RectTextureSize.y)) - 2.F;
  Level = min(Level, RectTexture.AtlasMaxLevel);
  RectUV = saturate(RectUV) * RectTexture.AtlasUVScale + RectTexture.AtlasUVOffset;
  return bIsValid ? View_RectLightAtlasTexture.SampleLevel(View_SharedTrilinearClampedSampler, RectUV, bIsReference ? 0 : Level).rgb : 1.F;
}


#line 278 "/Engine/Private/RectLight.ush"
float3 SampleSourceTexture(float3 L, FRect Rect, FRectTexture RectTexture) {
  L += Rect.Axis[2] * saturate(0.001 - dot(Rect.Axis[2], L));
  float DistToPlane = dot(Rect.Axis[2], Rect.Origin) / dot(Rect.Axis[2], L);
  float3 PointOnPlane = L * DistToPlane;
  float2 PointInRect;
  PointInRect.x = dot(Rect.Axis[0], PointOnPlane - Rect.Origin);
  PointInRect.y = dot(Rect.Axis[1], PointOnPlane - Rect.Origin);
  float2 RectUV = (PointInRect + Rect.Offset) / max(9.99999974E-5F, Rect.FullExtent) * float2(0.5, -0.5) + 0.5;
  float Level = log2(DistToPlane * rsqrt(max(9.99999974E-5F, Rect.FullExtent.x * Rect.FullExtent.y)));
  return SampleRectTexture(RectTexture, RectUV, Level);
}


#line 303 "/Engine/Private/RectLight.ush"
float IntegrateEdge(float3 L0, float3 L1) {
  float c01 = dot(L0, L1);
  float w01 = (0.85439849999999995 + (0.4965155 + 0.0145206 * abs(c01)) * abs(c01)) / (3.4175939999999998 + (4.1616723999999996 + abs(c01)) * abs(c01));
  w01 = c01 > 0 ? w01 : 0.5 * rsqrt(1 - c01 * c01) - w01;
  return w01;
}


#line 328 "/Engine/Private/RectLight.ush"
float3 PolygonIrradiance(float3 Poly[4]) {
  float3 L0 = normalize(Poly[0]);
  float3 L1 = normalize(Poly[1]);
  float3 L2 = normalize(Poly[2]);
  float3 L3 = normalize(Poly[3]);
  float w01 = IntegrateEdge(L0, L1);
  float w12 = IntegrateEdge(L1, L2);
  float w23 = IntegrateEdge(L2, L3);
  float w30 = IntegrateEdge(L3, L0);
  float3 L;
  L = cross(L1, -w01 * L0 + w12 * L2);
  L += cross(L3, w30 * L0 + -w23 * L2);
  return L;
}


#line 366 "/Engine/Private/RectLight.ush"
float3 RectGGXApproxLTC(float Roughness, float3 SpecularColor, min16float3 N, float3 V, FRect Rect, FRectTexture RectTexture) {
  const float3 F0 = SpecularColor;
  const float3 F90 = saturate(50. * SpecularColor);
  if (Rect.Extent.x == 0 || Rect.Extent.y == 0)
    return 0;
  float NoV = saturate(abs(dot(N, V)) + 1.0000000000000001E-5);
  float2 UV = float2(Roughness, sqrt(1 - NoV));
  UV = UV * (63. / 64.) + (0.5 / 64.);
  float4 LTCMat = View_LTCMatTexture.SampleLevel(View_LTCMatSampler, UV, 0);
  float4 LTCAmp = View_LTCAmpTexture.SampleLevel(View_LTCAmpSampler, UV, 0);
  float3x3 LTC = { float3(LTCMat.x, 0, LTCMat.z), float3(0, 1, 0), float3(LTCMat.y, 0, LTCMat.w) };
  float LTCDet = LTCMat.x * LTCMat.w - LTCMat.y * LTCMat.z;
  float4 InvLTCMat = LTCMat / LTCDet;
  float3x3 InvLTC = { float3(InvLTCMat.w, 0, -InvLTCMat.z), float3(0, 1, 0), float3(-InvLTCMat.y, 0, InvLTCMat.x) };
  float3 T1 = normalize(V - N * dot(N, V));
  float3 T2 = cross(N, T1);
  float3x3 TangentBasis = float3x3(T1, T2, N);
  LTC = mul(LTC, TangentBasis);
  InvLTC = mul(transpose(TangentBasis), InvLTC);
  float3 Poly[4];
  Poly[0] = mul(LTC, Rect.Origin - Rect.Axis[0] * Rect.Extent.x - Rect.Axis[1] * Rect.Extent.y);
  Poly[1] = mul(LTC, Rect.Origin + Rect.Axis[0] * Rect.Extent.x - Rect.Axis[1] * Rect.Extent.y);
  Poly[2] = mul(LTC, Rect.Origin + Rect.Axis[0] * Rect.Extent.x + Rect.Axis[1] * Rect.Extent.y);
  Poly[3] = mul(LTC, Rect.Origin - Rect.Axis[0] * Rect.Extent.x + Rect.Axis[1] * Rect.Extent.y);
  float3 L = PolygonIrradiance(Poly);
  float LengthSqr = dot(L, L);
  float InvLength = rsqrt(LengthSqr);
  float Length = LengthSqr * InvLength;
  L *= InvLength;
  float SinAlphaSqr = Length;
  float NoL = SphereHorizonCosWrap(L.z, SinAlphaSqr);
  float Irradiance = SinAlphaSqr * NoL;
  Irradiance = -min(-Irradiance, 0.);
  float3 IrradianceScale = F90 * LTCAmp.y + (LTCAmp.x - LTCAmp.y) * F0;
  L = mul(InvLTC, L);
  float3 LightColor = SampleSourceTexture(L, Rect, RectTexture);
  return LightColor * Irradiance * IrradianceScale;
}


#line 455 "/Engine/Private/RectLight.ush"
struct FSphericalRect {
  float3x3 Axis;
  float x0;
  float x1;
  float y0;
  float y1;
  float z0;
  float b0;
  float b1;
  float k;
  float SolidAngle;
};
#line 515 "/Engine/Private/RectLight.ush"
struct FSphericalRectSample {
  float3 Direction;
  float2 UV;
};
#line 7 "/Engine/Private/AreaLightCommon.ush"
struct FAreaLight {
  float SphereSinAlpha;
  float SphereSinAlphaSoft;
  float LineCosSubtended;
  float3 FalloffColor;
  FRect Rect;
  FRectTexture Texture;
  uint IsRectAndDiffuseMicroReflWeight;
};
#line 21 "/Engine/Private/AreaLightCommon.ush"
struct FAreaLightIntegrateContext {
  FAreaLight AreaLight;
  float3 L;
  float NoL;
  float Falloff;
};
#line 34 "/Engine/Private/AreaLightCommon.ush"
bool IsRectLight(FAreaLight AreaLight) {
  return (AreaLight.IsRectAndDiffuseMicroReflWeight & 1) == 1;
}


#line 59 "/Engine/Private/SubsurfaceProfileCommon.ush"
min16float4 GetSubsurfaceProfileTexture(uint SampleIndex, uint SubsurfaceProfileInt) {
  return View_SSProfilesTexture.SampleLevel(View_SSProfilesSampler, (uint2(SampleIndex, SubsurfaceProfileInt) + float2(0.5F, 0.5F)) * View_SSProfilesTextureSizeAndInvSize.zw, 0);
}


#line 221 "/Engine/Private/BurleyNormalizedSSSCommon.ush"
struct FBurleyParameter {
  float4 SurfaceAlbedo;
  float4 DiffuseMeanFreePath;
  float WorldUnitScale;
  float SurfaceOpacity;
};
#line 12 "/Engine/Private/TransmissionCommon.ush"
struct FTransmissionProfileParams {
  float ExtinctionScale;
  float NormalScale;
  float ScatteringDistribution;
  float OneOverIOR;
};
#line 71 "/Engine/Private/TransmissionCommon.ush"
float4 GetSubSurfaceTransmission(float4 OccluderDistance, float SubsurfaceDensity) {
  return saturate(FastExp(-OccluderDistance * SubsurfaceDensity));
}


#line 10 "/Engine/Private/HairBsdf.ush"
float Hair_g(float B, float Theta) {
  return exp(-0.5 * Pow2(Theta) / (B * B)) / (sqrt(2 * PI) * B);
}


#line 15 "/Engine/Private/HairBsdf.ush"
float Hair_F(float CosTheta) {
  const float n = 1.55;
  const float F0 = Pow2((1 - n) / (1 + n));
  return F0 + (1 - F0) * Pow5(1 - CosTheta);
}


#line 22 "/Engine/Private/HairBsdf.ush"
float3 KajiyaKayDiffuseAttenuation(FGBufferData GBuffer, float3 L, float3 V, min16float3 N, float Shadow) {
  float KajiyaDiffuse = 1 - abs(dot(N, L));
  float3 FakeNormal = normalize(V - N * dot(V, N));
  N = FakeNormal;
  float MinValue = 9.99999974E-5F;
  float Wrap = 1;
  float NoL = saturate((dot(N, L) + Wrap) / Square(1 + Wrap));
  float DiffuseScatter = (1 / PI) * lerp(NoL, KajiyaDiffuse, 0.33000000000000002) * GBuffer.Metallic;
  float Luma = Luminance(GBuffer.BaseColor);
  float3 ScatterTint = pow(abs(GBuffer.BaseColor / max(Luma, MinValue)), 1 - Shadow);
  return sqrt(abs(GBuffer.BaseColor)) * DiffuseScatter * ScatterTint;
}


#line 41 "/Engine/Private/HairBsdf.ush"
float3 EvaluateHairMultipleScattering(const FHairTransmittanceData TransmittanceData, const float Roughness, const float3 Fs) {
  return TransmittanceData.GlobalScattering * (Fs + TransmittanceData.LocalScattering) * TransmittanceData.OpaqueVisibility;
}


#line 272 "/Engine/Private/HairBsdf.ush"
float3 HairShading(FGBufferData GBuffer, float3 L, float3 V, min16float3 N, float Shadow, FHairTransmittanceData HairTransmittance, float InBacklit, float Area, uint2 Random) {
  float ClampedRoughness = clamp(GBuffer.Roughness, 1 / 255.F, 1.F);
  const float Backlit = min(InBacklit, HairTransmittance.bUseBacklit ? GBuffer.CustomData.z : 1);
  const float VoL = dot(V, L);
  const float SinThetaL = clamp(dot(N, L), -1.F, 1.F);
  const float SinThetaV = clamp(dot(N, V), -1.F, 1.F);
  float CosThetaD = cos(0.5 * abs(asinFast(SinThetaV) - asinFast(SinThetaL)));
  const float3 Lp = L - SinThetaL * N;
  const float3 Vp = V - SinThetaV * N;
  const float CosPhi = dot(Lp, Vp) * rsqrt(dot(Lp, Lp) * dot(Vp, Vp) + 1.0E-4);
  const float CosHalfPhi = sqrt(saturate(0.5 + 0.5 * CosPhi));
  float n = 1.55;
  float n_prime = 1.1899999999999999 / CosThetaD + 0.35999999999999999 * CosThetaD;
  float Shift = 0.035000000000000003;
  float Alpha[] = { -Shift * 2, Shift, Shift * 4 };
  float B[] = { Area + Pow2(ClampedRoughness), Area + Pow2(ClampedRoughness) / 2, Area + Pow2(ClampedRoughness) * 2 };
  float3 S = 0;
  if (HairTransmittance.ScatteringComponent & 1U) {
    const float sa = sin(Alpha[0]);
    const float ca = cos(Alpha[0]);
    float ShiftR = 2 * sa * (ca * CosHalfPhi * sqrt(1 - SinThetaV * SinThetaV) + sa * SinThetaV);
    float BScale = HairTransmittance.bUseSeparableR ? sqrt(2.) * CosHalfPhi : 1;
    float Mp = Hair_g(B[0] * BScale, SinThetaL + SinThetaV - ShiftR);
    float Np = 0.25 * CosHalfPhi;
    float Fp = Hair_F(sqrt(saturate(0.5 + 0.5 * VoL)));
    S += Mp * Np * Fp * (GBuffer.Specular * 2) * lerp(1, Backlit, saturate(-VoL));
  }
  if (HairTransmittance.ScatteringComponent & 2U) {
    float Mp = Hair_g(B[1], SinThetaL + SinThetaV - Alpha[1]);
    float a = 1 / n_prime;
    float h = CosHalfPhi * (1 + a * (0.59999999999999998 - 0.80000000000000004 * CosPhi));
    float f = Hair_F(CosThetaD * sqrt(saturate(1 - h * h)));
    float Fp = Pow2(1 - f);
    float3 Tp = 0;
    if (HairTransmittance.bUseLegacyAbsorption) {
      Tp = pow(abs(GBuffer.BaseColor), 0.5 * sqrt(1 - Pow2(h * a)) / CosThetaD);
    } else {
      const float3 AbsorptionColor = HairColorToAbsorption(GBuffer.BaseColor);
      Tp = exp(-AbsorptionColor * 2 * abs(1 - Pow2(h * a) / CosThetaD));
    }
    float Np = exp(-3.6499999999999999 * CosPhi - 3.98);
    S += Mp * Np * Fp * Tp * Backlit;
  }
  if (HairTransmittance.ScatteringComponent & 4U) {
    float Mp = Hair_g(B[2], SinThetaL + SinThetaV - Alpha[2]);
    float f = Hair_F(CosThetaD * 0.5);
    float Fp = Pow2(1 - f) * f;
    float3 Tp = pow(abs(GBuffer.BaseColor), 0.80000000000000004 / CosThetaD);
    float Np = exp(17 * CosPhi - 16.780000000000001);
    S += Mp * Np * Fp * Tp;
  }
  if (HairTransmittance.ScatteringComponent & 32U) {
    S = EvaluateHairMultipleScattering(HairTransmittance, ClampedRoughness, S);
    S += KajiyaKayDiffuseAttenuation(GBuffer, L, V, N, Shadow);
  }
  S = -min(-S, 0.);
  return S;
}


#line 18 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
float3 GetF0F90RGB(float3 InF0) {
  return InF0;
}


#line 27 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
struct FBxDFEnergyTermsRGB {
  float3 W;
  float3 E;
};
#line 55 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
FBxDFEnergyTermsRGB ComputeGGXSpecEnergyTermsRGB(float Roughness, float NoV, float3 F0, float3 F90) {
  FBxDFEnergyTermsRGB Out;
  {
    Out.W = 1.F;
    Out.E = GetF0F90RGB(F0);
  }
  return Out;
}


#line 71 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
FBxDFEnergyTermsRGB ComputeGGXSpecEnergyTermsRGB(float Roughness, float NoV, float3 F0) {
  const float F90 = saturate(50. * F0.g);
  return ComputeGGXSpecEnergyTermsRGB(Roughness, NoV, F0, F90);
}


#line 115 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
float ComputeEnergyPreservation(FBxDFEnergyTermsRGB EnergyTerms) {
  return 1.F;
}


#line 129 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
float3 ComputeEnergyConservation(FBxDFEnergyTermsRGB EnergyTerms) {
  return EnergyTerms.W;
}


#line 27 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
struct FBxDFEnergyTermsA {
  float W;
  float E;
};
#line 77 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
FBxDFEnergyTermsA ComputeClothEnergyTermsA(float Roughness, float NoV) {
  FBxDFEnergyTermsA Out;
  {
    Out.W = 1.F;
    Out.E = 1.F;
  }
  return Out;
}


#line 115 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
float ComputeEnergyPreservation(FBxDFEnergyTermsA EnergyTerms) {
  return 1.F;
}


#line 129 "/Engine/Private/ShadingEnergyConservationTemplate.ush"
float ComputeEnergyConservation(FBxDFEnergyTermsA EnergyTerms) {
  return EnergyTerms.W;
}


#line 19 "/Engine/Private/ParticipatingMediaCommon.ush"
struct FParticipatingMedia {
  float3 ScatteringCoef;
  float3 AbsorptionCoef;
  float3 ExtinctionCoef;
  float3 MeanFreePath;
  float3 Albedo;
  float3 BaseColor;
};
#line 163 "/Engine/Private/ParticipatingMediaCommon.ush"
float3 TransmittanceToExtinction(in float3 TransmittanceColor, in float ThicknessMeters) {
  return -log(clamp(TransmittanceColor, 9.99999996E-13F, 1.F)) / max(9.99999996E-13F, ThicknessMeters);
}


#line 175 "/Engine/Private/ParticipatingMediaCommon.ush"
float3 ExtinctionToTransmittance(in float3 Extinction, in float ThicknessMeters) {
  return exp(-Extinction * ThicknessMeters);
}


#line 11 "/Engine/Private/ColorSpace.ush"
static const float3x3 sRGB_2_LMS_MAT = { 17.882400000000001, 43.516100000000002, 4.1193, 3.4557000000000002, 27.1554, 3.8671000000000002, 0.029960000000000001, 0.18431, 1.4670000000000001 };
#line 18 "/Engine/Private/ColorSpace.ush"
static const float3x3 LMS_2_sRGB_MAT = { 0.080899999999999999, -0.1305, 0.1167, -0.010200000000000001, 0.053999999999999999, -0.11360000000000001, -2.9999999999999997E-4, -0.0041000000000000003, 0.69350000000000001 };
#line 40 "/Engine/Private/ColorSpace.ush"
static const float3x3 XYZ_2_LinearRGB_MAT = { 3.2409699419, -1.5373831776, -0.49861076030000001, -0.96924363629999998, 1.8759675014999999, 0.041555057399999998, 0.055630079700000001, -0.2039769589, 1.0569715142 };
#line 47 "/Engine/Private/ColorSpace.ush"
static const float3x3 LinearRGB_2_XYZ_MAT = { 0.4124564, 0.35757610000000001, 0.1804375, 0.2126729, 0.71515220000000002, 0.072175000000000003, 0.019333900000000001, 0.11919200000000001, 0.95030409999999998 };
#line 75 "/Engine/Private/ColorSpace.ush"
static const float3 XYZ_WHITE_REF_D65 = float3(95.046999999999997, 100., 108.883);
#line 76 "/Engine/Private/ColorSpace.ush"
static const float3 XYZ_WHITE_REF_D50 = float3(96.679699999999996, 100., 82.518799999999999);
#line 77 "/Engine/Private/ColorSpace.ush"
static const float3 XYZ_WHITE_REF_D65_NOMINAL = float3(0.95047000000000004, 1., 1.08883);
#line 78 "/Engine/Private/ColorSpace.ush"
static const float3 XYZ_WHITE_REF_D50_NOMINAL = float3(0.96679700000000001, 1., 0.82518800000000003);
#line 79 "/Engine/Private/ColorSpace.ush"
static const float XYZ_2_LAB_DELTA_SQUARED = 0.04280618311;
#line 80 "/Engine/Private/ColorSpace.ush"
static const float XYZ_2_LAB_DELTA_CUBED = 0.0088564516699999994;
#line 220 "/Engine/Private/ColorSpace.ush"
float3 HUE_2_LinearRGB(in float H) {
  float R = abs(H * 6 - 3) - 1;
  float G = 2 - abs(H * 6 - 2);
  float B = 2 - abs(H * 6 - 4);
  return saturate(float3(R, G, B));
}


#line 228 "/Engine/Private/ColorSpace.ush"
float3 HSV_2_LinearRGB(in float3 HSV) {
  float3 RGB = HUE_2_LinearRGB(HSV.x);
  return ((RGB - 1) * HSV.y + 1) * HSV.z;
}


#line 234 "/Engine/Private/ColorSpace.ush"
float3 RGB_2_HCV(in float3 RGB) {
  float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.F, 2.F / 3.F) : float4(RGB.gb, 0.F, -1.F / 3.F);
  float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
  float Chroma = Q.x - min(Q.w, Q.y);
  float Hue = abs((Q.w - Q.y) / (6.F * Chroma + 1.00000001E-10F) + Q.z);
  return float3(Hue, Chroma, Q.x);
}


#line 244 "/Engine/Private/ColorSpace.ush"
float3 LinearRGB_2_HSV(in float3 RGB) {
  float3 HCV = RGB_2_HCV(RGB);
  float s = HCV.y / (HCV.z + 1.00000001E-10F);
  return float3(HCV.x, s, HCV.z);
}


#line 25 "/Engine/Private/MobileGGX.ush"
min16float D_GGX_Mobile(min16float Roughness, float NoH) {
  float OneMinusNoHSqr = 1. - NoH * NoH;
  min16float a = Roughness * Roughness;
  min16float n = NoH * a;
  min16float p = a / (OneMinusNoHSqr + n * n);
  min16float d = (1. / PI) * p * p;
  return min(d, 2048.);
}


#line 56 "/Engine/Private/ShadingModels.ush"
min16float4 GetSSProfilePreIntegratedValue(uint SubsurfaceProfileInt, min16float NoL, min16float Curvature) {
  float3 UV = float3((NoL * 0.5 + 0.5), Curvature, SubsurfaceProfileInt);
  return Texture2DArraySampleLevel(View_SSProfilesPreIntegratedTexture, View_SSProfilesPreIntegratedSampler, UV, 0);
}


#line 63 "/Engine/Private/ShadingModels.ush"
min16float3 GetEnvBRDF(min16float3 SpecularColor, min16float Roughness, min16float NoV) {
  return EnvBRDFApprox(SpecularColor, Roughness, NoV);
}


#line 79 "/Engine/Private/ShadingModels.ush"
min16float3 MobileSpecularGGXInner(min16float D, min16float3 SpecularColor, min16float Roughness, min16float NoV, min16float NoL, min16float VoH, bool bHighQualityBRDF) {
  min16float Vis = (Roughness * 0.25 + 0.25);
  min16float3 F = GetEnvBRDF(SpecularColor, Roughness, NoV);
  if (bHighQualityBRDF) {
    Vis = saturate(Vis_SmithJointApprox(Roughness * Roughness * Roughness * Roughness, NoV, NoL));
    F = F_Schlick(SpecularColor, VoH);
  }
  return (D * Vis) * F;
}


#line 131 "/Engine/Private/ShadingModels.ush"
struct FDirectLighting {
  float3 Diffuse;
  float3 Specular;
  float3 Transmission;
};
#line 138 "/Engine/Private/ShadingModels.ush"
struct FShadowTerms {
  min16float SurfaceShadow;
  min16float TransmissionShadow;
  min16float TransmissionThickness;
  FHairTransmittanceData HairTransmittance;
};
#line 145 "/Engine/Private/ShadingModels.ush"
FDirectLighting HairBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  const float3 BsdfValue = HairShading(GBuffer, L, V, N, Shadow.TransmissionShadow, Shadow.HairTransmittance, 1, 0, uint2(0, 0));
  FDirectLighting Lighting;
  Lighting.Diffuse = 0;
  Lighting.Specular = 0;
  Lighting.Transmission = AreaLight.FalloffColor * Falloff * BsdfValue;
  return Lighting;
}


#line 156 "/Engine/Private/ShadingModels.ush"
float New_a2(float a2, float SinAlpha, float VoH) {
  return a2 + 0.25 * SinAlpha * (3. * sqrtFast(a2) + SinAlpha) / (VoH + 0.001);
}


#line 163 "/Engine/Private/ShadingModels.ush"
float EnergyNormalization(inout float a2, float VoH, FAreaLight AreaLight) {
  if (AreaLight.SphereSinAlphaSoft > 0) {
    a2 = saturate(a2 + Pow2(AreaLight.SphereSinAlphaSoft) / (VoH * 3.6000000000000001 + 0.40000000000000002));
  }
  float Sphere_a2 = a2;
  float Energy = 1;
  if (AreaLight.SphereSinAlpha > 0) {
    Sphere_a2 = New_a2(a2, AreaLight.SphereSinAlpha, VoH);
    Energy = a2 / Sphere_a2;
  }
  if (AreaLight.LineCosSubtended < 1) {
    float LineCosTwoAlpha = AreaLight.LineCosSubtended;
    float LineTanAlpha = sqrt((1.0001 - LineCosTwoAlpha) / (1 + LineCosTwoAlpha));
    float Line_a2 = New_a2(Sphere_a2, LineTanAlpha, VoH);
    Energy *= sqrt(Sphere_a2 / Line_a2);
  }
  return Energy;
}


#line 197 "/Engine/Private/ShadingModels.ush"
float3 SpecularGGX(float Roughness, float Anisotropy, float3 SpecularColor, BxDFContext Context, float NoL, FAreaLight AreaLight) {
  float Alpha = Roughness * Roughness;
  float a2 = Alpha * Alpha;
  FAreaLight Punctual = AreaLight;
  Punctual.SphereSinAlpha = 0;
  Punctual.SphereSinAlphaSoft = 0;
  Punctual.LineCosSubtended = 1;
  Punctual.Rect = (FRect)0;
  Punctual.IsRectAndDiffuseMicroReflWeight = 0;
  float Energy = EnergyNormalization(a2, Context.VoH, Punctual);
  float ax = 0;
  float ay = 0;
  GetAnisotropicRoughness(Alpha, Anisotropy, ax, ay);
  float3 D = D_GGXaniso(ax, ay, Context.NoH, Context.XoH, Context.YoH) * Energy;
  float3 Vis = Vis_SmithJointAniso(ax, ay, Context.NoV, NoL, Context.XoV, Context.XoL, Context.YoV, Context.YoL);
  float3 F = F_Schlick(SpecularColor, Context.VoH);
  return (D * Vis) * F;
}


#line 223 "/Engine/Private/ShadingModels.ush"
float3 SpecularGGX(float Roughness, float3 SpecularColor, BxDFContext Context, min16float NoL, FAreaLight AreaLight) {
  float a2 = Pow4(Roughness);
  float Energy = EnergyNormalization(a2, Context.VoH, AreaLight);
  min16float D = D_GGX_Mobile(Roughness, Context.NoH) * Energy;
  return MobileSpecularGGXInner(D, SpecularColor, Roughness, Context.NoV, NoL, Context.VoH, 0);
}


#line 241 "/Engine/Private/ShadingModels.ush"
min16float3 DualSpecularGGX(min16float AverageRoughness, min16float Lobe0Roughness, min16float Lobe1Roughness, min16float LobeMix, min16float3 SpecularColor, BxDFContext Context, min16float NoL, FAreaLight AreaLight) {
  float AverageAlpha2 = Pow4(AverageRoughness);
  float Lobe0Alpha2 = Pow4(Lobe0Roughness);
  float Lobe1Alpha2 = Pow4(Lobe1Roughness);
  float Lobe0Energy = EnergyNormalization(Lobe0Alpha2, Context.VoH, AreaLight);
  float Lobe1Energy = EnergyNormalization(Lobe1Alpha2, Context.VoH, AreaLight);
  min16float D = lerp(D_GGX_Mobile(Lobe0Roughness, Context.NoH) * Lobe0Energy, D_GGX_Mobile(Lobe1Roughness, Context.NoH) * Lobe1Energy, LobeMix);
  return MobileSpecularGGXInner(D, SpecularColor, AverageRoughness, Context.NoV, NoL, Context.VoH, 0);
}


#line 264 "/Engine/Private/ShadingModels.ush"
FDirectLighting DefaultLitBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  BxDFContext Context;
  FDirectLighting Lighting;
  bool bHasAnisotropy = false;
  float NoV, VoH, NoH;
  [branch]
  if (bHasAnisotropy) {
    min16float3 X = GBuffer.WorldTangent;
    min16float3 Y = normalize(cross(N, X));
    Init(Context, N, X, Y, V, L);
    NoV = Context.NoV;
    VoH = Context.VoH;
    NoH = Context.NoH;
  } else {
    InitMobile(Context, N, V, L, NoL);
    NoV = Context.NoV;
    VoH = Context.VoH;
    NoH = Context.NoH;
    SphereMaxNoH(Context, AreaLight.SphereSinAlpha, true);
  }
  Context.NoV = saturate(abs(Context.NoV) + 1.0000000000000001E-5);
  Lighting.Diffuse = Diffuse_Lambert(GBuffer.DiffuseColor);
  Lighting.Diffuse *= AreaLight.FalloffColor * (Falloff * NoL);
  [branch]
  if (bHasAnisotropy) {
    Lighting.Specular = AreaLight.FalloffColor * (Falloff * NoL) * SpecularGGX(GBuffer.Roughness, GBuffer.Anisotropy, GBuffer.SpecularColor, Context, NoL, AreaLight);
  } else {
    if (IsRectLight(AreaLight)) {
      Lighting.Specular = RectGGXApproxLTC(GBuffer.Roughness, GBuffer.SpecularColor, N, V, AreaLight.Rect, AreaLight.Texture);
    } else {
      Lighting.Specular = AreaLight.FalloffColor * (Falloff * NoL) * SpecularGGX(GBuffer.Roughness, GBuffer.SpecularColor, Context, NoL, AreaLight);
    }
  }
  FBxDFEnergyTermsRGB EnergyTerms = ComputeGGXSpecEnergyTermsRGB(GBuffer.Roughness, Context.NoV, GBuffer.SpecularColor);
  Lighting.Diffuse *= ComputeEnergyPreservation(EnergyTerms);
  Lighting.Specular *= ComputeEnergyConservation(EnergyTerms);
  Lighting.Transmission = 0;
  return Lighting;
}


#line 369 "/Engine/Private/ShadingModels.ush"
min16float RefractBlendClearCoatApprox(min16float VoH) {
  return (0.63 - 0.22 * VoH) * VoH - 0.745;
}


#line 382 "/Engine/Private/ShadingModels.ush"
BxDFContext RefractClearCoatContext(BxDFContext Context) {
  BxDFContext RefractedContext = Context;
  min16float Eta = 1. / 1.5;
  min16float RefractionBlendFactor = RefractBlendClearCoatApprox(Context.VoH);
  min16float RefractionProjectionTerm = RefractionBlendFactor * Context.NoH;
  RefractedContext.NoV = clamp(Eta * Context.NoV - RefractionProjectionTerm, 0.001, 1.);
  RefractedContext.NoL = clamp(Eta * Context.NoL - RefractionProjectionTerm, 0.001, 1.);
  RefractedContext.VoH = saturate(Eta * Context.VoH - RefractionBlendFactor);
  RefractedContext.VoL = 2. * RefractedContext.VoH * RefractedContext.VoH - 1.;
  RefractedContext.NoH = Context.NoH;
  return RefractedContext;
}


#line 404 "/Engine/Private/ShadingModels.ush"
FDirectLighting ClearCoatBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  const min16float ClearCoat = GBuffer.CustomData.x;
  const min16float ClearCoatRoughness = max(GBuffer.CustomData.y, 0.0199999996F);
  FDirectLighting Lighting = { float3(0., 0., 0.), float3(0., 0., 0.), float3(0., 0., 0.) };
  BxDFContext Context;
  min16float3 Nspec = N;
  if (0) {
    Nspec = GBuffer.WorldNormal;
  }
  bool bHasAnisotropy = false;
  min16float3 X = 0;
  min16float3 Y = 0;
  Init(Context, Nspec, V, L);
  float SphereSinAlpha = AreaLight.SphereSinAlpha;
  float RoughnessCompensation = 1 - Pow2(GBuffer.Roughness);
  min16float Alpha = ClearCoatRoughness * ClearCoatRoughness;
  RoughnessCompensation = RoughnessCompensation > 0. ? (1 - Alpha) / RoughnessCompensation : 0.;
  AreaLight.SphereSinAlpha = saturate(AreaLight.SphereSinAlpha * RoughnessCompensation);
  SphereMaxNoH(Context, AreaLight.SphereSinAlpha, 0 == 0);
  Context.NoV = saturate(abs(Context.NoV) + 1.0000000000000001E-5);
  const bool bIsRect = IsRectLight(AreaLight);
  Context.VoH = bIsRect ? Context.NoV : Context.VoH;
  float F0 = 0.040000000000000001;
  float Fc = Pow5(1 - Context.VoH);
  float F = Fc + (1 - Fc) * F0;
  FBxDFEnergyTermsRGB EnergyTermsCoat = ComputeGGXSpecEnergyTermsRGB(ClearCoatRoughness, Context.NoV, F0);
  if (bIsRect) {
    Lighting.Specular = ClearCoat * RectGGXApproxLTC(ClearCoatRoughness, F0, Nspec, V, AreaLight.Rect, AreaLight.Texture);
  } else {
    float a2 = Pow2(Alpha);
    float ClearCoatEnergy = EnergyNormalization(a2, Context.VoH, AreaLight);
    min16float Vis = Vis_SmithJointApprox(a2, Context.NoV, NoL);
    min16float D = D_GGX_Mobile(ClearCoatRoughness, Context.NoH) * ClearCoatEnergy;
    Vis = saturate(Vis);
    min16float Fr1 = (D * Vis) * F;
    Lighting.Specular = ClearCoat * AreaLight.FalloffColor * (Falloff * NoL * Fr1);
  }
  Lighting.Specular *= ComputeEnergyConservation(EnergyTermsCoat);
  AreaLight.SphereSinAlpha = SphereSinAlpha;
  Alpha = Pow2(GBuffer.Roughness);
  min16float FresnelCoeff = 1. - F;
  FresnelCoeff *= FresnelCoeff;
  if (0) {
    BxDFContext TempContext;
    [branch]
    if (bHasAnisotropy) {
      Init(TempContext, N, X, Y, V, L);
    } else {
      Init(TempContext, Nspec, V, L);
    }
    float3 H = normalize(V + L);
    Context.NoH = saturate(dot(N, H));
    Context.NoV = saturate(dot(N, V));
    Context.NoL = saturate(dot(N, L));
    Context.VoL = saturate(dot(V, L));
    Context.VoH = saturate(dot(V, H));
    Context.XoV = TempContext.XoV;
    Context.XoL = TempContext.XoL;
    Context.XoH = TempContext.XoH;
    Context.YoV = TempContext.YoV;
    Context.YoL = TempContext.YoL;
    Context.YoH = TempContext.YoH;
    if (!bHasAnisotropy) {
      bool bNewtonIteration = true;
      SphereMaxNoH(Context, AreaLight.SphereSinAlpha, bNewtonIteration);
    }
    Context.NoV = saturate(abs(Context.NoV) + 1.0000000000000001E-5);
  }
  if (bHasAnisotropy) {
    X = GBuffer.WorldTangent;
    Y = normalize(cross(N, X));
    Init(Context, Nspec, X, Y, V, L);
  }
  BxDFContext BottomContext = RefractClearCoatContext(Context);
  BottomContext.VoH = bIsRect ? BottomContext.NoV : BottomContext.VoH;
  FBxDFEnergyTermsRGB EnergyTermsBottom = ComputeGGXSpecEnergyTermsRGB(GBuffer.Roughness, BottomContext.NoV, GBuffer.SpecularColor);
  float3 Transmission = SimpleClearCoatTransmittance(BottomContext.NoL, BottomContext.NoV, GBuffer.Metallic, GBuffer.BaseColor);
  min16float3 DefaultDiffuse = (Falloff * NoL) * AreaLight.FalloffColor * Diffuse_Lambert(GBuffer.DiffuseColor) * ComputeEnergyPreservation(EnergyTermsBottom);
  min16float3 RefractedDiffuse = FresnelCoeff * Transmission * DefaultDiffuse;
  Lighting.Diffuse = lerp(DefaultDiffuse, RefractedDiffuse, ClearCoat);
  if (!bHasAnisotropy && bIsRect) {
    float3 DefaultSpecular = RectGGXApproxLTC(GBuffer.Roughness, GBuffer.SpecularColor, N, V, AreaLight.Rect, AreaLight.Texture);
    float3 RefractedSpecular = FresnelCoeff * Transmission * DefaultSpecular;
    Lighting.Specular += lerp(DefaultSpecular, RefractedSpecular, ClearCoat);
  } else {
    float a2 = Pow4(GBuffer.Roughness);
    min16float D2 = 0;
    min16float Vis2 = 0;
    [branch]
    if (bHasAnisotropy) {
      float ax = 0;
      float ay = 0;
      GetAnisotropicRoughness(Alpha, GBuffer.Anisotropy, ax, ay);
      D2 = D_GGXaniso(ax, ay, Context.NoH, Context.XoH, Context.YoH);
      Vis2 = Vis_SmithJointAniso(ax, ay, BottomContext.NoV, BottomContext.NoL, BottomContext.XoV, BottomContext.XoL, BottomContext.YoV, BottomContext.YoL);
    } else {
      Vis2 = Vis_SmithJointApprox(a2, BottomContext.NoV, NoL);
      D2 = D_GGX_Mobile(GBuffer.Roughness, BottomContext.NoH);
      Vis2 = saturate(Vis2);
    }
    min16float3 F_Bot = F_Schlick(GBuffer.SpecularColor, BottomContext.VoH);
    min16float3 F_DefaultLit = F_Schlick(GBuffer.SpecularColor, Context.VoH);
    float Energy = 0;
    [branch]
    if (bHasAnisotropy) {
      FAreaLight Punctual = AreaLight;
      Punctual.SphereSinAlpha = 0;
      Punctual.SphereSinAlphaSoft = 0;
      Punctual.LineCosSubtended = 1;
      Punctual.Rect = (FRect)0;
      Punctual.IsRectAndDiffuseMicroReflWeight = 0;
      Energy = EnergyNormalization(a2, Context.VoH, Punctual);
    } else {
      Energy = EnergyNormalization(a2, Context.VoH, AreaLight);
    }
    float3 CommonSpecular = (Energy * Falloff * NoL * D2 * Vis2) * AreaLight.FalloffColor;
    float3 DefaultSpecular = F_DefaultLit;
    float3 RefractedSpecular = FresnelCoeff * Transmission * F_Bot;
    Lighting.Specular += CommonSpecular * lerp(DefaultSpecular, RefractedSpecular, ClearCoat);
  }
  return Lighting;
}


#line 644 "/Engine/Private/ShadingModels.ush"
void GetProfileDualSpecular(uint SubsurfaceProfileInt, min16float Roughness, min16float Opacity, out min16float LobeRoughness0, out min16float LobeRoughness1, out min16float LobeMix) {
  LobeRoughness0 = Roughness;
  LobeRoughness1 = Roughness;
  LobeMix = 0.F;
}


#line 656 "/Engine/Private/ShadingModels.ush"
FDirectLighting SubsurfaceProfileBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  BxDFContext Context;
  InitMobile(Context, N, V, L, NoL);
  SphereMaxNoH(Context, AreaLight.SphereSinAlpha, true);
  Context.NoV = saturate(abs(Context.NoV) + 1.0000000000000001E-5);
  uint SubsurfaceProfileId = ExtractSubsurfaceProfileInt(GBuffer);
  min16float Opacity = GBuffer.CustomData.a;
  min16float Roughness = GBuffer.Roughness;
  min16float Lobe0Roughness = 0;
  min16float Lobe1Roughness = 0;
  min16float LobeMix = 0;
  GetProfileDualSpecular(SubsurfaceProfileId, Roughness, Opacity, Lobe0Roughness, Lobe1Roughness, LobeMix);
  min16float AverageRoughness = lerp(Lobe0Roughness, Lobe1Roughness, LobeMix);
  const FBxDFEnergyTermsRGB EnergyTerms = ComputeGGXSpecEnergyTermsRGB(AverageRoughness, Context.NoV, GBuffer.SpecularColor);
  FDirectLighting Lighting;
  min16float Curvature = GBuffer.Curvature;
  min16float UnClampedNoL = dot(GBuffer.WorldNormal, L);
  min16float ShadowFactor = 1.F - sqrt(Shadow.SurfaceShadow);
  min16float UnClampedRotatedNoL = max(UnClampedNoL - max(2.F * UnClampedNoL, 0.400000006F) * ShadowFactor, -1.F);
  min16float4 BurleyDiffuse = GetSSProfilePreIntegratedValue(SubsurfaceProfileId, UnClampedRotatedNoL, Curvature);
  min16float3 Tint = GetSubsurfaceProfileTexture(0, SubsurfaceProfileId).rgb;
  Lighting.Diffuse = lerp(AreaLight.FalloffColor * (Falloff * NoL) * Shadow.SurfaceShadow, BurleyDiffuse.rgb, Tint) * Diffuse_Lambert(GBuffer.DiffuseColor);
  if (IsRectLight(AreaLight)) {
    float3 Lobe0Specular = RectGGXApproxLTC(Lobe0Roughness, GBuffer.SpecularColor, N, V, AreaLight.Rect, AreaLight.Texture);
    float3 Lobe1Specular = RectGGXApproxLTC(Lobe1Roughness, GBuffer.SpecularColor, N, V, AreaLight.Rect, AreaLight.Texture);
    Lighting.Specular = lerp(Lobe0Specular, Lobe1Specular, LobeMix);
  } else {
    Lighting.Specular = AreaLight.FalloffColor * (Falloff * NoL) * DualSpecularGGX(AverageRoughness, Lobe0Roughness, Lobe1Roughness, LobeMix, GBuffer.SpecularColor, Context, NoL, AreaLight);
  }
  Lighting.Diffuse *= ComputeEnergyPreservation(EnergyTerms);
  Lighting.Specular *= ComputeEnergyConservation(EnergyTerms);
  Lighting.Transmission = 0;
  return Lighting;
}


#line 743 "/Engine/Private/ShadingModels.ush"
FDirectLighting ClothBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  const float3 FuzzColor = ExtractSubsurfaceColor(GBuffer);
  const float Cloth = saturate(GBuffer.CustomData.a);
  BxDFContext Context;
  InitMobile(Context, N, V, L, NoL);
  SphereMaxNoH(Context, AreaLight.SphereSinAlpha, true);
  Context.NoV = saturate(abs(Context.NoV) + 1.0000000000000001E-5);
  float3 Spec1;
  if (IsRectLight(AreaLight))
    Spec1 = RectGGXApproxLTC(GBuffer.Roughness, GBuffer.SpecularColor, N, V, AreaLight.Rect, AreaLight.Texture);
  else
    Spec1 = AreaLight.FalloffColor * (Falloff * NoL) * SpecularGGX(GBuffer.Roughness, GBuffer.SpecularColor, Context, NoL, AreaLight);
  const FBxDFEnergyTermsRGB EnergyTerms1 = ComputeGGXSpecEnergyTermsRGB(GBuffer.Roughness, Context.NoV, GBuffer.SpecularColor);
  Spec1 *= ComputeEnergyConservation(EnergyTerms1);
  float D2 = D_InvGGX(Pow4(GBuffer.Roughness), Context.NoH);
  float Vis2 = Vis_Cloth(Context.NoV, NoL);
  Vis2 = saturate(Vis2);
  float3 F2 = F_Schlick(FuzzColor, Context.VoH);
  float3 Spec2 = AreaLight.FalloffColor * (Falloff * NoL) * (D2 * Vis2) * F2;
  const FBxDFEnergyTermsA EnergyTerms2 = ComputeClothEnergyTermsA(GBuffer.Roughness, Context.NoV);
  Spec2 *= ComputeEnergyConservation(EnergyTerms2);
  FDirectLighting Lighting;
  Lighting.Diffuse = AreaLight.FalloffColor * (Falloff * NoL) * Diffuse_Lambert(GBuffer.DiffuseColor);
  Lighting.Specular = lerp(Spec1, Spec2, Cloth);
  Lighting.Transmission = 0;
  Lighting.Diffuse *= lerp(ComputeEnergyPreservation(EnergyTerms1), ComputeEnergyPreservation(EnergyTerms2), Cloth);
  return Lighting;
}


#line 788 "/Engine/Private/ShadingModels.ush"
FDirectLighting SubsurfaceBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  FDirectLighting Lighting = DefaultLitBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  min16float3 SubsurfaceColor = ExtractSubsurfaceColor(GBuffer);
  min16float Opacity = GBuffer.CustomData.a;
  min16float InScatter = pow(saturate(dot(L, -V)), 12) * lerp(3, 0.100000001F, Opacity);
  const min16float WrappedDiffuse = pow(saturate(dot(N, L) * (1.F / 1.5F) + (0.5F / 1.5F)), 1.5F) * (2.5F / 1.5F);
  const min16float NormalContribution = lerp(1.F, WrappedDiffuse, Opacity);
  const min16float BackScatter = GBuffer.GBufferAO * NormalContribution / (PI * 2);
  const min16float3 ExtinctionCoefficients = TransmittanceToExtinction(SubsurfaceColor, View_SubSurfaceColorAsTransmittanceAtDistanceInMeters);
  const min16float3 RawTransmittedColor = ExtinctionToTransmittance(ExtinctionCoefficients, 1.F);
  const min16float3 TransmittedColor = HSV_2_LinearRGB(min16float3(LinearRGB_2_HSV(RawTransmittedColor).xy, LinearRGB_2_HSV(SubsurfaceColor).z));
  Lighting.Transmission = AreaLight.FalloffColor * (Falloff * lerp(BackScatter, 1, InScatter)) * lerp(TransmittedColor, SubsurfaceColor, Shadow.TransmissionThickness);
  return Lighting;
}


#line 824 "/Engine/Private/ShadingModels.ush"
FDirectLighting TwoSidedBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  FDirectLighting Lighting = DefaultLitBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  min16float3 SubsurfaceColor = ExtractSubsurfaceColor(GBuffer);
  min16float Wrap = 0.5;
  min16float WrapNoL = saturate((-dot(N, L) + Wrap) / Square(1 + Wrap));
  min16float VoL = dot(V, L);
  min16float Scatter = D_GGX_Mobile(0.59999999999999998, saturate(-VoL));
  Lighting.Transmission = AreaLight.FalloffColor * (Falloff * WrapNoL * Scatter) * SubsurfaceColor;
  return Lighting;
}


#line 847 "/Engine/Private/ShadingModels.ush"
FDirectLighting EyeBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  const float3 IrisNormal = OctahedronToUnitVector(GBuffer.CustomData.yz * 2 - 1);
  const float IrisDistance = GBuffer.StoredMetallic;
  const float IrisMask = 1.F - GBuffer.CustomData.w;
  const float3 CausticNormal = normalize(lerp(IrisNormal, -N, IrisMask * IrisDistance));
  BxDFContext Context;
  InitMobile(Context, N, V, L, NoL);
  SphereMaxNoH(Context, AreaLight.SphereSinAlpha, false);
  Context.NoV = saturate(abs(Context.NoV) + 1.0000000000000001E-5);
  const bool bIsRect = IsRectLight(AreaLight);
  Context.VoH = bIsRect ? Context.NoV : Context.VoH;
  float F0 = GBuffer.Specular * 0.080000000000000002;
  float Fc = Pow5(1 - Context.VoH);
  float F = Fc + (1 - Fc) * F0;
  const FBxDFEnergyTermsRGB EnergyTerms = ComputeGGXSpecEnergyTermsRGB(GBuffer.Roughness, Context.NoV, F0);
  FDirectLighting Lighting;
  if (bIsRect) {
    Lighting.Specular = RectGGXApproxLTC(GBuffer.Roughness, F0, N, V, AreaLight.Rect, AreaLight.Texture);
  } else {
    float a2 = Pow4(GBuffer.Roughness);
    float Energy = EnergyNormalization(a2, Context.VoH, AreaLight);
    float Vis = Vis_SmithJointApprox(a2, Context.NoV, NoL);
    min16float D = D_GGX_Mobile(GBuffer.Roughness, Context.NoH) * Energy;
    Vis = saturate(Vis);
    Lighting.Specular = AreaLight.FalloffColor * (Falloff * NoL) * D * Vis * F;
  }
  float IrisNoL = saturate(dot(IrisNormal, L));
  float Power = lerp(12, 1, IrisNoL);
  float Caustic = 0.80000000000000004 + 0.20000000000000001 * (Power + 1) * pow(saturate(dot(CausticNormal, L)), Power);
  float Iris = IrisNoL * Caustic;
  float Sclera = NoL;
  Lighting.Specular *= ComputeEnergyConservation(EnergyTerms);
  const float EnergyPreservation = 1.F - F;
  Lighting.Diffuse = 0;
  Lighting.Transmission = AreaLight.FalloffColor * (Falloff * lerp(Sclera, Iris, IrisMask) * EnergyPreservation) * Diffuse_Lambert(GBuffer.DiffuseColor);
  uint SubsurfaceProfileId = ExtractSubsurfaceProfileInt(GBuffer);
  min16float Curvature = GBuffer.Curvature;
  min16float ShadowFactor = 1.F - sqrt(Shadow.SurfaceShadow);
  min16float UnClampedNoL = dot(GBuffer.WorldNormal, L);
  min16float UnClampedRotatedNoL = max(UnClampedNoL - max(2.F * UnClampedNoL, 0.400000006F) * ShadowFactor, -1.F);
  min16float4 BurleyDiffuse = GetSSProfilePreIntegratedValue(SubsurfaceProfileId, UnClampedRotatedNoL, Curvature);
  min16float UnClampedIrisNoL = dot(IrisNormal, L);
  min16float UnClampedRotatedIrisNoL = max(UnClampedIrisNoL - max(2.F * UnClampedIrisNoL, 0.400000006F) * ShadowFactor, -1.F);
  min16float4 IrisBurleyDiffuse = GetSSProfilePreIntegratedValue(SubsurfaceProfileId, UnClampedRotatedIrisNoL * Caustic, Curvature);
  min16float3 Tint = GetSubsurfaceProfileTexture(0, SubsurfaceProfileId).rgb;
  Lighting.Transmission = lerp(Lighting.Transmission * Shadow.SurfaceShadow, Falloff * lerp(BurleyDiffuse.rgb, IrisBurleyDiffuse.rgb, IrisMask) * Diffuse_Lambert(GBuffer.DiffuseColor), Tint);
  return Lighting;
}


#line 948 "/Engine/Private/ShadingModels.ush"
FDirectLighting PreintegratedSkinBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  FDirectLighting Lighting = DefaultLitBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  min16float3 SubsurfaceColor = ExtractSubsurfaceColor(GBuffer);
  min16float Opacity = GBuffer.CustomData.a;
  min16float3 PreintegratedBRDF = Texture2DSampleLevel(View_PreIntegratedBRDF, View_PreIntegratedBRDFSampler, float2(saturate(dot(N, L) * 0.5 + 0.5), 1 - Opacity), 0).rgb;
  Lighting.Transmission = AreaLight.FalloffColor * Falloff * PreintegratedBRDF * SubsurfaceColor;
  return Lighting;
}


#line 961 "/Engine/Private/ShadingModels.ush"
FDirectLighting IntegrateBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float Falloff, min16float NoL, FAreaLight AreaLight, FShadowTerms Shadow) {
  switch (GBuffer.ShadingModelID) {
  case 1:
  case 10:
  case 11:
    return DefaultLitBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 2:
    return SubsurfaceBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 3:
    return PreintegratedSkinBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 4:
    return ClearCoatBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 5:
    return SubsurfaceProfileBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 6:
    return TwoSidedBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 7:
    return HairBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 8:
    return ClothBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  case 9:
    return EyeBxDF(GBuffer, N, V, L, Falloff, NoL, AreaLight, Shadow);
  default:
    return (FDirectLighting)0;
  }
}


#line 990 "/Engine/Private/ShadingModels.ush"
FDirectLighting EvaluateBxDF(FGBufferData GBuffer, min16float3 N, min16float3 V, min16float3 L, float NoL, FShadowTerms Shadow) {
  FAreaLight AreaLight;
  AreaLight.SphereSinAlpha = 0;
  AreaLight.SphereSinAlphaSoft = 0;
  AreaLight.LineCosSubtended = 1;
  AreaLight.FalloffColor = 1;
  AreaLight.Rect = (FRect)0;
  AreaLight.IsRectAndDiffuseMicroReflWeight = 0;
  AreaLight.Texture = InitRectTexture();
  return IntegrateBxDF(GBuffer, N, V, L, 1, NoL, AreaLight, Shadow);
}


#line 22 "/Engine/Private/ReflectionEnvironmentShared.ush"
min16float ComputeReflectionCaptureMipFromRoughness(min16float Roughness, min16float CubemapMaxMip) {
  min16float LevelFrom1x1 = 1 - 1.2 * log2(max(Roughness, 0.001));
  return CubemapMaxMip - 1 - LevelFrom1x1;
}


#line 106 "/Engine/Private/ReflectionEnvironmentShared.ush"
float3 GetSkySHDiffuseSimple(float3 Normal) {
  float4 NormalVector = float4(Normal, 1);
  float3 Intermediate0;
  Intermediate0.x = dot(View_MobileSkyIrradianceEnvironmentMap[0], NormalVector);
  Intermediate0.y = dot(View_MobileSkyIrradianceEnvironmentMap[1], NormalVector);
  Intermediate0.z = dot(View_MobileSkyIrradianceEnvironmentMap[2], NormalVector);
  return max(0, Intermediate0);
}


#line 121 "/Engine/Private/ReflectionEnvironmentShared.ush"
min16float3 GetOffSpecularPeakReflectionDir(min16float3 Normal, min16float3 ReflectionVector, min16float Roughness) {
  min16float a = Roughness * Roughness;
  return lerp(Normal, ReflectionVector, (1 - a) * (sqrt(1 - a) + a));
}


#line 127 "/Engine/Private/ReflectionEnvironmentShared.ush"
min16float GetSpecularOcclusion(min16float NoV, min16float RoughnessSq, min16float AO) {
  return saturate(pow(NoV + AO, RoughnessSq) - 1 + AO);
}


#line 199 "/Engine/Private/ReflectionEnvironmentShared.ush"
min16float ComputeMixingWeight(min16float IndirectIrradiance, min16float AverageBrightness, min16float Roughness) {
  min16float MixingAlpha = smoothstep(0, 1, saturate(Roughness * View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x + View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y));
  min16float MixingWeight = IndirectIrradiance / max(AverageBrightness, 9.99999974E-5F);
  MixingWeight = min(MixingWeight, View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z);
  return lerp(1.F, MixingWeight, MixingAlpha);
}


#line 21 "/Engine/Private/LightGridCommon.ush"
struct FLightGridData {
  uint LightGridPixelSizeShift;
  float3 LightGridZParams;
  int3 CulledGridSize;
};
#line 28 "/Engine/Private/LightGridCommon.ush"
FLightGridData GetLightGridData(uint EyeIndex) {
  FLightGridData Result;
  Result.LightGridPixelSizeShift = MobileBasePass_Forward_LightGridPixelSizeShift;
  Result.LightGridZParams = MobileBasePass_Forward_LightGridZParams;
  Result.CulledGridSize = MobileBasePass_Forward_CulledGridSize;
  return Result;
}


#line 55 "/Engine/Private/LightGridCommon.ush"
uint3 ComputeLightGridCellCoordinate(uint2 PixelPos, float SceneDepth, uint EyeIndex) {
  const FLightGridData GridData = GetLightGridData(EyeIndex);
  uint ZSlice = (uint)(max(0, log2(SceneDepth * GridData.LightGridZParams.x + GridData.LightGridZParams.y) * GridData.LightGridZParams.z));
  ZSlice = min(ZSlice, (uint)(GridData.CulledGridSize.z - 1));
  return uint3(PixelPos >> GridData.LightGridPixelSizeShift, ZSlice);
}


#line 63 "/Engine/Private/LightGridCommon.ush"
uint ComputeLightGridCellIndex(uint3 GridCoordinate, uint EyeIndex) {
  const FLightGridData GridData = GetLightGridData(EyeIndex);
  return (GridCoordinate.z * GridData.CulledGridSize.y + GridCoordinate.y) * GridData.CulledGridSize.x + GridCoordinate.x;
}


#line 69 "/Engine/Private/LightGridCommon.ush"
uint ComputeLightGridCellIndex(uint2 PixelPos, float SceneDepth, uint EyeIndex) {
  return ComputeLightGridCellIndex(ComputeLightGridCellCoordinate(PixelPos, SceneDepth, EyeIndex), EyeIndex);
}


#line 74 "/Engine/Private/LightGridCommon.ush"
uint ComputeLightGridCellIndex(uint2 PixelPos, float SceneDepth) {
  return ComputeLightGridCellIndex(PixelPos, SceneDepth, 0);
}


#line 87 "/Engine/Private/LightGridCommon.ush"
uint GetNumLocalLights(uint EyeIndex) {
  return MobileBasePass_Forward_NumLocalLights;
}


#line 96 "/Engine/Private/LightGridCommon.ush"
struct FCulledLightsGridData {
  uint NumLocalLights;
  uint DataStartIndex;
};
#line 102 "/Engine/Private/LightGridCommon.ush"
FCulledLightsGridData GetCulledLightsGrid(uint GridIndex, uint EyeIndex) {
  FCulledLightsGridData Result;
  Result.NumLocalLights = min(MobileBasePass_Forward_NumCulledLightsGrid[GridIndex * 2 + 0], MobileBasePass_Forward_NumLocalLights);
  Result.DataStartIndex = MobileBasePass_Forward_NumCulledLightsGrid[GridIndex * 2 + 1];
  return Result;
}


#line 127 "/Engine/Private/LightGridCommon.ush"
struct FVirtualShadowMapSMRTSettings {
  int RayCount;
  int SamplesPerRay;
  float RayLengthScale;
  float ScreenRayLength;
  float CotMaxRayAngleFromLight;
  float TexelDitherScale;
  float ExtrapolateSlope;
  float MaxSlopeBias;
  uint AdaptiveRayCount;
};
#line 188 "/Engine/Private/LightGridCommon.ush"
FLocalLightData GetLocalLightData_Internal(uint LocalLightIndex, uint ClusteredDeferredSupportedEndIndex, uint LumenSupportedStartIndex, uint SimpleLightsEndIndex, float4 InData0, float4 InData1, float4 InData2, float4 InData3, float4 InData4, float4 InData5) {
  FLocalLightData Out = (FLocalLightData)0;
  Out.bClusteredDeferredSupported = LocalLightIndex < ClusteredDeferredSupportedEndIndex;
  Out.bLumenLightSupported = LocalLightIndex >= LumenSupportedStartIndex;
  Out.bIsSimpleLight = LocalLightIndex < SimpleLightsEndIndex;
  Out.LightPositionAndInvRadius = InData0;
  Out.LightColorAndFalloffExponent = InData1;
  Out.LightDirectionAndShadowMask = InData2;
  Out.SpotAnglesAndIdAndSourceRadiusPacked = InData3;
  Out.LightTangentAndIESDataAndSpecularScale = InData4;
  Out.RectDataAndVirtualShadowMapId = InData5;
  Out.VirtualShadowMapId = int(Out.RectDataAndVirtualShadowMapId.z);
  Out.LightSceneId = int(Out.SpotAnglesAndIdAndSourceRadiusPacked.y);
  return Out;
}


#line 231 "/Engine/Private/LightGridCommon.ush"
FLocalLightData GetLocalLightData(uint GridIndex, uint EyeIndex) {
  FLocalLightData Out;
  uint LocalLightIndex = MobileBasePass_Forward_CulledLightDataGrid[GridIndex];
  uint LocalLightBaseIndex = LocalLightIndex * 6;
  Out = GetLocalLightData_Internal(LocalLightIndex, MobileBasePass_Forward_ClusteredDeferredSupportedEndIndex, MobileBasePass_Forward_LumenSupportedStartIndex, MobileBasePass_Forward_SimpleLightsEndIndex, MobileBasePass_Forward_ForwardLocalLightBuffer[LocalLightBaseIndex + 0], MobileBasePass_Forward_ForwardLocalLightBuffer[LocalLightBaseIndex + 1], MobileBasePass_Forward_ForwardLocalLightBuffer[LocalLightBaseIndex + 2], MobileBasePass_Forward_ForwardLocalLightBuffer[LocalLightBaseIndex + 3], MobileBasePass_Forward_ForwardLocalLightBuffer[LocalLightBaseIndex + 4], MobileBasePass_Forward_ForwardLocalLightBuffer[LocalLightBaseIndex + 5]);
  return Out;
}


#line 15 "/Engine/Private/PixelQuadMessagePassing.ush"
struct FPQMPContext {
  float2 PixelPos;
  float2 QuadVector;
};
#line 13 "/Engine/Private/ShadowFilteringCommon.ush"
struct FPCFSamplerSettings {
  Texture2D<vector<float, 4> > ShadowDepthTexture;
  SamplerState ShadowDepthTextureSampler;
  float4 ShadowBufferSize;
  float SceneDepth;
  float TransitionScale;
  bool bSubsurface;
  bool bTreatMaxDepthUnshadowed;
  float DensityMulConstant;
  float2 ProjectionDepthBiasParameters;
};
#line 97 "/Engine/Private/ShadowFilteringCommon.ush"
float PCF3x3gather(float2 Fraction, float4 Values0, float4 Values1, float4 Values2, float4 Values3) {
  float4 Results;
  Results.x = Values0.w * (1. - Fraction.x);
  Results.y = Values0.x * (1. - Fraction.x);
  Results.z = Values2.w * (1. - Fraction.x);
  Results.w = Values2.x * (1. - Fraction.x);
  Results.x += Values0.z;
  Results.y += Values0.y;
  Results.z += Values2.z;
  Results.w += Values2.y;
  Results.x += Values1.w;
  Results.y += Values1.x;
  Results.z += Values3.w;
  Results.w += Values3.x;
  Results.x += Values1.z * Fraction.x;
  Results.y += Values1.y * Fraction.x;
  Results.z += Values3.z * Fraction.x;
  Results.w += Values3.y * Fraction.x;
  return dot(Results, float4(1. - Fraction.y, 1., 1., Fraction.y) * (1. / 9.));
}


#line 151 "/Engine/Private/ShadowFilteringCommon.ush"
float4 CalculateOcclusion(float4 ShadowmapDepth, FPCFSamplerSettings Settings) {
  if (Settings.bSubsurface) {
    float4 OccluderDistance = max(Settings.SceneDepth - ShadowmapDepth, 0);
    float4 Occlusion = GetSubSurfaceTransmission(OccluderDistance, Settings.DensityMulConstant);
    return select_internal(ShadowmapDepth > 0.990000009F, 1.F, Occlusion);
  } else {
    float TransitionScale = Settings.TransitionScale;
    float ConstantFactor = (Settings.SceneDepth * TransitionScale - 1);
    float4 ShadowFactor = saturate(ShadowmapDepth * TransitionScale - ConstantFactor);
    [flatten]
    if (Settings.bTreatMaxDepthUnshadowed) {
      ShadowFactor = saturate(ShadowFactor + (ShadowmapDepth > 0.990000009F));
    }
    return ShadowFactor;
  }
}


#line 244 "/Engine/Private/ShadowFilteringCommon.ush"
float Manual3x3PCF(float2 ShadowPosition, FPCFSamplerSettings Settings) {
  {
    float2 TexelPos = ShadowPosition * Settings.ShadowBufferSize.xy - 0.5F;
    float2 Fraction = frac(TexelPos);
    float2 TexelCorner = floor(TexelPos);
    float2 SamplePos = (TexelCorner + 1.F) * Settings.ShadowBufferSize.zw;
    float4 SampleValues0 = CalculateOcclusion(Settings.ShadowDepthTexture.Gather(Settings.ShadowDepthTextureSampler, SamplePos, int2(-1, -1)), Settings);
    float4 SampleValues1 = CalculateOcclusion(Settings.ShadowDepthTexture.Gather(Settings.ShadowDepthTextureSampler, SamplePos, int2(1, -1)), Settings);
    float4 SampleValues2 = CalculateOcclusion(Settings.ShadowDepthTexture.Gather(Settings.ShadowDepthTextureSampler, SamplePos, int2(-1, 1)), Settings);
    float4 SampleValues3 = CalculateOcclusion(Settings.ShadowDepthTexture.Gather(Settings.ShadowDepthTextureSampler, SamplePos, int2(1, 1)), Settings);
    return PCF3x3gather(Fraction, SampleValues0, SampleValues1, SampleValues2, SampleValues3);
  }
}


#line 21 "/Engine/Private/ClearCoatCommon.ush"
void RemapClearCoatDiffuseAndSpecularColor(FGBufferData GBuffer, min16float NoV, inout min16float3 DiffuseColor, inout min16float3 SpecularColor) {
  if (GBuffer.ShadingModelID == 4) {
    min16float RefractionScale = ((NoV * 0.5 + 0.5) * NoV - 1) * saturate(1.25 - 1.25 * GBuffer.Roughness) + 1;
    min16float MetalSpec = 0.90000000000000002;
    min16float3 AbsorptionColor = GBuffer.BaseColor * (1 / MetalSpec);
    min16float3 Absorption = AbsorptionColor * ((NoV - 1) * 0.84999999999999998 * (1 - lerp(AbsorptionColor, Square(AbsorptionColor), -0.78000000000000003)) + 1);
    min16float F0 = 0.040000000000000001;
    min16float Fc = Pow5(1 - NoV);
    min16float F = Fc + (1 - Fc) * F0;
    min16float ClearCoat = GBuffer.CustomData.x;
    min16float LayerAttenuation = lerp(1, (1 - F), ClearCoat);
    min16float3 BaseColor = lerp(GBuffer.BaseColor * LayerAttenuation, MetalSpec * Absorption * RefractionScale, GBuffer.Metallic * ClearCoat);
    DiffuseColor = BaseColor - BaseColor * GBuffer.Metallic;
    min16float Specular = lerp(GBuffer.Specular, RefractionScale, ClearCoat);
    SpecularColor = ComputeF0(Specular, BaseColor, GBuffer.Metallic) * View_SpecularOverrideParameter.w + View_SpecularOverrideParameter.xyz;
  }
}


#line 18 "/Engine/Private/DynamicLightingCommon.ush"
float RadialAttenuationMask(float3 WorldLightVector) {
  float NormalizeDistanceSquared = dot(WorldLightVector, WorldLightVector);
  return 1.F - saturate(NormalizeDistanceSquared);
}


#line 23 "/Engine/Private/DynamicLightingCommon.ush"
float RadialAttenuation(float3 WorldLightVector, min16float FalloffExponent) {
  return pow(RadialAttenuationMask(WorldLightVector), FalloffExponent);
}


#line 56 "/Engine/Private/DynamicLightingCommon.ush"
float SpotAttenuationMask(float3 L, float3 SpotDirection, float2 SpotAngles) {
  return saturate((dot(L, -SpotDirection) - SpotAngles.x) * SpotAngles.y);
}


#line 60 "/Engine/Private/DynamicLightingCommon.ush"
float SpotAttenuation(float3 L, float3 SpotDirection, float2 SpotAngles) {
  float ConeAngleFalloff = Square(SpotAttenuationMask(L, SpotDirection, SpotAngles));
  return ConeAngleFalloff;
}


#line 14 "/Engine/Private/CapsuleLightSampling.ush"
struct FCapsuleSphericalBounds {
  FSphericalRect SphericalRect;
  float3 ConeAxis;
  float ConeSinThetaMax2;
  float ConeSolidAngle;
};
#line 33 "/Engine/Private/DeferredLightingCommon.ush"
float DistanceFromCameraFade(float SceneDepth, FDeferredLightData LightData) {
  float Fade = saturate(SceneDepth * LightData.DistanceFadeMAD.x + LightData.DistanceFadeMAD.y);
  return Fade * Fade;
}


#line 122 "/Engine/Private/DeferredLightingCommon.ush"
void GetShadowTerms(float SceneDepth, min16float4 PrecomputedShadowFactors, uint ShadingModelID, float ContactShadowOpacity, FDeferredLightData LightData, float3 TranslatedWorldPosition, min16float3 L, min16float4 LightAttenuation, float Dither, inout FShadowTerms Shadow) {
  float ContactShadowLength = 0.F;
  const float ContactShadowLengthScreenScale = View_ClipToView[1][1] * SceneDepth;
  [branch]
  if (LightData.ShadowedBits) {
    min16float UsesStaticShadowMap = dot(LightData.ShadowMapChannelMask, min16float4(1, 1, 1, 1));
    min16float StaticShadowing = lerp(1, dot(PrecomputedShadowFactors, LightData.ShadowMapChannelMask), UsesStaticShadowMap);
    if (LightData.bRadialLight || 1) {
      Shadow.SurfaceShadow = LightAttenuation.z * StaticShadowing;
      Shadow.TransmissionShadow = LightAttenuation.w * StaticShadowing;
      Shadow.TransmissionThickness = LightAttenuation.w;
    } else {
      float DynamicShadowFraction = DistanceFromCameraFade(SceneDepth, LightData);
      Shadow.SurfaceShadow = lerp(LightAttenuation.x, StaticShadowing, DynamicShadowFraction);
      Shadow.TransmissionShadow = min(lerp(LightAttenuation.y, StaticShadowing, DynamicShadowFraction), LightAttenuation.w);
      Shadow.SurfaceShadow *= LightAttenuation.z;
      Shadow.TransmissionShadow *= LightAttenuation.z;
      Shadow.TransmissionThickness = min(LightAttenuation.y, LightAttenuation.w);
    }
    [flatten]
    if (LightData.ShadowedBits > 1 && LightData.ContactShadowLength > 0) {
      ContactShadowLength = LightData.ContactShadowLength * (LightData.ContactShadowLengthInWS ? 1.F : ContactShadowLengthScreenScale);
    }
  }
  Shadow.HairTransmittance = LightData.HairTransmittance;
  Shadow.HairTransmittance.OpaqueVisibility = Shadow.SurfaceShadow;
}


#line 240 "/Engine/Private/DeferredLightingCommon.ush"
float GetLocalLightAttenuation(float3 TranslatedWorldPosition, FDeferredLightData LightData, inout float3 ToLight, inout float3 L) {
  ToLight = LightData.TranslatedWorldPosition - TranslatedWorldPosition;
  float DistanceSqr = dot(ToLight, ToLight);
  L = ToLight * rsqrt(DistanceSqr);
  float LightMask;
  if (LightData.bInverseSquared) {
    LightMask = Square(saturate(1 - Square(DistanceSqr * Square(LightData.InvRadius))));
    LightMask *= 1.F / (DistanceSqr + 1.F);
  } else {
    LightMask = RadialAttenuation(ToLight * LightData.InvRadius, LightData.FalloffExponent);
  }
  if (LightData.bSpotLight) {
    LightMask *= SpotAttenuation(L, -LightData.Direction, LightData.SpotAngles);
  }
  if (LightData.bRectLight) {
    LightMask = dot(LightData.Direction, L) < 0 ? 0 : LightMask;
  }
  return LightMask;
}


#line 307 "/Engine/Private/DeferredLightingCommon.ush"
FLightAccumulator AccumulateDynamicLighting(float3 TranslatedWorldPosition, min16float3 CameraVector, FGBufferData GBuffer, min16float AmbientOcclusion, uint ShadingModelID, FDeferredLightData LightData, min16float4 LightAttenuation, float Dither, uint2 SVPos, inout float SurfaceShadow) {
  FLightAccumulator LightAccumulator = (FLightAccumulator)0;
  min16float3 V = -CameraVector;
  min16float3 N = GBuffer.WorldNormal;
  [branch]
  if (GBuffer.ShadingModelID == 4 && 0) {
    const float2 oct1 = ((float2(GBuffer.CustomData.a, GBuffer.CustomData.z) * 4) - (512. / 255.)) + UnitVectorToOctahedron(GBuffer.WorldNormal);
    N = OctahedronToUnitVector(oct1);
  }
  float3 L = LightData.Direction;
  float3 ToLight = L;
  float3 MaskedLightColor = LightData.Color;
  float LightMask = 1;
  if (LightData.bRadialLight) {
    LightMask = GetLocalLightAttenuation(TranslatedWorldPosition, LightData, ToLight, L);
    MaskedLightColor *= LightMask;
  }
  LightAccumulator.EstimatedCost += 0.300000012F;
  [branch]
  if (LightMask > 0) {
    FShadowTerms Shadow;
    Shadow.SurfaceShadow = AmbientOcclusion;
    Shadow.TransmissionShadow = 1;
    Shadow.TransmissionThickness = 1;
    Shadow.HairTransmittance.OpaqueVisibility = 1;
    const float ContactShadowOpacity = GBuffer.CustomData.a;
    GetShadowTerms(GBuffer.Depth, GBuffer.PrecomputedShadowFactors, GBuffer.ShadingModelID, ContactShadowOpacity, LightData, TranslatedWorldPosition, L, LightAttenuation, Dither, Shadow);
    SurfaceShadow = Shadow.SurfaceShadow;
    LightAccumulator.EstimatedCost += 0.300000012F;
    const bool bNeedsSeparateSubsurfaceLightAccumulation = UseSubsurfaceProfile(GBuffer.ShadingModelID);
    FDirectLighting Lighting = (FDirectLighting)0;
    min16float NoL = max(0, dot(GBuffer.WorldNormal, L));
    Lighting = EvaluateBxDF(GBuffer, N, V, L, NoL, Shadow);
    Lighting.Specular *= LightData.SpecularScale;
    LightAccumulator_AddSplit(LightAccumulator, Lighting.Diffuse, Lighting.Specular, Lighting.Diffuse, MaskedLightColor * Shadow.SurfaceShadow, bNeedsSeparateSubsurfaceLightAccumulation);
    LightAccumulator_AddSplit(LightAccumulator, Lighting.Transmission, 0.F, Lighting.Transmission, MaskedLightColor * Shadow.TransmissionShadow, bNeedsSeparateSubsurfaceLightAccumulation);
  }
  return LightAccumulator;
}


#line 55 "/Engine/Private/MobileLightingCommon.ush"
min16float3 SafeGetOutColor(min16float3 OutColor) {
  OutColor = min(OutColor, Max111110BitsFloat3 * 0.5F);
  return OutColor;
}


#line 65 "/Engine/Private/MobileLightingCommon.ush"
FLightAccumulator LightAccumulator_Add(FLightAccumulator A, FLightAccumulator B) {
  FLightAccumulator Sum = (FLightAccumulator)0;
  Sum.TotalLight = A.TotalLight + B.TotalLight;
  Sum.ScatterableLightLuma = A.ScatterableLightLuma + B.ScatterableLightLuma;
  Sum.ScatterableLight = A.ScatterableLight + B.ScatterableLight;
  Sum.EstimatedCost = A.EstimatedCost + B.EstimatedCost;
  Sum.TotalLightDiffuse = A.TotalLightDiffuse + B.TotalLightDiffuse;
  Sum.TotalLightSpecular = A.TotalLightSpecular + B.TotalLightSpecular;
  return Sum;
}


#line 94 "/Engine/Private/MobileLightingCommon.ush"
bool IsCSMEnabled() {
  return true;
}


#line 103 "/Engine/Private/MobileLightingCommon.ush"
min16float MobileShadowPCF(float2 ShadowUVs, FPCFSamplerSettings Settings) {
  min16float ShadowMap = Manual3x3PCF(ShadowUVs, Settings);
  return ShadowMap;
}


#line 131 "/Engine/Private/MobileLightingCommon.ush"
min16float MobileDirectionalLightCSM(float2 ScreenPosition, float SceneDepth, inout float ShadowPositionZ) {
  min16float ShadowMap = 1;
  ShadowPositionZ = 0;
  FPCFSamplerSettings Settings;
  Settings.ShadowDepthTexture = MobileDirectionalLight_DirectionalLightShadowTexture;
  Settings.ShadowDepthTextureSampler = MobileDirectionalLight_DirectionalLightShadowSampler;
  Settings.TransitionScale = MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.w;
  Settings.ShadowBufferSize = MobileDirectionalLight_DirectionalLightShadowSize;
  Settings.bSubsurface = false;
  Settings.bTreatMaxDepthUnshadowed = false;
  Settings.DensityMulConstant = 0;
  Settings.ProjectionDepthBiasParameters = 0;
  float4 ShadowPosition = float4(0, 0, 0, 0);
  for (uint i = 0; i < 4U; i++) {
    if (SceneDepth < MobileDirectionalLight_DirectionalLightShadowDistances[i]) {
      ShadowPosition = mul(float4(ScreenPosition.x, ScreenPosition.y, SceneDepth, 1), MobileDirectionalLight_DirectionalLightScreenToShadow[i]);
      ShadowPositionZ = ShadowPosition.z;
      break;
    }
  }
  if (ShadowPosition.z > 0) {
    float ShadowZ = 1.F - ShadowPosition.z;
    float LightSpacePixelDepthForOpaque = min(ShadowZ, 0.999989986F);
    Settings.SceneDepth = LightSpacePixelDepthForOpaque;
    ShadowMap = MobileShadowPCF(ShadowPosition.xy, Settings);
    float Fade = saturate(SceneDepth * MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.x + MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.y);
    ShadowMap = lerp(ShadowMap, 1., Fade * Fade);
  }
  return ShadowMap;
}


#line 189 "/Engine/Private/MobileLightingCommon.ush"
struct FTranslucencyLightingVector {
  float4 AmbientLightingVector;
  float3 DirectionalLightingVector;
};
#line 247 "/Engine/Private/MobileLightingCommon.ush"
FDeferredLightData GetDirectionalLightData(float4 ScreenPosition, float4 SvPosition, inout min16float4 OutDynamicShadowFactors, inout min16float OutDynamicShadowing) {
  float ShadowPositionZ = 0;
  min16float ShadowMap = MobileDirectionalLightCSM(ScreenPosition.xy, ScreenPosition.w, ShadowPositionZ);
  OutDynamicShadowing = 1.F;
  if (IsCSMEnabled()) {
    OutDynamicShadowing = ShadowMap;
  }
  FDeferredLightData LightData = (FDeferredLightData)0;
  LightData.Color = MobileDirectionalLight_DirectionalLightColor.rgb;
  LightData.FalloffExponent = 0;
  LightData.Direction = MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz;
  LightData.bRadialLight = false;
  LightData.SpecularScale = MobileDirectionalLight_DirectionalLightDistanceFadeMADAndSpecularScale.z;
  LightData.ShadowedBits = 1;
  LightData.HairTransmittance = InitHairTransmittanceData();
  LightData.ShadowMapChannelMask = UnpackShadowMapChannelMask(MobileDirectionalLight_DirectionalLightShadowMapChannelMask);
  return LightData;
}


#line 287 "/Engine/Private/MobileLightingCommon.ush"
void AccumulateDirectionalLighting(FGBufferData GBuffer, float3 TranslatedWorldPosition, min16float3 CameraVector, float4 ScreenPosition, float4 SvPosition, inout min16float4 DynamicShadowFactors, inout float OutDirectionalLightShadow, inout FLightAccumulator DirectLighting) {
  min16float DynamicShadowing = 1.F;
  FDeferredLightData LightData = GetDirectionalLightData(ScreenPosition, SvPosition, DynamicShadowFactors, DynamicShadowing);
  min16float4 LightAttenuation = min16float4(1, 1, DynamicShadowing, DynamicShadowing);
  FLightAccumulator NewLighting = AccumulateDynamicLighting(TranslatedWorldPosition, CameraVector, GBuffer, 1, GBuffer.ShadingModelID, LightData, LightAttenuation, 0, uint2(0, 0), OutDirectionalLightShadow);
  DirectLighting = LightAccumulator_Add(DirectLighting, NewLighting);
}


#line 307 "/Engine/Private/MobileLightingCommon.ush"
min16float3 GetMobileSkyLightReflection(min16float3 ReflectionVector, min16float Roughness, min16float CubemapMaxMip) {
  min16float AbsoluteSpecularMip = ComputeReflectionCaptureMipFromRoughness(Roughness, CubemapMaxMip);
  min16float4 Reflection = MobileReflectionCapture_Texture.SampleLevel(MobileReflectionCapture_TextureSampler, ReflectionVector, AbsoluteSpecularMip);
  return Reflection.rgb * ResolvedView.SkyLightColor.rgb;
}


#line 316 "/Engine/Private/MobileLightingCommon.ush"
min16float3 GetImageBasedReflectionLighting_Mobile(min16float3 ReflectionVector, float3 TranslatedWorldPosition, min16float Roughness, min16float IndirectIrradiance, min16float CompositeAlpha, uint GridIndex) {
  min16float3 SpecularIBL = (min16float3)0.F;
  min16float UsingSkyReflection = MobileReflectionCapture_Params.y > 0.F;
  if (UsingSkyReflection) {
    SpecularIBL = GetMobileSkyLightReflection(ReflectionVector, Roughness, MobileReflectionCapture_Params.y);
  } else {
    min16float AbsoluteSpecularMip = ComputeReflectionCaptureMipFromRoughness(Roughness, ResolvedView.ReflectionCubemapMaxMip);
    SpecularIBL = MobileReflectionCapture_Texture.SampleLevel(MobileReflectionCapture_TextureSampler, ReflectionVector, AbsoluteSpecularMip).rgb;
    min16float ReflectionCaptureBrightness = MobileReflectionCapture_Params.w;
    SpecularIBL = SpecularIBL * ReflectionCaptureBrightness;
  }
  SpecularIBL *= ComputeMixingWeight(IndirectIrradiance, MobileReflectionCapture_Params.x, Roughness);
  SpecularIBL *= CompositeAlpha;
  return SpecularIBL;
}


#line 382 "/Engine/Private/MobileLightingCommon.ush"
min16float3 GetPlanarReflectionbasedReflectionLighting_Mobile(float3 TranslatedWorldPosition, min16float3 WorldNormal, min16float Roughness, min16float3 InSpecularIBL) {
  min16float3 Out = InSpecularIBL;
  return Out;
}


#line 425 "/Engine/Private/MobileLightingCommon.ush"
void AccumulateReflection(FGBufferData GBuffer, min16float3 CameraVector, float3 TranslatedWorldPosition, min16float3 ReflectionVector, min16float IndirectIrradiance, uint GridIndex, inout FLightAccumulator DirectLighting) {
  min16float3 SpecularIBLLighting = (min16float3)0.F;
  min16float3 N = GBuffer.WorldNormal;
  min16float3 V = -CameraVector;
  min16float NoV = saturate(abs(dot(N, V)) + 1.0000000000000001E-5);
  min16float3 TopLayerR = ReflectionVector;
  min16float SpecularOcclusion = GBuffer.GBufferAO;
  if (0) {
    ReflectionVector = GetOffSpecularPeakReflectionDir(N, ReflectionVector, GBuffer.Roughness);
    min16float RoughnessSq = GBuffer.Roughness * GBuffer.Roughness;
    SpecularOcclusion = GetSpecularOcclusion(NoV, RoughnessSq, SpecularOcclusion);
  }
  min16float3 SpecularIBL = GetImageBasedReflectionLighting_Mobile(ReflectionVector, TranslatedWorldPosition, GBuffer.Roughness, IndirectIrradiance, SpecularOcclusion, GridIndex);
  SpecularIBL = GetPlanarReflectionbasedReflectionLighting_Mobile(TranslatedWorldPosition, GBuffer.WorldNormal, GBuffer.Roughness, SpecularIBL);
  min16float3 DiffuseColor = GBuffer.DiffuseColor;
  min16float3 SpecularColor = GBuffer.SpecularColor;
  if (GBuffer.ShadingModelID == 4) {
    const min16float ClearCoat = GBuffer.CustomData.x;
    const min16float ClearCoatRoughness = GBuffer.CustomData.y;
    RemapClearCoatDiffuseAndSpecularColor(GBuffer, NoV, DiffuseColor, SpecularColor);
    min16float F = GetEnvBRDF(0.040000000000000001, ClearCoatRoughness, NoV).x;
    F *= ClearCoat;
    min16float LayerAttenuation = (1 - F);
    min16float2 AB = EnvBRDFApproxLazarov(GBuffer.Roughness, NoV);
    SpecularIBLLighting += SpecularIBL * LayerAttenuation * (SpecularColor * AB.x + AB.y * saturate(50 * SpecularColor.g) * (1 - ClearCoat));
    SpecularIBL = GetImageBasedReflectionLighting_Mobile(TopLayerR, TranslatedWorldPosition, ClearCoatRoughness, IndirectIrradiance, F * SpecularOcclusion, GridIndex);
    SpecularIBLLighting += SpecularIBL;
  } else if (GBuffer.ShadingModelID == 7) {
  } else {
    SpecularIBLLighting += SpecularIBL * GetEnvBRDF(SpecularColor, GBuffer.Roughness, NoV);
  }
  LightAccumulator_AddSplit(DirectLighting, 0.F, SpecularIBLLighting, 0.F, 1.F, false);
}


#line 514 "/Engine/Private/MobileLightingCommon.ush"
void AccumulateLightGridLocalLighting(const FCulledLightsGridData InLightGridData, FGBufferData GBuffer, float3 TranslatedWorldPosition, min16float3 CameraVector, uint EyeIndex, uint FirstNonSimpleLightIndex, min16float4 DynamicShadowFactors, uint LightingChannelMask, inout FLightAccumulator DirectLighting) {
  const uint NumLocalLights = min(InLightGridData.NumLocalLights, GetNumLocalLights(EyeIndex));
  [loop]
  for (uint LocalLightListIndex = FirstNonSimpleLightIndex; LocalLightListIndex < NumLocalLights; LocalLightListIndex++) {
    const FLocalLightData LocalLight = GetLocalLightData(InLightGridData.DataStartIndex + LocalLightListIndex, EyeIndex);
    if (!IsLightVisible(LocalLight, TranslatedWorldPosition)) {
      continue;
    }
    uint LightTypeAndPackedShadowMapChannelMask = asuint(LocalLight.LightDirectionAndShadowMask.w);
    if ((UnpackLightingChannelMask(LocalLight) & LightingChannelMask) == 0) {
      continue;
    }
    uint LightType = UnpackLightType(LightTypeAndPackedShadowMapChannelMask);
    min16float DynamicShadowing = 1.F;
    FDeferredLightData LightData = ConvertToDeferredLight_Mobile(LocalLight);
    min16float4 LightAttenuation = min16float4(1, 1, DynamicShadowing, DynamicShadowing);
    float SurfaceShadow = 0;
    FLightAccumulator NewLighting = AccumulateDynamicLighting(TranslatedWorldPosition, CameraVector, GBuffer, 1, GBuffer.ShadingModelID, LightData, LightAttenuation, 0, uint2(0, 0), SurfaceShadow);
    DirectLighting = LightAccumulator_Add(DirectLighting, NewLighting);
  }
}


#line 12 "/Engine/Private/ShadingModelsMaterial.ush"
void SetGBufferForShadingModel(in out FGBufferData GBuffer, in out FMaterialPixelParameters MaterialParameters, const float Opacity, const min16float3 BaseColor, const min16float Metallic, const min16float Specular, const float Roughness, const float Anisotropy, const float3 SubsurfaceColor, const float SubsurfaceProfile, const float Dither, const uint ShadingModel) {
  GBuffer.WorldNormal = MaterialParameters.WorldNormal;
  GBuffer.WorldTangent = MaterialParameters.WorldTangent;
  GBuffer.BaseColor = BaseColor;
  GBuffer.Metallic = Metallic;
  GBuffer.Specular = Specular;
  GBuffer.Roughness = Roughness;
  GBuffer.Anisotropy = Anisotropy;
  GBuffer.ShadingModelID = ShadingModel;
  if (false) {
  }
}


#line 174 "/Engine/Private/MobileBasePassPixelShader.usf"
void GetSkyLighting(min16float3 SkyLightColor, min16float3 WorldNormal, bool bEvaluateBackface, inout min16float IndirectIrradiance, out min16float3 OutSkyDiffuseLighting, out min16float3 OutSkySubsurfaceLighting, out min16float3 OutWaterDiffuseIndirectLuminance) {
  OutSkyDiffuseLighting = 0;
  OutSkySubsurfaceLighting = 0;
  OutWaterDiffuseIndirectLuminance = 0;
  {
    min16float3 SkyDiffuse = GetSkySHDiffuseSimple(WorldNormal);
    OutSkyDiffuseLighting = SkyDiffuse * SkyLightColor;
    IndirectIrradiance += Luminance(OutSkyDiffuseLighting);
  }
}


#line 200 "/Engine/Private/MobileBasePassPixelShader.usf"
void GetPrecomputedIndirectLightingAndSkyLight(float LightmapVTPageTableResult, FVertexFactoryInterpolantsVSToPS Interpolants, bool bEvaluateBackface, min16float3 DiffuseDir, min16float3 SkyLightColor, out min16float3 OutDiffuseIndirectLighting, out min16float3 OutSubsurfaceIndirectLighting, out min16float OutIndirectIrradiance, out min16float3 OutWaterDiffuseIndirectLuminance) {
  OutIndirectIrradiance = 0;
  OutDiffuseIndirectLighting = 0;
  OutSubsurfaceIndirectLighting = 0;
  min16float3 SkyDiffuseLighting;
  min16float3 SkySubsurfaceLighting;
  GetSkyLighting(SkyLightColor, DiffuseDir, bEvaluateBackface, OutIndirectIrradiance, SkyDiffuseLighting, SkySubsurfaceLighting, OutWaterDiffuseIndirectLuminance);
  OutDiffuseIndirectLighting += SkyDiffuseLighting;
  OutSubsurfaceIndirectLighting += SkySubsurfaceLighting;
}


#line 268 "/Engine/Private/MobileBasePassPixelShader.usf"
void Main(FVertexFactoryInterpolantsVSToPS Interpolants, FSharedMobileBasePassInterpolants BasePassInterpolants, in float4 SvPosition : SV_Position, in bool bIsFrontFace : SV_IsFrontFace, out min16float4 OutColor : SV_Target0, out float OutSceneDepthAux : SV_Target1) {
  ResolvedView = ResolveView();
  FMaterialPixelParameters MaterialParameters = GetMaterialPixelParameters(Interpolants, SvPosition);
  FPixelMaterialInputs PixelMaterialInputs;
  {
    float4 ScreenPosition = SvPositionToResolvedScreenPosition(SvPosition);
    float3 WorldPosition = BasePassInterpolants.PixelPosition.xyz;
    float3 WorldPositionExcludingWPO = BasePassInterpolants.PixelPosition.xyz;
    CalcMaterialParametersEx(MaterialParameters, PixelMaterialInputs, SvPosition, ScreenPosition, bIsFrontFace, WorldPosition, WorldPositionExcludingWPO);
  }
  GetMaterialCoverageAndClipping(MaterialParameters, PixelMaterialInputs);
  min16float MaterialAO = GetMaterialAmbientOcclusion(PixelMaterialInputs);
  min16float Opacity = GetMaterialOpacity(PixelMaterialInputs);
  min16float3 BaseColor = GetMaterialBaseColor(PixelMaterialInputs);
  min16float Metallic = GetMaterialMetallic(PixelMaterialInputs);
  min16float Specular = GetMaterialSpecular(PixelMaterialInputs);
  min16float Roughness = max(0.015625F, GetMaterialRoughness(PixelMaterialInputs));
  min16float Anisotropy = GetMaterialAnisotropy(PixelMaterialInputs);
  uint ShadingModelID = GetMaterialShadingModel(PixelMaterialInputs);
  float3 SubsurfaceColor = 0;
  float SubsurfaceProfile = 0;
  const min16float BaseMaterialCoverageOverWater = Opacity;
  const min16float WaterVisibility = 1. - BaseMaterialCoverageOverWater;
  min16float3 WaterDiffuseIndirectLuminance = 0;
  FGBufferData GBuffer = (FGBufferData)0;
  GBuffer.GBufferAO = MaterialAO;
  GBuffer.Depth = MaterialParameters.ScreenPosition.w;
  SetGBufferForShadingModel(GBuffer, MaterialParameters, Opacity, BaseColor, Metallic, Specular, Roughness, Anisotropy, SubsurfaceColor, SubsurfaceProfile, 0.F, ShadingModelID);
  GBuffer.StoredBaseColor = GBuffer.BaseColor;
  GBuffer.StoredMetallic = GBuffer.Metallic;
  GBuffer.StoredSpecular = GBuffer.Specular;
  GBuffer.SpecularColor = ComputeF0(GBuffer.Specular, GBuffer.BaseColor, GBuffer.Metallic);
  GBuffer.DiffuseColor = GBuffer.BaseColor - GBuffer.BaseColor * GBuffer.Metallic;
  min16float3 InputBentNormal = MaterialParameters.WorldNormal;
  const FShadingOcclusion ShadingOcclusion = ApplyBentNormal(MaterialParameters.CameraVector, InputBentNormal, GetWorldBentNormalZero(MaterialParameters), GBuffer.Roughness, GBuffer.GBufferAO);
  float LightmapVTPageTableResult = (float)0.F;
  min16float IndirectIrradiance = 0;
  min16float3 DiffuseIndirectLighting = 0;
  min16float3 SubsurfaceIndirectLighting = 0;
  min16float3 DiffuseColorForIndirect = GBuffer.DiffuseColor;
  min16float3 DiffuseDir = ShadingOcclusion.BentNormal;
  min16float NoL = max(0, dot(GBuffer.WorldNormal, MobileDirectionalLight_DirectionalLightDirectionAndShadowTransition.xyz));
  const bool bEvaluateBackface = GetShadingModelRequiresBackfaceLighting(GBuffer.ShadingModelID);
  GetPrecomputedIndirectLightingAndSkyLight(LightmapVTPageTableResult, Interpolants, bEvaluateBackface, DiffuseDir, ResolvedView.SkyLightColor.rgb, DiffuseIndirectLighting, SubsurfaceIndirectLighting, IndirectIrradiance, WaterDiffuseIndirectLuminance);
  IndirectIrradiance *= GBuffer.GBufferAO;
  min16float3 DiffuseColor = (DiffuseIndirectLighting * DiffuseColorForIndirect + SubsurfaceIndirectLighting * SubsurfaceColor) * AOMultiBounce(GBuffer.BaseColor, ShadingOcclusion.DiffOcclusion);
  FLightAccumulator DirectLighting = (FLightAccumulator)0;
  LightAccumulator_AddSplit(DirectLighting, DiffuseColor, 0.F, DiffuseColor, 1.F, false);
  GBuffer.PrecomputedShadowFactors = GetPrimaryPrecomputedShadowMask(LightmapVTPageTableResult, Interpolants, MaterialParameters);
  min16float3 CameraVector = -MaterialParameters.CameraVector;
  min16float4 DynamicShadowFactors = 1.F;
  float DirectionalLightShadow = 1.F;
  AccumulateDirectionalLighting(GBuffer, MaterialParameters.WorldPosition_CamRelative, CameraVector, MaterialParameters.ScreenPosition, SvPosition, DynamicShadowFactors, DirectionalLightShadow, DirectLighting);
  float2 LocalPosition = SvPosition.xy - ResolvedView.ViewRectMin.xy;
  uint GridIndex = ComputeLightGridCellIndex(uint2(LocalPosition.x, LocalPosition.y), SvPosition.w);
  AccumulateReflection(GBuffer, CameraVector, MaterialParameters.WorldPosition_CamRelative, MaterialParameters.ReflectionVector, IndirectIrradiance, GridIndex, DirectLighting);
  {
    const uint EyeIndex = 0;
    const FCulledLightsGridData CulledLightGridData = GetCulledLightsGrid(GridIndex, EyeIndex);
    min16float4 LocalLightDynamicShadowFactors = 1.F;
    uint LightingChannelMask = GetPrimitive_LightingChannelMask(MaterialParameters.PrimitiveId);
    AccumulateLightGridLocalLighting(CulledLightGridData, GBuffer, MaterialParameters.WorldPosition_CamRelative, CameraVector, EyeIndex, 0, LocalLightDynamicShadowFactors, LightingChannelMask, DirectLighting);
  }
  min16float3 Color = DirectLighting.TotalLight;
  min16float4 VertexFog = min16float4(0, 0, 0, 1);
  min16float3 Emissive = GetMaterialEmissive(PixelMaterialInputs);
  Color += Emissive;
  OutColor.rgb = Color * VertexFog.a + VertexFog.rgb;
  OutColor.a = 0.;
  OutSceneDepthAux = SvPosition.z;
  OutColor.rgb *= ResolvedView.PreExposure;
  OutColor.rgb = SafeGetOutColor(OutColor.rgb);
}


