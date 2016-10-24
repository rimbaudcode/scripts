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

cd /tmp
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt-get autoclean

# sudo apt-get install zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# sudo apt-get install zsh-syntax-highlighting

# mkdir -p ~/github
# cd ~/github
# git clone https://github.com/wofr06/lesspipe.git
# cd lesspipe
# ./configure
# sudo cp lesspipe.sh code2color /usr/local/bin

# cd ~/github
# git clone https://github.com/rimbaudcode/dotfiles.git
# git clone https://github.com/rimbaudcode/scripts.git
# cd ~/github/scripts
# ./symlinks-mint
# reboot

# install source-code-pro
# * font-manager
cd /tmp
wget -Ok https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
mv k ~/Downloads
cd ~/Downloads

cd /tmp
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
git clone https://github.com/rimbaudcode/tao.git
git clone https://github.com/rimbaudcode/tonato.git

sudo apt-get install emacs24-nox
sudo apt-get install libz-dev
sudo apt-get install zlib1g-dev
sudo apt-get install haskell-stack
sudo -k

cd /tmp
stack update
stack new hello simple
cd hello
stack setup
stack build
#
# if it fails
stack upgrade --git
reboot
#
cd /tmp
stack update
stack new hello simple
cd hello
stack setup
stack build
stack exec hello
