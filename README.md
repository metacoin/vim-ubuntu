# ubuntu-server vim configuration

Use this guide to install vim with my usual configuration on an ubuntu server.

## Install

Make vim directory, grab pathogen, clone this repo here, clone bundles.

```
mkdir ~/.vim && cd ~/.vim && \
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
git clone https://github.com/metacoin/vim-ubuntu.git . && \
mv .vimrc ~/.vimrc && cd bundle && \
git clone https://github.com/fatih/vim-go.git && \
git clone https://github.com/plasticboy/vim-markdown.git && \
git clone https://github.com/tomlion/vim-solidity.git ~/.vim/bundle/vim-solidity && \
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
```

## Colors

There is a colors directory. It contains most of the good colors.

## Extras

https://github.com/Valloric/MatchTagAlways
