# Install script for directory: /home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8/libCEGUICoreWindowRendererSet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8/libCEGUICoreWindowRendererSet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8/libCEGUICoreWindowRendererSet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8" TYPE SHARED_LIBRARY FILES "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUICoreWindowRendererSet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8/libCEGUICoreWindowRendererSet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8/libCEGUICoreWindowRendererSet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8/libCEGUICoreWindowRendererSet.so"
         OLD_RPATH "/home/myriam/IndieStudio/Install/cegui/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cegui-0.8/libCEGUICoreWindowRendererSet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/WindowRendererSets/Core" TYPE FILE FILES
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Tooltip.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/ToggleButton.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/StaticImage.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Static.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/ListHeader.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/MenuItem.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Default.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Scrollbar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/ListHeaderSegment.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Listbox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/ItemEntry.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/ProgressBar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Module.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/MultiColumnList.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/TabControl.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/StaticText.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Titlebar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Button.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Slider.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/PopupMenu.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/ScrollablePane.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Editbox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/FrameWindow.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Menubar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/TabButton.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/Tree.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/MultiLineEditbox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/WindowRendererSets/Core/../../../include/CEGUI/WindowRendererSets/Core/ItemListbox.h"
    )
endif()

