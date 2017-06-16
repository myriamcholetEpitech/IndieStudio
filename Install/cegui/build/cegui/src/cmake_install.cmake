# Install script for directory: /home/myriam/IndieStudio/Install/cegui/cegui/src

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIBase-0.so.2.4.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIBase-0.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIBase-0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIBase-0.so.2.4.2"
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIBase-0.so.2"
    "/home/myriam/IndieStudio/Install/cegui/build/lib/libCEGUIBase-0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIBase-0.so.2.4.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIBase-0.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCEGUIBase-0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI" TYPE FILE FILES
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RefCounted.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Image.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/AnimationManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderedStringWidgetComponent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ImageManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Clipboard.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MouseCursor.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/XMLParser.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/LinkedEvent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MemorySTLWrapper.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MemoryStdAllocator.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ColourRect.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FormattedRenderedString.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FunctorReferenceBinder.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplProperty.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/WindowManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Scheme_xmlHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/DataContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/InputEvent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Base.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Vector.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/PCRERegexMatcher.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Quaternion.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FreeFunctionSlot.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/DefaultResourceProvider.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Scheme.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Interpolator.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Rect.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/WindowRenderer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/WindowFactoryManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderedStringParser.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderedStringTextComponent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ResourceProvider.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderingSurface.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Element.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/WindowRendererManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/PixmapFont.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FribidiVisualMapping.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplWindowRendererFactory.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Renderer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FactoryModule.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FunctorReferenceSlot.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplWindowProperty.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/KeyFrame.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/XMLAttributes.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/EventArgs.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/SchemeManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ImageFactory.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplWindowFactory.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/EventSet.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplWindowRendererProperty.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Texture.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/AnimationInstance.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Colour.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/PropertyHelper.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Window.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/NamedElement.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplWRFactoryRegisterer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FontGlyph.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/XMLHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/UDim.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FreeTypeFont.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MemoryAllocatedObject.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/LeftAlignedRenderedString.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/GlobalEventSet.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/GUIContext.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TextUtils.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MinizipResourceProvider.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FactoryRegisterer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/PropertySet.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/BasicImage.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MemoryOgreAllocator.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/DefaultLogger.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MemoryAllocation.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/IteratorBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/DynamicModule.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/InjectedInputReceiver.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderedString.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderingWindow.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/DefaultRenderedStringParser.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/CentredRenderedString.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FunctorPointerSlot.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Event.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Font_xmlHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/System.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Win32StringTranscoder.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/BasicRenderedStringParser.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Animation_xmlHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TypedProperty.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/IconvStringTranscoder.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/JustifiedRenderedString.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplWindowFactoryRegisterer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderedStringComponent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/String.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RightAlignedRenderedString.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/CEGUI.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RegexMatcher.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Exceptions.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TplInterpolators.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FontManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/StringTranscoder.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/SlotFunctorBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ScriptModule.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Singleton.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/BidiVisualMapping.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ForwardRefs.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderingContext.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/FunctorCopySlot.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Affector.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderEffectFactory.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderedStringWordWrapper.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/CoordConverter.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Size.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderedStringImageComponent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Property.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderQueue.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderEffectManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Font.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/TextureTarget.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/SubscriberSlot.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/GeometryBuffer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Animation.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/RenderEffect.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/WindowFactory.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ChainedXMLHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/ImageCodec.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/NamedXMLResourceManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Vertex.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MemberFunctionSlot.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/CompositeResourceProvider.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/SystemKeys.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/SimpleTimer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/GUILayout_xmlHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/MinibidiVisualMapping.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Config_xmlHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/BoundSlot.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/Logger.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/XMLSerializer.h"
    "/home/myriam/IndieStudio/Install/cegui/build/cegui/src/../include/CEGUI/Config.h"
    "/home/myriam/IndieStudio/Install/cegui/build/cegui/src/../include/CEGUI/ModuleConfig.h"
    "/home/myriam/IndieStudio/Install/cegui/build/cegui/src/../include/CEGUI/Version.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/widgets" TYPE FILE FILES
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Combobox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/LayoutContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Tooltip.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/SequentialLayoutContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ToggleButton.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/GridLayoutContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/LayoutCell.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ItemListBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ClippedContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Thumb.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ListHeader.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/MenuBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/MenuItem.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Scrollbar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Spinner.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ListHeaderSegment.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Listbox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/VerticalLayoutContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/PushButton.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ListboxItem.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ScrolledContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ItemEntry.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ListboxTextItem.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ComboDropList.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ProgressBar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ButtonBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/MultiColumnList.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/TabControl.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Titlebar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Slider.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/PopupMenu.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/GroupBox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/HorizontalLayoutContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/DragContainer.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ScrollablePane.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Editbox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/All.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/DefaultWindow.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/FrameWindow.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Menubar.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ScrolledItemListBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/TreeItem.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/TabButton.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/Tree.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/MultiLineEditbox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/ItemListbox.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/widgets/RadioButton.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/falagard" TYPE FILE FILES
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/SectionSpecification.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/PropertyInitialiser.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/NamedArea.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/EventAction.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/EventLinkDefinition.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/FalagardPropertyBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/Dimensions.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/WidgetComponent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/PropertyDefinition.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/XMLEnumHelper.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/ComponentBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/WidgetLookManager.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/XMLHandler.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/Enums.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/LayerSpecification.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/FormattingSetting.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/PropertyLinkDefinition.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/PropertyDefinitionBase.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/FrameComponent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/StateImagery.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/ImageryComponent.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/ImagerySection.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/NamedDefinitionCollator.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/WidgetLookFeel.h"
    "/home/myriam/IndieStudio/Install/cegui/cegui/src/../include/CEGUI/falagard/TextComponent.h"
    )
endif()

