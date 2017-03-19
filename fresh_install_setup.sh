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
autojump \
sublime-text \
apt-transport-https \
ca-certificates \
curl \
software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install docker-ce -y

sudo usermod -a -G docker robert

cd ~
curl -L http://install.ohmyz.sh | sh

sudo apt install ubuntu-make && umake android && umake ide idea

mkdir -p ~/Developer/repositories
cd ~/Developer/repositories
git clone git@github.com:roberttaylor426/custom-scripts.git
git clone git@github.com:roberttaylor426/personal-config.git
cp personal-config/{.zshrc,.gitconfig,.vimrc,.bash_aliases} ~/
cp personal-config/.byobu/.tmux.conf ~/.byobu

echo "Don't forget to install: Slack."
