#!/bin/sh

mkdir -p ~repos
git clone https://github.com/libsdl-org/SDL.git ~/repos/SDL
cd ~/repos/SDL

git co release-2.0.18

./configure --host=arm-raspberry-linux-gnueabihf \
	    --disable-video-opengl \
	    --disable-video-x11 \
	    --disable-pulseaudio \
	    --disable-esd \
      --disable-video-wayland &&

make -j3

sudo make install
