#!/bin/bash

function dotfiles(){
    rm -rf $HOME/.dotfiles
    cp -r $HOME/github/dotfiles $HOME/.dotfiles
    cd $HOME/.dotfiles
}

function stows(){
    stow home
    stow i3
    stow polybar
}

function install(){
    dotfiles
    stows
}

# Coloque seu usuário
[[ $USER == "d1060" ]] && install || echo No

# Reiniciar i3
i3-msg restart
