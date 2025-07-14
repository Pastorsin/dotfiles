#!/bin/bash

echo "[DEPENDENCIES] Elementary terminal"
add-apt-repository ppa:elementary-os/stable -y
apt-get install io.elementary.terminal -y

echo "[DEPENDENCIES] Zsh"
apt-get install zsh curl -y

echo "[DEPENDENCIES] Zsh plugins"
apt-get install git tmux direnv python3-dev python3-pip python3-setuptools -y

echo "[DEPENDENCIES] I3"
apt-get install i3 compton feh numlockx maim xclip -y
apt-get install fonts-powerline fonts-font-awesome -y
