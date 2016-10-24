#!/bin/zsh
#
# name:          install-mint-soft.sh
# version:       see VERSION.md
# synopsis:      install `mintOS` software
# license:       BSD3
# license-file:  LICENSE.md
# author:        art rimbaud
# maintainer:    rimbaudcode[at]gmail(DoT)com
# copyright:     (c) 2016 rimbaudcode
# category:      System

sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt-get autoclean

sudo apt-get install 
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install zsh-syntak-highlightning

mkdir -p ~/github
cd ~/github
git clone https://github.com/wofr06/lesspipe.git
cd lesspipe
./configure

sudo apt-get install ansiweather
sudo apt-get install coreutils
sudo apt-get install fileutils
sudo apt-get install git-flow
sudo apt-get install glances
sudo apt-get install gnuplot
sudo apt-get install tmux
sudo apt-get install trash-cli
sudo apt-get install tree
sudo apt-get install w3m

sudo apt-get install ranger
ranger --copy-config=all

cd ~/github
git clone https://github.com/rimbaudcode/dotfiles.git
git clone https://github.com/rimbaudcode/scripts.git
git clone https://github.com/rimbaudcode/tao.git
git clone https://github.com/rimbaudcode/tonato.git

sudo apt-get emacs-24-nox

sudo apt-get libz-dev
