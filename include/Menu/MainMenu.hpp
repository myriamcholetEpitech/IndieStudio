//
// Created by puentes on 12/06/17.
//

#ifndef INDIE_MAINMENU_HPP
#define INDIE_MAINMENU_HPP

#include <CEGUI/CEGUI.h>
#include "Menu/IMenu.hpp"

namespace Gauntlet
{
  class MainMenu: public IMenu
  {
   private:
    CEGUI::Window			*_root;
    std::vector<CEGUI::Window*>		_menuEntries;
    CEGUI::Window			*_cursor;

    int 				_idx;
    int 				_fadeAway;
    void 				validateMenu();
    void 				updateButtonSize();
   public:
    MainMenu();
    virtual ~MainMenu();

    virtual void			updateMenu();
    virtual void			takeEvent(Gauntlet::Event const &event);
    virtual void			show(bool isShowed);
  };
}

#endif //INDIE_MAINMENU_HPP
