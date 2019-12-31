#!/bin/bash
echo "[+] clearning files"
cd ~
rm .vimrc .tmux.conf .screenrc

echo "[+] Cloning my dotfiles.."
git clone https://github.com/dr00py2/dotfiles.git
echo "[+] cloned."
cd dotfiles/
mv .bash_profile .vimrc .screenrc .tmux.conf ~/
echo "[+] Moved"
rm -rf dotfiles/
cd ~
rm .bashrc
mv .bash_profile .bashrc
echo "[+] Renamed."
source ~/.bashrc

sudo apt install vim -y
sudo apt install tmux -y
sudo apt-get install python3

