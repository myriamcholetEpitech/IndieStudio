//
// Created by puentes on 11/06/17.
//

#include "Menu/GameMenu.hpp"

Gauntlet::GameMenu::GameMenu()
	: IMenu(Gauntlet::MenuType::GAME_MENU),
	  _root(nullptr),
	  _menuEntries(),
	  _idx(0)
{
  CEGUI::WindowManager	&winMgr = CEGUI::WindowManager::getSingleton();

  this->_root = winMgr.loadLayoutFromFile("GameMenu.layout");
  auto menu = this->_root->getChild("Menu");
  for (unsigned int id = 0; id < 4; id++)
    this->_menuEntries.push_back(menu->getChild(200 + id)->getChild(0));

  CEGUI::System::getSingleton().getDefaultGUIContext().getRootWindow()->addChild(this->_root);
}

Gauntlet::GameMenu::~GameMenu()
{

}

void		Gauntlet::GameMenu::updateMenu()
{
}

void		Gauntlet::GameMenu::takeEvent(Gauntlet::Event const &event)
{
  switch (event._type)
    {
      case (Gauntlet::EventType::MENU) :
	Gauntlet::CoreGame::core->getMenuMgr().setActiveMenu(Gauntlet::MenuType::HUD);
      break;
      case (Gauntlet::EventType::MOVE) :
	{
	  auto const &move = static_cast<MoveEvent const &>(event);
	  if (move.type.front() == MoveEvent::Type::UP &&
	      this->_idx > 0)
	    this->_idx--;
	  else
	    if (move.type.front() == MoveEvent::Type::DOWN &&
		this->_idx + 1 < this->_menuEntries.size())
	      _idx += 1;
	  this->updateButtonSize();
	}
      break;
      case (Gauntlet::EventType::ENTER) :
	this->validateMenu();
      break;
      default:
	break;
    }
}

void		Gauntlet::GameMenu::show(bool isShowed)
{
  if (isShowed)
    {
      this->_root->show();
      this->_idx = 0;
      this->updateButtonSize();
      Gauntlet::CoreGame::core->isMenuOn = true;
    }
  else
    this->_root->hide();
}

void		Gauntlet::GameMenu::updateButtonSize()
{
  this->_menuEntries[this->_idx]->setProperty("Font", "Runic-MT-20");
  if (this->_idx > 0)
    this->_menuEntries[this->_idx - 1]->setProperty("Font", "Runic-MT-18");
  if (this->_idx < this->_menuEntries.size() - 1)
    this->_menuEntries[this->_idx + 1]->setProperty("Font", "Runic-MT-18");
}

void		Gauntlet::GameMenu::validateMenu()
{
  switch(this->_idx)
    {
      case 0 :
	break;
      case 1 :
	Gauntlet::CoreGame::core->getMenuMgr().setActiveMenu(Gauntlet::MenuType::HUD);
      break;
      case 2 :
	Gauntlet::CoreGame::core->addEvent(Gauntlet::EventType::NEW_GAME);
	break;
      case 3 :
	Gauntlet::CoreGame::core->getMenuMgr().setActiveMenu(Gauntlet::MenuType::MAIN_MENU);
	Gauntlet::CoreGame::core->addEvent(Gauntlet::EventType::MAIN_MENU);
      break;
      default :
	break;
    }
}