#!/bin/zsh


function fh(){
    history | fzf
}

function ff(){
    # for vscode
    fzf --preview 'bat --style=numbers --color=always {}' | xargs -n 1 code
    # for vim/nvim
    # fzf --preview 'bat --style=numbers --color=always {}' | xargs -n 1 vim
}
