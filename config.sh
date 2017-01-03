#!/bin/bash

# configuration tmux
ln ~/.one/.tmux.conf ~/.tmux.conf

# configuration vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln ~/.one/.vimrc ~/.vimrc

curl -O https://raw.githubusercontent.com/vince67/v7_config/master/vim.sh
bash vim.sh

# configuration zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
