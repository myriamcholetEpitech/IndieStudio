//
// menu.hpp for  in /home/myriam/Projet/cpp_indie_studio/menu
// 
// Made by Myriam
//

#ifndef MENUMANAGER_HPP_
# define MENUMANAGER_HPP_

#include <CEGUI/CEGUI.h>
#include <CEGUI/RendererModules/Ogre/Renderer.h>

#include "Event/Event.hpp"
#include "Systems/System.hpp"

#include "Menu/IMenu.hpp"
#include "Menu/GameMenu.hpp"
#include "Menu/MainMenu.hpp"
#include "Menu/EndGame.hpp"

namespace	Gauntlet
{
  class		MenuManager : public	Gauntlet::System
  {
  public:
    MenuManager();
    ~MenuManager();
    void						takeEvent(Event const &) override ;
    void						updateMenu();

    void						addMainMenu();
    void						addGameMenu();
    void						addEndGame();
    void 						addHud(std::vector<std::shared_ptr<Gauntlet::Entity> > const & heroes);
    bool 						setActiveMenu(Gauntlet::MenuType menuType);
    Gauntlet::IMenu					*getMenu(Gauntlet::MenuType menuType);
  private:
    CEGUI::OgreRenderer					*mRenderer;
    std::vector<std::unique_ptr<Gauntlet::IMenu> >	_menus;

    CEGUI::Window					*_root;
    int							_menuIdx;


  };
}

#endif /* !MENUMANAGER_HPP_ */
