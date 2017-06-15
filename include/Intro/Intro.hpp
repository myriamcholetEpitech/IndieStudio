//
// Intro.hpp for  in /home/myriam/Projet/cpp_indie_studio
// Made by Myriam
// 

#ifndef INTRO_HPP_
# define INTRO_HPP_


#include <CEGUI/CEGUI.h>
#include <CEGUI/RendererModules/Ogre/Renderer.h>

#include <Event/Event.hpp>
#include "Systems/System.hpp"

namespace	Gauntlet
{
  class		Intro
  {
  public:
    Intro();
    ~Intro();
    virtual void	takeEvent(Event const &);

  private:
    CEGUI::OgreRenderer		*mRenderer;
    CEGUI::Window		*backrground;
    CEGUI::Window		*pressPlay;
  };
}

#endif /* INTRO!*/
