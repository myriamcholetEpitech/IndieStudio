				Installer CEGUI :
	  
Requis :
sudo apt-get --reinstall install python-support
sudo apt-get --reinstall install mercurial mercurial-common
sudo apt-get -y install build-essential automake libtool
sudo apt-get -y install libfreetype6-dev libfreeimage-dev libzzip-dev
sudo apt-get -y install libxrandr-dev libxaw7-dev freeglut3-dev libgl1-mesa-dev libglu1-mesa-dev
sudo apt-get -y install nvidia-cg-toolkit libois-dev libboost-thread-dev libboost-all-dev
sudo apt-get -y install cmake cmake-gui
sudo apt-get -y install build-essential libiconv-hook-dev libfribidi-dev
sudo apt-get -y install libpcre3-dev libfreetype6-dev freeglut3-dev libpython-dev
sudo apt-get -y install libglew-dev libglm-dev libois-dev libxml2-dev python-opengl pyside-tools libboost-python-dev libboost-dev -y
sudo apt-get -y install libcpprest-dev


Dans Home (au meme endroit que Ogre) :
     hg clone https://bitbucket.org/cegui/cegui
     cd cegui && hg update v0-8 && hg checkout 75b9fcc4e3cb
Dans build :
     cmake -DCEGUI_BUILD_PYTHON_MODULES=ON -DCEGUI_BUILD_RENDERER_OPENGL=ON -DCEGUI_BUILD_RENDERER_OPENGL3=ON .-DCEGUI_BUILD_RENDERER_OGRE=ON ../
     make -j4
     sudo make install
