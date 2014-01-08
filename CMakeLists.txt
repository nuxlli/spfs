# Copyright (C) 2007-2013 LuaDist.
# Created by Peter Drahoš
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( spfs )
cmake_minimum_required ( VERSION 2.8 )

file( GLOB LIBSPFS_C
   "libspfs/*.c"
)

include_directories ( ${PROJECT_SOURCE_DIR}/include )
include_directories ( ${PROJECT_SOURCE_DIR}/libspfs )

add_library ( libspfs ${LIBSPFS_C} )
add_executable ( spfs fs/ufs.c )
target_link_libraries ( spfs libspfs )

