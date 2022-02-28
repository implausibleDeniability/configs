#!/bin/bash
# install zsh
apt-get update
apt-get install -y zsh 
chsh -s $(which zsh)

# install oh-my-zsh
apt-get install -y curl
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

