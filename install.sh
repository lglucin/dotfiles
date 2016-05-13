#!/bin/bash

function timestamp {
  date +"%Y-%m-%d_%H-%M-%S"
}

stamp=$(timestamp)
PWD=$(pwd)

if [ ! -d backup ];
then
  mkdir backup
fi

mkdir backup/$stamp

if [ -f ~/.vimrc ];
then
  mv ~/.vimrc backup/$stamp/vimrc
fi

ln -sf $PWD/vimrc ~/.vimrc

if [ -f ~/.xvimrc ];
then
  mv ~/.xvimrc backup/$stamp/xvimrc
fi

ln -sf $PWD/vimrc ~/.xvimrc

if [ -f ~/.bashrc ];
then
  mv ~/.bashrc backup/$stamp/bashrc
fi

ln -sf $PWD/bash_profile ~/.bashrc

if [ -f ~/.bash_profile ];
then
  mv ~/.bash_profile backup/$stamp/bash_profile
fi

ln -sf $PWD/bash_profile ~/.bash_profile

if [ -d ~/.vim ];
then
  mv ~/.vim backup/$stamp/vim
fi

cp -R ~/.vim
