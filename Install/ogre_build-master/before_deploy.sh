#! /bin/bash

cd ${TRAVIS_BUILD_DIR}
find . -name \*.* -print

# Compress OGRE Build
zip -r ogre.v1.9.zip ogre/build/
