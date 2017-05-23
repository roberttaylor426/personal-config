#!/usr/bin/env bash

# Add PPAs
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo add-apt-repository ppa:peterlevi/ppa

sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install \
apt-transport-https \
autojump \
byobu \
ca-certificates \
chromium-browser \
compiz compizconfig-settings-manager compiz-plugins-extra \
curl \
git \
indicator-multiload \
nautilus-dropbox \
openvpn \
oracle-java8-installer \
software-properties-common \
sublime-text \
variety variety-slideshow \
vim \
zsh \
-y

# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install docker-ce -y

sudo usermod -a -G docker robert

# Install zsh
cd ~
curl -L http://install.ohmyz.sh | sh

# Install custom scripts and config
mkdir -p ~/Developer/repositories
cd ~/Developer/repositories
git clone git@github.com:roberttaylor426/custom-scripts.git
git clone git@github.com:roberttaylor426/personal-config.git
cp -R custom-scripts ~/
cp personal-config/{.zshrc,.gitconfig,.vimrc,.bash_aliases} ~/
cp personal-config/.byobu/.tmux.conf ~/.byobu

mkdir -p ~/Developer/tools

echo "Don't forget to install: IntelliJ, Slack."
echo "Don't forget to setup: VPN, Intellij coding styles, Compiz config (Put, Disable Alt-F7, Alt-F1, Alt."
