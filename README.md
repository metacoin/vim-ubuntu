# ubuntu-server vim configuration

Use this guide to install vim with my usual configuration on an ubuntu server.

## Install

Make vim directory, grab pathogen, clone this repo here, clone bundles.

```
mkdir ~/.vim && cd ~/.vim && \
git clone https://github.com/metacoin/vim-ubuntu.git . && \
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
cp vimrc ~/.vimrc
```

### fzf
https://github.com/junegunn/fzf#using-git
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### ag
```
apt-get install silversearcher-ag -y
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
