# Install script for directory: /home/myriam/IndieStudio/Install/cegui/samples

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cegui-0/samples" TYPE FILE FILES "/home/myriam/IndieStudio/Install/cegui/build/datafiles/samples/samples.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/HelloWorld/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/LookNFeelOverview/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/GameMenu/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/HUDDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/DragDropDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/InventoryDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/EffectsDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/FontDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/Demo6/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/EditboxValidationDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/Minesweeper/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/ScrollablePaneDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/TabControlDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/CommonDialogsDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/WidgetDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/TextDemo/cmake_install.cmake")
  include("/home/myriam/IndieStudio/Install/cegui/build/samples/TreeDemo/cmake_install.cmake")

endif()

