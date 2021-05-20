#!/bin/zsh

echo "Installing Golang"
LATEST_GO=$(wget -qO- https://golang.org/dl/ | grep -oP 'go([0-9\.]+)\.linux-amd64\.tar\.gz' | head -n 1 | grep -oP 'go[0-9\.]+' | grep -oP '[0-9\.]+' | head -c -2)
wget https://dl.google.com/go/go$LATEST_GO.linux-amd64.tar.gz
sudo tar -xvf go$LATEST_GO.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.zshrc
echo 'export GOPATH=$HOME/go'   >> ~/.zshrc
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go
