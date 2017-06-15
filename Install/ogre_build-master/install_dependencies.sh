#! /bin/bash

RED='\033[0;31m' # Red
BB='\033[0;34m'  # Blue
NC='\033[0m' # No Color
BG='\033[0;32m' # Green

error() { >&2 echo -e "${RED}$1${NC}"; }
showinfo() { echo -e "${BG}$1${NC}"; }
workingprocess() { echo -e "${BB}$1${NC}"; }
allert () { echo -e "${RED}$1${NC}"; }

# Install extra stuff
sudo apt-get install zip

# Install OGRE dependencies
sudo apt-get install build-essential automake libtool
sudo apt-get install libfreetype6-dev libfreeimage-dev libzzip-dev libxrandr-dev libxaw7-dev freeglut3-dev libgl1-mesa-dev libglu1-mesa-dev
sudo apt-get install nvidia-cg-toolkit libois-dev libboost-thread-dev libboost-all-dev
sudo apt-get install cmake cmake-gui

# Clone OGRE v1.9
cd ${TRAVIS_BUILD_DIR}
git clone https://github.com/OGRECave/ogre
cd ogre/
git checkout v1-9
cd ..

workingprocess "All done."
