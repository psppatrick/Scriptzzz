#!/bin/bash

apt update

apt install -y curl git live-build cdebootstrap; echo $?

#git pull git://git.kali.org/live-build-config.git

#git pull https://github.com/psppatrick/custom-kali-variant-rektv1.git

cp ~/custom-kali-variant-rektv1/kali.list.chroot ~/live-build-config/kali-config/variant-light/package-lists/kali.list.chroot; echo $?

cd ~/live-build-conifg

./build.sh
