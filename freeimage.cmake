file(GLOB ZLib_src freeimage/Source/ZLib/*.c)
file(GLOB ZLib_header freeimage/Source/ZLib/*.h)
add_library(ZLib STATIC "")
set_target_properties(ZLib PROPERTIES
  CXX_STANDARD 17
  CXX_STANDARD_REQUIRED YES
)
target_sources(ZLib
  PRIVATE
  ${ZLib_src}
  PUBLIC
  ${ZLib_header}
)
install_targets(TARGETS ZLib)

file(GLOB OpenEXR_src freeimage/Source/OpenEXR/*.cpp)
file(GLOB OpenEXR_header freeimage/Source/OpenEXR/*.h)
add_library(OpenEXR STATIC "")
set_target_properties(OpenEXR PROPERTIES
  CXX_STANDARD 17
  CXX_STANDARD_REQUIRED YES
)
target_sources(OpenEXR
  PRIVATE
  ${OpenEXR_src}
  PUBLIC
  ${OpenEXR_header}
)
target_include_directories(OpenEXR PUBLIC
  freeimage/OpenExr/IlmImf
  freeimage/Source/penExr/Imath
  freeimage/Source/penExr/IexMath
  freeimage/Source/penExr/Iex
  freeimage/Source/penExr/Half
  freeimage/Source/penExr/IlmThread
  freeimage/Source/Lib
)
target_link_libraries(OpenEXR PRIVATE ZLib)
install_targets(TARGETS OpenEXR)

# add_library(freeimage
#   freeimage/Source/FreeImage/BitmapAccess.cpp
#   freeimage/Source/FreeImage/ColorLookup.cpp
#   freeimage/Source/FreeImage/ConversionRGBA16.cpp
#   freeimage/Source/FreeImage/ConversionRGBAF.cpp
#   freeimage/Source/FreeImage/FreeImage.cpp
#   freeimage/Source/FreeImage/FreeImageC.c
#   freeimage/Source/FreeImage/FreeImageIO.cpp
#   freeimage/Source/FreeImage/GetType.cpp
#   freeimage/Source/FreeImage/LFPQuantizer.cpp
#   freeimage/Source/FreeImage/MemoryIO.cpp
#   freeimage/Source/FreeImage/PixelAccess.cpp
#   freeimage/Source/FreeImage/J2KHelper.cpp
#   freeimage/Source/FreeImage/MNGHelper.cpp
#   freeimage/Source/FreeImage/Plugin.cpp
#   freeimage/Source/FreeImage/PluginBMP.cpp
#   freeimage/Source/FreeImage/PluginCUT.cpp
#   freeimage/Source/FreeImage/PluginDDS.cpp
#   freeimage/Source/FreeImage/PluginEXR.cpp
#   freeimage/Source/FreeImage/PluginG3.cpp
#   freeimage/Source/FreeImage/PluginGIF.cpp
#   freeimage/Source/FreeImage/PluginHDR.cpp
#   freeimage/Source/FreeImage/PluginICO.cpp
#   freeimage/Source/FreeImage/PluginIFF.cpp
#   freeimage/Source/FreeImage/PluginJ2K.cpp
#   freeimage/Source/FreeImage/PluginJNG.cpp
#   freeimage/Source/FreeImage/PluginJP2.cpp
#   freeimage/Source/FreeImage/PluginJPEG.cpp
#   freeimage/Source/FreeImage/PluginJXR.cpp
#   freeimage/Source/FreeImage/PluginKOALA.cpp
#   freeimage/Source/FreeImage/PluginMNG.cpp
#   freeimage/Source/FreeImage/PluginPCD.cpp
#   freeimage/Source/FreeImage/PluginPCX.cpp
#   freeimage/Source/FreeImage/PluginPFM.cpp
#   freeimage/Source/FreeImage/PluginPICT.cpp
#   freeimage/Source/FreeImage/PluginPNG.cpp
#   freeimage/Source/FreeImage/PluginPNM.cpp
#   freeimage/Source/FreeImage/PluginPSD.cpp
#   freeimage/Source/FreeImage/PluginRAS.cpp
#   freeimage/Source/FreeImage/PluginRAW.cpp
#   freeimage/Source/FreeImage/PluginSGI.cpp
#   freeimage/Source/FreeImage/PluginTARGA.cpp
#   freeimage/Source/FreeImage/PluginTIFF.cpp
#   freeimage/Source/FreeImage/PluginWBMP.cpp
#   freeimage/Source/FreeImage/PluginWebP.cpp
#   freeimage/Source/FreeImage/PluginXBM.cpp
#   freeimage/Source/FreeImage/PluginXPM.cpp
#   freeimage/Source/FreeImage/PSDParser.cpp
#   freeimage/Source/FreeImage/TIFFLogLuv.cpp
#   freeimage/Source/FreeImage/Conversion.cpp
#   freeimage/Source/FreeImage/Conversion16_555.cpp
#   freeimage/Source/FreeImage/Conversion16_565.cpp
#   freeimage/Source/FreeImage/Conversion24.cpp
#   freeimage/Source/FreeImage/Conversion32.cpp
#   freeimage/Source/FreeImage/Conversion4.cpp
#   freeimage/Source/FreeImage/Conversion8.cpp
#   freeimage/Source/FreeImage/ConversionFloat.cpp
#   freeimage/Source/FreeImage/ConversionRGB16.cpp
#   freeimage/Source/FreeImage/ConversionRGBF.cpp
#   freeimage/Source/FreeImage/ConversionType.cpp
#   freeimage/Source/FreeImage/ConversionUINT16.cpp
#   freeimage/Source/FreeImage/Halftoning.cpp
#   freeimage/Source/FreeImage/tmoColorConvert.cpp
#   freeimage/Source/FreeImage/tmoDrago03.cpp
#   freeimage/Source/FreeImage/tmoFattal02.cpp
#   freeimage/Source/FreeImage/tmoReinhard05.cpp
#   freeimage/Source/FreeImage/ToneMapping.cpp
#   freeimage/Source/FreeImage/NNQuantizer.cpp
#   freeimage/Source/FreeImage/WuQuantizer.cpp
#   freeimage/Source/FreeImage/CacheFile.cpp
#   freeimage/Source/FreeImage/MultiPage.cpp
#   freeimage/Source/FreeImage/ZLibInterface.cpp
#   freeimage/Source/Metadata/Exif.cpp
#   freeimage/Source/Metadata/FIRational.cpp
#   freeimage/Source/Metadata/FreeImageTag.cpp
#   freeimage/Source/Metadata/IPTC.cpp
#   freeimage/Source/Metadata/TagConversion.cpp
#   freeimage/Source/Metadata/TagLib.cpp
#   freeimage/Source/Metadata/XTIFF.cpp
#   freeimage/Source/FreeImageToolkit/Background.cpp
#   freeimage/Source/FreeImageToolkit/BSplineRotate.cpp
#   freeimage/Source/FreeImageToolkit/Channels.cpp
#   freeimage/Source/FreeImageToolkit/ClassicRotate.cpp
#   freeimage/Source/FreeImageToolkit/Colors.cpp
#   freeimage/Source/FreeImageToolkit/CopyPaste.cpp
#   freeimage/Source/FreeImageToolkit/Display.cpp
#   freeimage/Source/FreeImageToolkit/Flip.cpp
#   freeimage/Source/FreeImageToolkit/JPEGTransform.cpp
#   freeimage/Source/FreeImageToolkit/MultigridPoissonSolver.cpp
#   freeimage/Source/FreeImageToolkit/Rescale.cpp
#   freeimage/Source/FreeImageToolkit/Resize.cpp
#   #FreeImage.rc
#   freeimage/Source/CacheFile.h
#   freeimage/Source/DeprecationManager/DeprecationMgr.h
#   freeimage/Source/MapIntrospector.h
#   freeimage/Source/Metadata/FIRational.h
#   freeimage/Source/FreeImage.h
#   freeimage/Source/FreeImageIO.h
#   freeimage/Source/Metadata/FreeImageTag.h
#   freeimage/Source/FreeImage/J2KHelper.h
#   freeimage/Source/Plugin.h
#   freeimage/Source/FreeImage/PSDParser.h
#   freeimage/Source/Quantizers.h
#   freeimage/Source/ToneMapping.h
#   freeimage/Source/Utilities.h
#   freeimage/Source/FreeImageToolkit/Resize.h
# )

# target_link_libraries(freeimage RPIVATE

# )
# target_include_directories(freeimage SYSTEM PUBLIC freeimage/Source)
# if (MSVC)
#   target_compile_options(freeimage PRIVATE "/J" "/wd4127" "/wd4996")
#   #target_compile_definitions(freeimage PRIVATE NOMINMAX _USE_MATH_DEFINES)
# endif()

# install(TARGETS freeimage
#   LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
#   PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/freeimage
# )
