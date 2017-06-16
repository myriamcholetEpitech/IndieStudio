//
// ManageFile.cpp for plazza in /home/benito/rendu/cpp/cpp_plazza/sources
//
// Made by benito
// Login   <benoit.linsey@epitech.eu>
// 
// Started on  Mon Apr 17 10:56:47 2017 benito
// Last update Sun Apr 30 00:17:34 2017 Pierre Zawadil
//

#include <stdexcept>
#include <dirent.h>
#include <cstring>
#include "File/ManageFile.hpp"

ManageFile::ManageFile(std::string const& file) : _fileName(file)
{}

ManageFile::~ManageFile()
{}

void ManageFile::listFiles(std::string const& path, std::vector<std::string> &files)
{
  DIR *dpdf;
  struct dirent *epdf;

  dpdf = opendir(path.c_str());
  if (dpdf != NULL)
  {
    while ((epdf = readdir(dpdf)) != NULL)
    {
      if (epdf->d_type == DT_DIR && strstr(epdf->d_name, "..") == NULL && strstr(epdf->d_name,".") == NULL)
      {
        listFiles(path + "/" + epdf->d_name + "/", files);
      }
      if (epdf->d_type == DT_REG)
      {
        files.push_back(path + epdf->d_name);
      }
    }
  }
  closedir(dpdf);
}

std::string		ManageFile::readFile() const
{
  std::ifstream		f(_fileName.c_str());
  std::string		buffer;

  if (!f.is_open())
    throw std::runtime_error("Couldn't open file " + _fileName);
  f.seekg(0, std::ios::end);
  buffer.resize(f.tellg());
  f.seekg(0);
  f.read((char *)buffer.data(), buffer.size());
  f.close();
  return (buffer);
}

std::string		ManageFile::readFifo() const
{
  std::ifstream		f(_fileName.c_str());
  std::string		buffer;
  std::string		line;

  if (!f.is_open())
    throw std::runtime_error("Couldn't open file " + _fileName);
  while (std::getline(f, line))
    buffer += line;
  return (buffer);
}

std::string		ManageFile::stdin()
{
  std::string		buffer;

  std::getline(std::cin, buffer);
  if (std::cin.eof())
    throw std::runtime_error("");
  if (buffer == "")
    return (" ");
  return (buffer);
}

void		ManageFile::writeFile(std::string const& buffer) const
{
  std::ofstream f(_fileName.c_str());

  if (f.is_open())
    {
      f.write(buffer.data(), buffer.size());
      f.close();
    }
}

void		ManageFile::openFile(std::string const& file)
{
  _fileName = file;
}
