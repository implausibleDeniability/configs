#!/bin/bash
# install neovim
apt install software-properties-common
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install -y neovim

# install pyright
apt-get install -y npm
npm install pyright

# install vim plugin manager
apt-get install curl
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# symbolic link
mkdir -p ~/.configs/nvim/
ln -s  ~/configs/nvim/init.vim ~/.config/nvim/init.vim

# further instructions
echo "In ~/.configs/nvim/init.vim run ':so %', then ':PlugInstall', then ':so %' again"

