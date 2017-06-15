//
// Created by benito on 26/05/17.
//

#include <cmath>
#include <Components/Model.hpp>
#include <CoreGame.hpp>
#include <random>
#include "AI/AI.hpp"
#include "Components/AIScript.hpp"
#include "Entity/Character/Hero.hpp"
#include <Entity/Character/Ghost.hpp>
#include <Entity/Character/Boss.hpp>
#include <Entity/Character/MiniBoss.hpp>

Gauntlet::AI::AI() : _level(0), _wave(0)
{
  auto _waves = std::vector<int>();
  _waves.push_back(3);
  _waves.push_back(9);
  _waves.push_back(18);
  _armyCounter.push_back(_waves);
  _waves.clear();
  _waves.push_back(2);
  _waves.push_back(4);
  _waves.push_back(8);
  _waves.push_back(15);
  _waves.push_back(30);
  _armyCounter.push_back(_waves);
  _waves.clear();
  _waves.push_back(1);
  _armyCounter.push_back(_waves);
}

void Gauntlet::AI::addPlayer(std::shared_ptr<Gauntlet::Entity> const &hero)
{
    static_cast<Gauntlet::Hero *>(hero.get())->becomeAI(_army);
    _AIheroes.push_back(hero);
}

void Gauntlet::AI::placeBadGuy(std::shared_ptr<Gauntlet::Entity> const& entity) const
{
    std::random_device rd;
    std::default_random_engine gen(rd());
    std::uniform_int_distribution<int> x(50, 75);
    std::uniform_int_distribution<int> z(50, 70);
    /* à mettre dans le constructeur ? */

        auto pr = std::make_pair(x(gen), z(gen));

        if (pr.first % 2 == 0)
            pr.first *= -1;
        if (pr.second % 2 == 0)
            pr.second *= -1;

        auto pos = Ogre::Vector3(pr.first, 0, pr.second);

            entity->setEntityTrans(pos, Ogre::Vector3(-1, 0, 0));
}

bool        Gauntlet::AI::createSoldier()
{
    if (_level == _armyCounter.size() - 1 && _wave >= _armyCounter[_level].size())
      return (false);
    if (_level == CoreGame::levels)
    {
        CoreGame::core->addEvent(Gauntlet::EventType::QUIT);
        return (false);
    }
    auto nbEntities = _armyCounter[_level][_wave];
    while (nbEntities > 0)
    {
        std::shared_ptr<Entity> entity;
        if (_level == 0)
            entity = EntityFactory::create<Pig>();
        else if (_level == 1)
            entity = EntityFactory::create<Ghost>();
	    else if (_level == 2)
	      entity = EntityFactory::create<Boss>();
        this->placeBadGuy(entity);
        this->_army.push_back(entity);
        CoreGame::core->addEntity(entity);
        nbEntities--;
	std::cout << "while (nbEntities != 0)" << nbEntities << _level << "  " << _wave << std::endl;
    }
    _wave++;
    if (_wave > _armyCounter[_level].size())
    {
        _level++;
        _wave = 0;
        //std::cerr << "pop level_end : " << _level << std::endl;
        Gauntlet::CoreGame::core->addEvent(Gauntlet::EventType::LEVEL_END);
    }
    return (false);
}

float		Gauntlet::AI::calculDir(float a, float b)
{
    //std::cout << "diff = " << a - b << std::endl;
    if (a - b < -1.0f)
        return (-1.0f);
    else if (a - b > 1.0f)
        return (1.0f);
    return (0.0f);
}

void		Gauntlet::AI::play(std::vector<std::shared_ptr<Gauntlet::Entity>> const& heroes)
{
  if (_army.size() < 1)
    {
      createSoldier();
    }

    for (auto const& h : _AIheroes)
    {
        auto const& scriptComponent = h->get<Gauntlet::IAIScript>();
        if (h)
        {
            auto event = scriptComponent.makeAction(h, heroes);
            if (event != nullptr)
            {
                event->_entities.push_back(h);
                Gauntlet::CoreGame::core->events.emplace_back(event);
            }
        }
    }
    for (auto const& s : this->_army)
      {
        auto *event = s->get<Gauntlet::IAIScript>().makeAction(s, heroes);
    	if (event != nullptr)
	      {
	        event->_entities.push_back(s);
    	    Gauntlet::CoreGame::core->events.emplace_back(event);
	      }
      }
}

void Gauntlet::AI::takeEvent(Event const &evt)
{
  if (evt._type == Gauntlet::EventType::DESTROY && evt._entities[0]->type == Entity::Type::EVIL)
    this->destroyEnt(evt._entities[0].get());
}

void		Gauntlet::AI::destroyEnt(Gauntlet::Entity* ent)
{
    this->_army.erase(std::remove_if(
        	 this->_army.begin(), this->_army.end(),
	         [ent](std::shared_ptr<Gauntlet::Entity> & obj)
	        { return (ent == obj.get()); }),
    	 this->_army.end());
}

void		Gauntlet::AI::destroyAllEnt()
{
  this->_AIheroes.clear();
  this->_army.clear();
  this->_level = 0;
  this->_wave = 0;
}
