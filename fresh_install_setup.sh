#!/usr/bin/env bash

sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y

sudo apt update
sudo apt upgrade

sudo apt install vim \
compiz compizconfig-settings-manager compiz-plugins-extra \
indicator-multiload \
chromium-browser \
byobu \
zsh \
oracle-java8-installer \
nautilus-dropbox \
git \
sublime-text -y

sudo apt install ubuntu-make && umake android && umake ide idea

mkdir -p ~/Developer/repositories
cd ~/Developer/repositories
git clone git@github.com:roberttaylor426/custom-scripts.git
git clone git@github.com:roberttaylor426/personal-config.git
cp personal-config/{.zshrc,.gitconfig,.vimrc} ~/
cp personal-config/.byobu/.tmux.conf ~/.byobu

echo "Don't forget to install: Slack."
