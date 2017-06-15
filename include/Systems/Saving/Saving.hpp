//
// Created by mymy on 29/05/17.
//

#ifndef INDIE_SAVING_HPP
#define INDIE_SAVING_HPP

#include "json/json.h"
#include <Systems/System.hpp>

namespace Gauntlet
{
    class Saving : public System
    {
      void generateSaving();
      void saveScore();

    public:
        Saving() {};
        ~Saving() {};

        void takeEvent(Gauntlet::Event const &);
    };
}

#endif //INDIE_SAVING_HPP
