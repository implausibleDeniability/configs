#!/bin/bash
# install neovim
apt install software-properties-common
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
mkdir -p ~/.configs/nvim/
ln -s  ~/configs/nvim/init.vim ~/.config/nvim/init.vim

# further instructions
echo "In ~/.configs/nvim/init.vim run ':so %', then ':PlugInstall', then ':so %' again"

