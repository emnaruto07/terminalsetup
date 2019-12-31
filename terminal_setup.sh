#!/bin/bash

echo "[+] Cloning my dotfiles.."
git clone https://github.com/dr00py2/dotfiles.git
echo "[+] cloned."
cd dotfiles/
mv .bash_profile .vimrc .screenrc .tmux.conf ~/
echo "[+] Moved"
cd ~
rm -rf dotfiles
rm .bashrc
mv .bash_profile .bashrc
echo"[+] Renamed."

sudo apt install vim
