//
// Created by puente	s on 12/06/17.
//

#include "Menu/MainMenu.hpp"
#include "CoreGame.hpp"

Gauntlet::MainMenu::MainMenu()
	: IMenu(Gauntlet::MenuType::MAIN_MENU),
	  _root(nullptr),
	  _menuEntries(),
	  _cursor(nullptr),
	  _idx(0),
	  _fadeAway(-1)
{
  CEGUI::WindowManager	&winMgr = CEGUI::WindowManager::getSingleton();

  this->_root = winMgr.loadLayoutFromFile("MainMenu.layout");
  auto menu = this->_root->getChild("Menu");
  for (unsigned int id = 0; id < 4; id++)
    this->_menuEntries.push_back(menu->getChild(id));
  this->_cursor = menu->getChild(101);

  CEGUI::System::getSingleton().getDefaultGUIContext().getRootWindow()->addChild(this->_root);
}

Gauntlet::MainMenu::~MainMenu()
{

}

void Gauntlet::MainMenu::updateMenu()
{
}

void		Gauntlet::MainMenu::takeEvent(Gauntlet::Event const &event)
{
  switch (event._type)
    {
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

void		Gauntlet::MainMenu::show(bool isShowed) {
  if (isShowed) {
      this->_idx = 0;
      this->updateButtonSize();
      this->_root->show();
      Gauntlet::CoreGame::core->isMenuOn = true;
  } else {
	this->_root->hide();
  }
}

void		Gauntlet::MainMenu::validateMenu()
{
  switch(this->_idx)
    {
      case 0 :
	//Continue
	break;
      case 1 :
	//New Game
	Gauntlet::CoreGame::core->addEvent(Gauntlet::EventType::NEW_GAME);
      	this->_fadeAway = 1;
      break;
      case 2 :
	//Options
	break;
      case 3 :
	Gauntlet::CoreGame::core->addEvent(Gauntlet::EventType::QUIT);
      break;
      default :
	break;
    }
}

void		Gauntlet::MainMenu::updateButtonSize()
{
  this->_menuEntries[this->_idx]->setProperty("Font", "Runic-MT-28");
  this->_menuEntries[this->_idx]->setProperty("NormalTextColour", "FFFFFFFF");
  if (this->_idx > 0)
    {
      this->_menuEntries[this->_idx - 1]->setProperty("Font", "Runic-MT-20");
      this->_menuEntries[this->_idx - 1]->setProperty("NormalTextColour", "FF000000");
    }
  if (this->_idx < this->_menuEntries.size() - 1)
    {
      this->_menuEntries[this->_idx + 1]->setProperty("Font", "Runic-MT-20");
      this->_menuEntries[this->_idx + 1]->setProperty("NormalTextColour", "FF000000");
    }
  //this->_cursor->setYPosition(CEGUI::UDim((this->_idx * 0.2) + 0.05, 0));
  this->_cursor->setArea(this->_menuEntries[this->_idx]->getArea());
}