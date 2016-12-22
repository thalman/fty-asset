################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Read the zproject/README.md for information about making permanent changes. #
################################################################################

if (NOT MSVC)
    include(FindPkgConfig)
    pkg_check_modules(PC_MAGIC "libmagic")
    if (NOT PC_MAGIC_FOUND)
        pkg_check_modules(PC_MAGIC "libmagic")
    endif (NOT PC_MAGIC_FOUND)
    if (PC_MAGIC_FOUND)
        # add CFLAGS from pkg-config file, e.g. draft api.
        add_definitions(${PC_MAGIC_CFLAGS} ${PC_MAGIC_CFLAGS_OTHER})
        # some libraries install the headers is a subdirectory of the include dir
        # returned by pkg-config, so use a wildcard match to improve chances of finding
        # headers and SOs.
        set(PC_MAGIC_INCLUDE_HINTS ${PC_MAGIC_INCLUDE_DIRS} ${PC_MAGIC_INCLUDE_DIRS}/*)
        set(PC_MAGIC_LIBRARY_HINTS ${PC_MAGIC_LIBRARY_DIRS} ${PC_MAGIC_LIBRARY_DIRS}/*)
    endif(PC_MAGIC_FOUND)
endif (NOT MSVC)

find_path (
    MAGIC_INCLUDE_DIRS
    NAMES magic.h
    HINTS ${PC_MAGIC_INCLUDE_HINTS}
)

find_library (
    MAGIC_LIBRARIES
    NAMES magic
    HINTS ${PC_MAGIC_LIBRARY_HINTS}
)

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(
    MAGIC
    REQUIRED_VARS MAGIC_LIBRARIES MAGIC_INCLUDE_DIRS
)
mark_as_advanced(
    MAGIC_FOUND
    MAGIC_LIBRARIES MAGIC_INCLUDE_DIRS
)

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Read the zproject/README.md for information about making permanent changes. #
################################################################################