#!/bin/zsh

echo "Installing Golang"
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
sudo tar -xvf go1.14.4.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.zshrc
echo 'export GOPATH=$HOME/go'   >> ~/.zshrc
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
