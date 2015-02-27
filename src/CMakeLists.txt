set(Sources hello-opencl.c)

add_executable(hello-opencl ${Sources})
target_link_libraries(hello-opencl ${OPENCL_LIBRARIES})
