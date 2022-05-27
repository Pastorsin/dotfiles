#!/bin/bash

echo "[DEPENDENCES] Elementary terminal"
add-apt-repository ppa:elementary-os/stable -y
apt-get install libhandy pantheon-terminal dconf-tools -y

echo "[DEPENDENCES] Zsh"
apt-get install zsh curl -y

echo "[DEPENDENCES] Zsh plugins"
apt-get install git tmux direnv thefuck python3-dev python3-pip python3-setuptools python-pkg-resources -y

echo "[DEPENDENCES] I3"
apt-get install i3 compton feh numlockx maim xclip -y
apt-get install fonts-powerline fonts-font-awesome -y
