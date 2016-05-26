#!/bin/bash

# not tested!

git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim

configDir=$PWD

cd ~
ln -s $configDir .vim
ln -s $configDir/vimrc .vimrc

vim -c ':PluginInstall'
