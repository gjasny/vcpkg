if(CMAKE_HOST_SYSTEM_NAME STREQUAL "Linux")
    set(CMAKE_CROSSCOMPILING OFF CACHE BOOL "")
endif()
set(CMAKE_SYSTEM_NAME Linux CACHE STRING "")

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(NOT _CMAKE_IN_TRY_COMPILE)
    set(CMAKE_CXX_FLAGS "${VCPKG_CXX_FLAGS} -fPIC" CACHE STRING "")
    set(CMAKE_C_FLAGS "${VCPKG_C_FLAGS} -fPIC" CACHE STRING "")

    set(CMAKE_CXX_FLAGS_DEBUG "${VCPKG_CXX_FLAGS_DEBUG}" CACHE STRING "")
    set(CMAKE_C_FLAGS_DEBUG "${VCPKG_C_FLAGS_DEBUG}" CACHE STRING "")
    set(CMAKE_CXX_FLAGS_RELEASE "${VCPKG_CXX_FLAGS_RELEASE}" CACHE STRING "")
    set(CMAKE_C_FLAGS_RELEASE "${VCPKG_C_FLAGS_RELEASE}" CACHE STRING "")

    set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${VCPKG_LINKER_FLAGS}" CACHE STRING "")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${VCPKG_LINKER_FLAGS}" CACHE STRING "")
endif()
