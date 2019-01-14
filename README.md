# ubuntu-server vim configuration

Use this guide to install vim with my usual configuration on an ubuntu server.

## Install

Make vim directory, grab pathogen, clone this repo here, clone bundles.

```
mkdir ~/.vim && cd ~/.vim && \
git clone https://github.com/metacoin/vim-ubuntu.git . && \
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
mv vimrc ~/.vimrc && cd bundle && \
git clone https://github.com/fatih/vim-go.git && \
git clone https://github.com/plasticboy/vim-markdown.git && \
git clone https://github.com/tomlion/vim-solidity.git ~/.vim/bundle/vim-solidity && \
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript && \
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
```

## tmux fix
.bashrc:
```
alias tmux="tmux -2"
export VISUAL=vim
export EDITOR="$VISUAL"
```

.tmux.conf:
```
set -g default-terminal "xterm-256color"
```

.vimrc:
See from `"use 256 colors in terminal`


## Main differences

The main differences is the use of tabs instead of buffers.

Airline is not used because it is less than ideal on ssh terminals anyway, NERDTree wins here.

## Colors

There is a colors directory. It contains most of the good colors.

## Extras

https://github.com/Valloric/MatchTagAlways
