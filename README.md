# ubuntu-server vim configuration

Use this guide to install vim with my usual configuration on an ubuntu server.

## Install

Make vim directory, grab pathogen, clone this repo here, clone bundles.

```
mkdir ~/.vim && cd ~/.vim && \
git clone https://github.com/metacoin/vim-ubuntu.git . && \
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
mv .vimrc ~/.vimrc && cd bundle && \
git clone https://github.com/fatih/vim-go.git && \
git clone https://github.com/plasticboy/vim-markdown.git && \
git clone https://github.com/tomlion/vim-solidity.git ~/.vim/bundle/vim-solidity && \
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
```

## Main differences

The main differences is the use of tabs instead of buffers, NERDTree makes up for the lack of a visual file manager. ctrl-p is also configured to open in a new tab instead of a new buffer. 

Airline is not used because it is less than ideal on ssh terminals anyway, NERDTree wins here.

## Colors

There is a colors directory. It contains most of the good colors.

## Extras

https://github.com/Valloric/MatchTagAlways
