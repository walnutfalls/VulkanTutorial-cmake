include(ExternalProject)

ExternalProject_Add(glm
    PREFIX glm
    GIT_REPOSITORY https://github.com/g-truc/glm.git
    GIT_TAG stable
    GIT_SHALLOW TRUE
    CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_LOCATION}/glm
        -DGLM_TEST_ENABLE=OFF)

set(GLM_INCLUDE ${EXTERNAL_INSTALL_LOCATION}/glm/include)