#!/bin/bash

echo "[CONFIG] Elementary terminal"
gsettings set io.elementary.terminal.settings palette $(cat terminal/pallete.txt)
gsettings set io.elementary.terminal.settings cursor-color $(cat terminal/cursor-color.txt)

echo "[CONFIG] Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -f bash/.bashrc ~/.bashrc
ln -f zsh/.zshrc ~/.zshrc
ln -f zsh/.zprofile ~/.zprofile

curl -sS https://starship.rs/install.sh | sh -s -- --yes

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "[CONFIG] I3"
pip3 install --user bumblebee-status i3-workspace-names-daemon --break-system-packages

mkdir ~/.config/i3

ln -f i3/config ~/.config/i3/config
ln -f i3/compton.conf ~/.config/i3/compton.conf
ln -f i3/app-icons.json ~/.config/i3/app-icons.json

ln -f resources/background.jpg ~/Imágenes/background.jpg
