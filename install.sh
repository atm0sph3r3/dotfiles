#!/bin/bash

for i in $(ls bash); do
  ln -f -s "$(pwd)/bash/$i" "$HOME/.$i"
done

if [ ! -d $HOME/.ansible ]; then
  mkdir $HOME/.ansible
fi

ln -f -s "$(pwd)/ansible.cfg" $HOME/.ansible/ansible.cfg
ln -f -s "$(pwd)/tmux.conf" $HOME/.tmux.conf
