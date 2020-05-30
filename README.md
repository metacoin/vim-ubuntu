# ubuntu-server vim configuration

Use this guide to install vim with my usual configuration on an ubuntu server.

## Install

### Pre-requisites and basics

```
sudo apt-get update && \
sudo apt-get install -y build-essential curl git vim-gtk3 tmux dconf-editor gnome-tweak-tool
```

### Make directories and clone vim configs

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

tmux colors can be improved with an addition to `.tmux.conf` and some lines in the `.bashrc` file which can be found below:

.tmux.conf:
```
set -g default-terminal "xterm-256color"
```

There are also some changes to the `.vimrc` file related to tmux, see the section under the `"use 256 colors in terminal` comment

## `.bashrc`
Includes tmux color changes and CPU temperature alias

```
alias tmux="tmux -2"
export VISUAL=vim
export EDITOR="$VISUAL"
alias temps="cat /sys/class/thermal/thermal_zone*/temp"
```

## gvim
Install the latest gvim and turn off the terminal bell
```
sudo apt-get update && \
sudo apt-get install -y vim-gtk3
```

.gvimrc:
```
set guifont=Liberation\ Mono\ 10
set vb t_vb=
```

## tweak (for caps escape, workspaces)
gnome-tweak-tool allows changes to key bindings and static workspaces

## dconf-editor
Allows you to change the hotkey for switching to workspaces beyond workspace #4.
 
## Colors

Included is a vim colorscheme directory filled with many of my favorite colorschemes.

## Extras

https://github.com/Valloric/MatchTagAlways
