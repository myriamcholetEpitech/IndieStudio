//
// Created by puentes on 11/06/17.
//

#ifndef INDIE_IMENU_HPP
#define INDIE_IMENU_HPP

#include "Event/Event.hpp"

namespace Gauntlet
{
  enum		MenuType : int
  {
	  MAIN_MENU = 0,
	  GAME_MENU = 1,
	  HUD = 2,
	  ENDGAME = 3
  };

  class IMenu
  {
   private:
    Gauntlet::MenuType	_menuType;
   public:
    Gauntlet::MenuType 	getMenuType() const { return (this->_menuType); };

    IMenu(Gauntlet::MenuType menuType);
    virtual ~IMenu() {};

    virtual void 	updateMenu() = 0;
    virtual void 	takeEvent(Gauntlet::Event const &) = 0;
    virtual void 	show(bool isShowed = true) = 0;
  };
}

#endif //INDIE_IMENU_HPP
