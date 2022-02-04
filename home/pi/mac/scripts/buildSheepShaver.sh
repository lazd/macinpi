#!/bin/sh

sudo apt-get install libsdl1.2debian

mkdir -p ~/repos
git clone https://github.com/cebix/macemu.git ~/repos/macemu

cd ~/repos/macemu/SheepShaver/src/Unix

NO_CONFIGURE=1 ./autogen.sh &&

./configure --enable-sdl-audio --enable-sdl-video --disable-vosf \
	--disable-gtktest \
	--enable-addressing=direct \
	--without-mon --without-esd --without-gtk --disable-jit &&
make -j3 &&

sudo make install

