#!/bin/bash
# install neovim
DEBIAN_FRONTEND=noninteractive apt install software-properties-common
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install -y neovim

# install pyright
apt-get install curl
curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt-get install -y nodejs
npm install -g pyright

# install vim plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# symbolic link
mkdir -p ~/.config/nvim/
ln -s  ~/configs/nvim/init.vim ~/.config/nvim/init.vim

# further instructions
RED='\033[0;31m'
NC='\033[0m'
echo "${RED}In ~/.config/nvim/init.vim run ':so %', then ':PlugInstall', then ':so %' again${NC}"

