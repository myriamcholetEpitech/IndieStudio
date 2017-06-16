# Install script for directory: /home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOgreRenderer-0.so.2.4.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOgreRenderer-0.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOgreRenderer-0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIOgreRenderer-0.so.2.4.2"
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIOgreRenderer-0.so.2"
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIOgreRenderer-0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOgreRenderer-0.so.2.4.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOgreRenderer-0.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOgreRenderer-0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/myriam/IndieStudio/Install/cegui/build/lib:/usr/local/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/RendererModules/Ogre" TYPE FILE FILES
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/WindowTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/ResourceProvider.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/Renderer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/Texture.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/RenderTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/TextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/GeometryBuffer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/ImageCodec.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/Ogre/RenderTarget.inl"
    )
endif()

