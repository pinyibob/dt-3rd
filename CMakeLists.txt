cmake_minimum_required(VERSION 3.15)

project(cesium-native
    VERSION 0.0.1
    LANGUAGES CXX C
)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

#set(dt_glog_include_dir glog/)
add_subdirectory(json)
add_subdirectory(gflags)
add_subdirectory(glog)
add_subdirectory(libzmq)
add_subdirectory(OpenSceneGraph)

add_library(crnlib
  crunch/crnlib/crn_arealist.cpp
  crunch/crnlib/crn_arealist.h
  crunch/crnlib/crn_assert.cpp
  crunch/crnlib/crn_assert.h
  crunch/crnlib/crn_atomics.h
  crunch/crnlib/crn_buffer_stream.h
  crunch/crnlib/crn_cfile_stream.h
  crunch/crnlib/crn_checksum.cpp
  crunch/crnlib/crn_checksum.h
  crunch/crnlib/crn_clusterizer.h
  crunch/crnlib/crn_color.h
  crunch/crnlib/crn_colorized_console.cpp
  crunch/crnlib/crn_colorized_console.h
  crunch/crnlib/crn_command_line_params.cpp
  crunch/crnlib/crn_command_line_params.h
  crunch/crnlib/crn_comp.cpp
  crunch/crnlib/crn_comp.h
  crunch/crnlib/crn_console.cpp
  crunch/crnlib/crn_console.h
  crunch/crnlib/crn_core.cpp
  crunch/crnlib/crn_core.h
  crunch/crnlib/crn_data_stream.cpp
  crunch/crnlib/crn_data_stream.h
  crunch/crnlib/crn_data_stream_serializer.h
  crunch/crnlib/crn_dds_comp.cpp
  crunch/crnlib/crn_dds_comp.h
  crunch/crnlib/crn_decomp.cpp
  crunch/crnlib/crn_dxt.cpp
  crunch/crnlib/crn_dxt.h
  crunch/crnlib/crn_dxt1.cpp
  crunch/crnlib/crn_dxt1.h
  crunch/crnlib/crn_dxt5a.cpp
  crunch/crnlib/crn_dxt5a.h
  crunch/crnlib/crn_dxt_endpoint_refiner.cpp
  crunch/crnlib/crn_dxt_endpoint_refiner.h
  crunch/crnlib/crn_dxt_fast.cpp
  crunch/crnlib/crn_dxt_fast.h
  crunch/crnlib/crn_dxt_hc.cpp
  crunch/crnlib/crn_dxt_hc.h
  crunch/crnlib/crn_dxt_hc_common.cpp
  crunch/crnlib/crn_dxt_hc_common.h
  crunch/crnlib/crn_dxt_image.cpp
  crunch/crnlib/crn_dxt_image.h
  crunch/crnlib/crn_dynamic_stream.h
  crunch/crnlib/crn_dynamic_string.cpp
  crunch/crnlib/crn_dynamic_string.h
  crunch/crnlib/crn_etc.cpp
  crunch/crnlib/crn_etc.h
  crunch/crnlib/crn_file_utils.cpp
  crunch/crnlib/crn_file_utils.h
  crunch/crnlib/crn_find_files.cpp
  crunch/crnlib/crn_find_files.h
  crunch/crnlib/crn_hash.cpp
  crunch/crnlib/crn_hash.h
  crunch/crnlib/crn_hash_map.cpp
  crunch/crnlib/crn_hash_map.h
  crunch/crnlib/crn_helpers.h
  crunch/crnlib/crn_huffman_codes.cpp
  crunch/crnlib/crn_huffman_codes.h
  crunch/crnlib/crn_image.h
  crunch/crnlib/crn_image_utils.cpp
  crunch/crnlib/crn_image_utils.h
  crunch/crnlib/crn_intersect.h
  crunch/crnlib/crn_jpgd.cpp
  crunch/crnlib/crn_jpgd.h
  crunch/crnlib/crn_jpge.cpp
  crunch/crnlib/crn_jpge.h
  crunch/crnlib/crn_ktx_texture.cpp
  crunch/crnlib/crn_ktx_texture.h
  crunch/crnlib/crn_lzma_codec.cpp
  crunch/crnlib/crn_lzma_codec.h
  crunch/crnlib/crn_math.cpp
  crunch/crnlib/crn_math.h
  crunch/crnlib/crn_matrix.h
  crunch/crnlib/crn_mem.cpp
  crunch/crnlib/crn_mem.h
  crunch/crnlib/crn_miniz.cpp
  crunch/crnlib/crn_miniz.h
  crunch/crnlib/crn_mipmapped_texture.cpp
  crunch/crnlib/crn_mipmapped_texture.h
  crunch/crnlib/crn_packed_uint.h
  crunch/crnlib/crn_pixel_format.cpp
  crunch/crnlib/crn_pixel_format.h
  crunch/crnlib/crn_platform.cpp
  crunch/crnlib/crn_platform.h
  crunch/crnlib/crn_prefix_coding.cpp
  crunch/crnlib/crn_prefix_coding.h
  crunch/crnlib/crn_qdxt1.cpp
  crunch/crnlib/crn_qdxt1.h
  crunch/crnlib/crn_qdxt5.cpp
  crunch/crnlib/crn_qdxt5.h
  crunch/crnlib/crn_rand.cpp
  crunch/crnlib/crn_rand.h
  crunch/crnlib/crn_ray.h
  crunch/crnlib/crn_rect.h
  crunch/crnlib/crn_resample_filters.cpp
  crunch/crnlib/crn_resample_filters.h
  crunch/crnlib/crn_resampler.cpp
  crunch/crnlib/crn_resampler.h
  crunch/crnlib/crn_rg_etc1.cpp
  crunch/crnlib/crn_rg_etc1.h
  crunch/crnlib/crn_ryg_dxt.cpp
  crunch/crnlib/crn_ryg_dxt.hpp
  crunch/crnlib/crn_ryg_types.hpp
  crunch/crnlib/crn_sparse_array.h
  crunch/crnlib/crn_sparse_bit_array.cpp
  crunch/crnlib/crn_sparse_bit_array.h
  crunch/crnlib/crn_stb_image.cpp
  crunch/crnlib/crn_strutils.cpp
  crunch/crnlib/crn_strutils.h
  crunch/crnlib/crn_symbol_codec.cpp
  crunch/crnlib/crn_symbol_codec.h
  crunch/crnlib/crn_texture_comp.cpp
  crunch/crnlib/crn_texture_comp.h
  crunch/crnlib/crn_texture_conversion.cpp
  crunch/crnlib/crn_texture_conversion.h
  crunch/crnlib/crn_texture_file_types.cpp
  crunch/crnlib/crn_texture_file_types.h
  crunch/crnlib/crn_threaded_clusterizer.h
  crunch/crnlib/crn_threaded_resampler.cpp
  crunch/crnlib/crn_threaded_resampler.h
  crunch/crnlib/crn_threading.h
  crunch/crnlib/crn_threading_null.h
  crunch/crnlib/crn_threading_pthreads.cpp
  crunch/crnlib/crn_threading_pthreads.h
  crunch/crnlib/crn_threading_win32.h
  crunch/crnlib/crn_timer.cpp
  crunch/crnlib/crn_timer.h
  crunch/crnlib/crn_traits.h
  crunch/crnlib/crn_tree_clusterizer.h
  crunch/crnlib/crn_types.h
  crunch/crnlib/crn_utils.cpp
  crunch/crnlib/crn_utils.h
  crunch/crnlib/crn_value.cpp
  crunch/crnlib/crn_value.h
  crunch/crnlib/crn_vec.h
  crunch/crnlib/crn_vec_interval.h
  crunch/crnlib/crn_vector.cpp
  crunch/crnlib/crn_vector.h
  crunch/crnlib/crn_vector2d.h
  crunch/crnlib/crn_winhdr.h
  crunch/crnlib/crn_zeng.cpp
  crunch/crnlib/crn_zeng.h
  crunch/crnlib/crnlib.cbp
  crunch/crnlib/crnlib.cpp
  crunch/crnlib/lzma_7zBuf.cpp
  crunch/crnlib/lzma_7zBuf.h
  crunch/crnlib/lzma_7zBuf2.cpp
  crunch/crnlib/lzma_7zCrc.h
  crunch/crnlib/lzma_7zFile.cpp
  crunch/crnlib/lzma_7zFile.h
  crunch/crnlib/lzma_7zStream.cpp
  crunch/crnlib/lzma_7zVersion.h
  crunch/crnlib/lzma_Alloc.cpp
  crunch/crnlib/lzma_Alloc.h
  crunch/crnlib/lzma_Bcj2.cpp
  crunch/crnlib/lzma_Bcj2.h
  crunch/crnlib/lzma_Bra.cpp
  crunch/crnlib/lzma_Bra.h
  crunch/crnlib/lzma_Bra86.cpp
  crunch/crnlib/lzma_BraIA64.cpp
  crunch/crnlib/lzma_CpuArch.h
  crunch/crnlib/lzma_LzFind.cpp
  crunch/crnlib/lzma_LzFind.h
  crunch/crnlib/lzma_LzFindMt.h
  crunch/crnlib/lzma_LzHash.h
  crunch/crnlib/lzma_LzmaDec.cpp
  crunch/crnlib/lzma_LzmaDec.h
  crunch/crnlib/lzma_LzmaEnc.cpp
  crunch/crnlib/lzma_LzmaEnc.h
  crunch/crnlib/lzma_LzmaLib.cpp
  crunch/crnlib/lzma_LzmaLib.h
  crunch/crnlib/lzma_MyVersion.h
  crunch/crnlib/lzma_Threads.h
  crunch/crnlib/lzma_Types.h
  crunch/inc/crn_decomp.h
  crunch/inc/crnlib.h
  crunch/inc/dds_defs.h
)
set_target_properties(crnlib PROPERTIES
  CXX_STANDARD 17
  CXX_STANDARD_REQUIRED YES
  PUBLIC_HEADER "crunch/inc/crn_decomp.h;crunch/inc/crnlib.h;crunch/inc/dds_defs.h"
)

target_include_directories(crnlib SYSTEM PUBLIC crunch/inc)
if (MSVC)
  target_compile_options(crnlib PRIVATE "/J" "/wd4127" "/wd4996")
  #target_compile_definitions(crnlib PRIVATE NOMINMAX _USE_MATH_DEFINES)
endif()

install(TARGETS crnlib
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/crnlib
)


set(dt_3rd_glog_include_dir ${CMAKE_CURRENT_LIST_DIR}/)