include(ExternalProject)
include(GNUInstallDirs)

ExternalProject_Add(glfw
    PREFIX glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG 3.3
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_LOCATION}/glfw
            -DGLFW_BUILD_DOCS=OFF
            -DGLFW_BUILD_TESTS=OFF
            -DGLFW_BUILD_EXAMPLES=OFF
)


# not sure how to handle this perfectly. on windows, lib name is different
if (WIN32)
    set(GLFW_LIB ${EXTERNAL_INSTALL_LOCATION}/glfw/${CMAKE_INSTALL_LIBDIR}/glfw3${CMAKE_STATIC_LIBRARY_SUFFIX})
else()
    set(GLFW_LIB ${EXTERNAL_INSTALL_LOCATION}/glfw/${CMAKE_INSTALL_LIBDIR}/libglfw3${CMAKE_STATIC_LIBRARY_SUFFIX})
endif ()


set(GLFW_INCLUDE ${EXTERNAL_INSTALL_LOCATION}/glfw/include)
