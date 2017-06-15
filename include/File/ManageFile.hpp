//
// ManageFile.hpp for plazza in /home/benito/rendu/cpp/cpp_plazza
// 
// Made by benito
// Login   <benoit.linsey@epitech.eu>
// 
// Started on  Mon Apr 17 10:57:09 2017 benito
// Last update Tue Apr 18 11:13:09 2017 Pierre Zawadil
//

#ifndef MANAGE_FILE_HPP
# define MANAGE_FILE_HPP

#include <iostream>
#include <fstream>
#include <vector>

class		ManageFile
{
private:
  std::string	_fileName;
public:
  ManageFile() {};
  ManageFile(std::string const&);
  ~ManageFile();
  std::string		readFile() const;
  std::string		readFifo() const;
  void			writeFile(std::string const&) const;
  void			openFile(std::string const&);
  static std::string	stdin();
  static void listFiles(std::string const&,
                        std::vector<std::string>&);
};

# endif //MANAGE_FILE_HPP
