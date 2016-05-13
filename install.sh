#!/bin/bash

function timestamp {
  date + "%Y-%m-%d_%H-%M-%S"
}

stamp=timestamp
PWD=$(pwd)

mkdir backup

if [ -f ~/.vimrc ];
then
  mv ~/.vimrc backup/$stamp
fi

ln -sf $PWD/.vimrc ~/.vimrc

if [ -f ~/.xvimrc ];
then
  mv ~/.xvimrc backup/$stamp
fi

ln -sf $PWD/.vimrc ~/.xvimrc
