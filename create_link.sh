#!/bin/bash

array=(bash_profile bashrc macrc linuxrc iterm2_shell_integration.bash tmux.conf vimrc vim)

for i in ${array[*]}; do
    ln -s ~/dotfiles/${i} ~/.${i}
done
