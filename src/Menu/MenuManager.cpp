//
// menu.cpp for  in /home/myriam/Projet/cpp_indie_studio/menu
// 
// Made by Myriam
//

#include <CoreGame.hpp>
#include "Menu/MenuManager.hpp"

Gauntlet::MenuManager::MenuManager()
	: mRenderer(),
	  _menus(),
	  _root(nullptr),
	  _menuIdx(-1)
{
  this->mRenderer = &CEGUI::OgreRenderer::bootstrapSystem();

  CEGUI::ImageManager::setImagesetDefaultResourceGroup("Imagesets");
  CEGUI::Font::setDefaultResourceGroup("Fonts");
  CEGUI::Scheme::setDefaultResourceGroup("Schemes");
  CEGUI::WidgetLookManager::setDefaultResourceGroup("LookNFeel");
  CEGUI::WindowManager::setDefaultResourceGroup("Layouts");

  CEGUI::SchemeManager::getSingleton().createFromFile("Generic.scheme");
  CEGUI::SchemeManager::getSingleton().createFromFile("Gauntlet.scheme");

  CEGUI::WindowManager	&winMgr = CEGUI::WindowManager::getSingleton();

  this->_root = winMgr.createWindow("DefaultWindow", "Root");
  CEGUI::System::getSingleton().getDefaultGUIContext().setRootWindow(this->_root);
}

Gauntlet::MenuManager::~MenuManager()
{
  for (auto & menu : this->_menus)
    menu.reset();

  CEGUI::OgreRenderer::destroy(static_cast<CEGUI::OgreRenderer&>(*mRenderer));
}

void			Gauntlet::MenuManager::takeEvent(Event const &event)
{    
  switch (event._type)
    {
      case (Gauntlet::EventType::VICTORY) :
	this->setActiveMenu(Gauntlet::MenuType::ENDGAME);
      break;
      case (Gauntlet::EventType::DEFEAT) :
	  this->setActiveMenu(Gauntlet::MenuType::ENDGAME);
      break;
      default:
	break;
    }
  if (!this->_menus.empty() && this->_menuIdx != -1)
    this->_menus[this->_menuIdx]->takeEvent(event);
}


void			Gauntlet::MenuManager::updateMenu()
{
  if (!this->_menus.empty() && this->_menuIdx != -1)
    this->_menus[this->_menuIdx]->updateMenu();
}

void			Gauntlet::MenuManager::addHud(std::vector<std::shared_ptr<Gauntlet::Entity> > const &heroes)
{
  Gauntlet::IMenu	*hud;

  if ((hud = this->getMenu(Gauntlet::MenuType::HUD)) != nullptr)
    static_cast<Gauntlet::Hud*>(hud)->initStats(heroes);
  else
    {
      this->_menus.emplace_back(new Gauntlet::Hud(heroes));
      this->_menus.back()->show(false);
    }
}

void			Gauntlet::MenuManager::addGameMenu()
{
  if (this->getMenu(Gauntlet::MenuType::GAME_MENU) == nullptr)
    {
      this->_menus.emplace_back(new Gauntlet::GameMenu());
      this->_menus.back()->show(false);
    }
}

void			Gauntlet::MenuManager::addEndGame()
{
  if (this->getMenu(Gauntlet::MenuType::ENDGAME) == nullptr)
    {
      this->_menus.emplace_back(new Gauntlet::EndGame());
      this->_menus.back()->show(false);
    }
}

void			Gauntlet::MenuManager::addMainMenu()
{
  if (this->getMenu(Gauntlet::MenuType::MAIN_MENU) == nullptr)
    {
      this->_menus.emplace_back(new Gauntlet::MainMenu());
      this->_menus.back()->show(false);
    }
}

bool			Gauntlet::MenuManager::setActiveMenu(Gauntlet::MenuType menuType)
{
  int 			newIdx = 0;

  for (auto & menu : this->_menus)
    {
      if (menu->getMenuType() == menuType)
	{
	  if (this->_menuIdx != -1)
	    this->_menus[this->_menuIdx]->show(false);
	  menu->show(true);
	  this->_menuIdx = newIdx;
	  return (true);
	}
      newIdx++;
    }
  return (false);
}

Gauntlet::IMenu			*Gauntlet::MenuManager::getMenu(Gauntlet::MenuType menuType)
{
  for (auto & menu : this->_menus)
    if (menu->getMenuType() == menuType)
      return (menu.get());
  return (nullptr);
}

