# - Find the OpenCL headers and library
#
# Defines the following if found:
#  OPENCL_FOUND        : TRUE if found, FALSE otherwise
#  OPENCL_INCLUDE_DIRS : Include directories for OpenCL
#  OPENCL_LIBRARIES    : The libraries to link against
#
# The user can set the OPENCLROOT environment variable to help finding OpenCL
# if it is installed in a non-standard place.

set(CMAKE_FIND_FRAMEWORK FIRST)

find_path(OPENCL_INCLUDE_DIR NAMES OpenCL/cl.h CL/cl.h PATHS
   ENV OPENCLROOT
   ENV AMDAPPSDKROOT
   PATH_SUFFIXES include include/nvidia-current)

find_library(OPENCL_LIBRARY OpenCL PATHS
   ENV OPENCLROOT
   ENV AMDAPPSDKROOT
   PATH_SUFFIXES lib/x86_64 lib/x64 lib/x86)

mark_as_advanced(OPENCL_INCLUDE_DIR OPENCL_LIBRARY)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(OpenCL OPENCL_INCLUDE_DIR 
OPENCL_LIBRARY)

set(OPENCL_INCLUDE_DIRS "${OPENCL_INCLUDE_DIR}")
set(OPENCL_LIBRARIES "${OPENCL_LIBRARY}")
#- EOF
