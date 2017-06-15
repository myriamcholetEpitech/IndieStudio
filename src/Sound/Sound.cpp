//
// sound.cpp for  in /home/myriam/Projet/cpp_indie_studio
// 
// Made by Myriam
// Login   <myriam.cholet@epitech.eu>
// 
// Started on  Wed May 10 16:00:41 2017 Myriam
// Last update Mon May 22 20:02:59 2017 Mymy Aragon
//


/*#include "Sound/Sound.hpp"
#include <unistd.h>

Sound::Sound()
{
}

void			Sound::loadAttackSound(std::string const &path)
{
  this->loadBuffer(this->attack, path, ATTACK);
}

void			Sound::playAttack()
{
  this->attack.play();
}

void			Sound::loadBuffer(sf::Sound &sound, std::string path, Sound::soundsList name)
{
  sf::SoundBuffer	buffer;

  if (!buffer.loadFromFile(path))
    {
      std::cerr << "Coundn't load " << path << std::endl;
      return;
    }
  this->SoundBuffers.push_back(buffer);
  sound.setBuffer(this->SoundBuffers[name]);
  std::cout << path << " load success : " << name << std::endl;
}


//	Exemple pour lancer un son


// int	main()
// {
//   Sound	sound;

//   sound.spell.play();
//   sleep(2);
//   sound.pig.play();
//   while(1);
// }
*/