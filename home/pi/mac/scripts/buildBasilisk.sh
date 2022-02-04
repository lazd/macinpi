#!/bin/sh

sudo apt-get install automake gobjc

mkdir -p ~/repos
git clone https://github.com/cebix/macemu.git ~/repos/macemu
cd ~/repos/macemu/BasiliskII/src/Unix

NO_CONFIGURE=1 ./autogen.sh &&

./configure --enable-sdl-audio --enable-sdl-video --disable-vosf \
  --without-mon --without-esd --without-gtk --disable-jit-compiler --disable-nls &&
make -j3 &&

sudo make install

