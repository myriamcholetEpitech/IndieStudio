# Install script for directory: /home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOpenGLRenderer-0.so.2.4.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOpenGLRenderer-0.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOpenGLRenderer-0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIOpenGLRenderer-0.so.2.4.2"
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIOpenGLRenderer-0.so.2"
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIOpenGLRenderer-0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOpenGLRenderer-0.so.2.4.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOpenGLRenderer-0.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIOpenGLRenderer-0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/myriam/IndieStudio/Install/cegui/build/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/RendererModules/OpenGL" TYPE FILE FILES
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GL.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/StandardShaderVert.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/ApplePBTextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/StandardShaderFrag.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GLRenderer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/Texture.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GLFBOTextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/RenderTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GeometryBufferBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/RendererBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/WGLPBTextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/Shader.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GL3GeometryBuffer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GL3Renderer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/ShaderManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/StateChangeWrapper.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GLXPBTextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/ViewportTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/TextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GlmPimpl.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GLGeometryBuffer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/../../../include/CEGUI/RendererModules/OpenGL/GL3FBOTextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/RendererModules/OpenGL/RenderTarget.inl"
    )
endif()

