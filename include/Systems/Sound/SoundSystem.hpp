//
// Sound.hpp for  in /home/myriam/Projet/cpp_indie_studio
// 
// Made by Myriam
// Login   <myriam.cholet@epitech.eu>
// 
// Started on  Fri May 12 17:06:35 2017 Myriam
// Last update Mon May 22 19:57:26 2017 Mymy Aragon
//

#ifndef SOUND_HPP_
#define SOUND_HPP_

#include <SFML/Audio.hpp>
#include <iostream>
#include <unordered_map>
#include "Components/Components.hpp"
#include "Systems/System.hpp"

namespace Gauntlet
{
    class SoundSystem : public System
    {
        class SoundNotFound : public std::runtime_error
        {
            public:
                SoundNotFound(std::string const& n) : std::runtime_error("Could not find sound : " + n)
                {}
        };

        public:
            SoundSystem();

            virtual void takeEvent(Gauntlet::Event const&) override;
            virtual ~SoundSystem() {};

        private:
            std::vector< std::unique_ptr<sf::Music> > _musicBuffers;
            std::vector< std::unique_ptr<sf::Music> > _defeat;
            std::vector< std::unique_ptr<sf::Music> > _mainMenu;
            sf::Music       *playing;
            unsigned int    counter;
            static const std::string musicByLevelPath;
            static const std::string soundPath;
            static const std::string musicForMenuPath;
            //static const std::string musicForDefeatPath;

        public:
            void             stopMusic();
        private:
            void             loadDirOfMusic(std::string const&, std::vector<std::string>&,
                                            std::vector< std::unique_ptr<sf::Music> >&) const;
            void             playSound(std::string const&);
            sf::SoundBuffer  loadBuffer(std::string const& path);
            void             handleCollision(std::shared_ptr<Gauntlet::Entity> const& entity);
            void             handleMove(std::shared_ptr<Gauntlet::Entity> const& entity);
            void             handleAttack(std::shared_ptr<Gauntlet::Entity> const& entity);
            void             handleIdle(std::shared_ptr<Gauntlet::Entity> const& entity);
            void             handleDestroy(std::shared_ptr<Gauntlet::Entity> const& entity);
            void             handleLevelEnd();
            void             handleMenu();
            std::unordered_map<std::string, std::pair<sf::SoundBuffer, sf::Sound> > _soundBuffers;
    };
}
#endif /* !SOUND_HPP_ */
