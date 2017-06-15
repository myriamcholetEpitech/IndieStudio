//
// Components.hpp for indie in /home/benito/rendu/cpp/cpp_indie_studio/include
// 
// Made by benito
// Login   <benoit.linsey@epitech.eu>
// 
// Started on  Tue May  9 19:37:24 2017 benito
// Last update Tue May 23 16:53:18 2017 benito
//

#ifndef COMPONENTS_HPP_
# define COMPONENTS_HPP_

struct IComponent
{
  enum class Type
    {
      POSITION,
      STATS,
      ASSETS,
      ATTACK,
      ANIMATION,	
    };
  
  virtual ~IComponent() {}
};


// // struct ClassInfo : public IComponent
// // {
// //   //enum correspondant au type d'entité
// // };


// struct	Attack : public IComponent
// {
//   int	dammage;
//   int	speed;
//   int	range; // Pourrait être un objet plus complexe, dépend des collisions
//   virtual ~Attack() {}
// };

// struct	Asset : public IComponent
// {
//   std::string name;//Cf Ogre
//   virtual ~Asset() {}
// };

// struct	SoundAnimation : public IComponent
// {
//   std::string onDeath;
//   std::string onAttack;
//   std::string onTheMove;

//   virtual ~SoundAnimation() {}
// };

# endif //COMPONENTS_HPP_
