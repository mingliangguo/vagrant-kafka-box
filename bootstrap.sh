#!/usr/bin/env bash

echo "\n-----Updating ------\n"
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y build-essential

# add for vim8
# add-apt-repository ppa:jonathonf/vim -y
# apt-get update

# required for build vim from source
sudo apt-get install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git cmake
# apt-get install -y vim

echo "\n----- Installing git and others ------\n"
sudo apt-get install zsh
sudo apt-get install -y git
sudo apt-get install -y docker
sudo apt-get install -y nodejs npm
sudo apt-get install -y httpie
sudo apt-get install -y silversearcher-ag

echo "install oh-my-zsh"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

echo "\n ---------- install python tools---------- \n"
sudo apt-get install python-pip
pip install --upgrade pip
pip install git+https://github.com/jeffkaufman/icdiff.git
pip install jsbeautifier
echo "\n----- DONE ------\n"

echo "\n----- Installing Apache and Java 8 ------\n"
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get -y install openjdk-8-jdk
sudo update-alternatives --config java

echo "\n----- Installing maven and gradle ------\n"
sudo apt-get install -y maven
sudo apt-get install -y gradle
echo "\n----- DONE ------\n"

echo "\n----- Configure VIM ------\n"
# sudo apt-add-repository ppa:neovim-ppa/stable
# sudo apt-get update
# sudo apt-get -y install neovim
curl -fsSL https://raw.githubusercontent.com/mingliangguo/mydotfiles/master/minimal-vim.sh |bash
# mkdir -p ~/.config/nvim/
# ln -s .vimrc ~/.config/nvim/init.vim
echo "\n----- DONE ------\n"
