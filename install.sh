#!/bin/bash
############################
# .make.sh
# # This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# ############################

echo "If you want a fresh install use --fresh"
echo "✨"
echo "✨"
echo "✨"
echo "✨"

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

zsh_dir=$dir/zsh
vim_dir=$dir/vim
emacs_dir=$dir/emacs.d

zsh_files="zprofile zshrc"
vim_files="vimrc viminfo"
files="gitconfig vim"    # list of files/folders to symlink in homedir

if [ "$1" == "--fresh" ]; then
  ############## Install Homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  ############# Install Node
  brew install node

  ############# Install ZSH
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  ############# Install AG
  brew install ag

  ############# Install AG
  brew install ripgrep

  ############# Install Chruby
  brew install chruby

  ############# Install Ruby-Install
  brew install ruby-install

  ############ Install Pure
  npm install --global pure-prompt

  ############ Install Prettier
  npm install --global prettier

  ########### Install Emacs
  brew install emacs

  ########## Install VIM
  brew install macvim

  ########## Install MongoDB
  brew install mongodb

  ######### Install cmake
  brew install cmake

  ######## Install libtool
  brew install libtool

  ######## Install libvterm
  brew install libvterm
fi

########## Copy over dotfiles

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# change to the dotfiles directory
# echo "Changing to the $dir directory"
# cd $dir
#
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

for file in $zsh_files; do
  echo "Moving any existing ZSH dotfiles from ~ to $olddir"
  mv ~/.$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $zsh_dir/$file ~/.$file
done

for file in $vim_files; do
  echo "Moving any existing VIM dotfiles from ~ to $olddir"
  mv ~/.$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $vim_dir/$file ~/.$file
done

echo "Moving any existing Emacs dotfiles from ~ to $olddir"
mv ~/.$emacs_dir $olddir
echo "Creating symlink to $emacs_dir in home directory."
cd ~ && ln -s ./$dir/$emacs_dir emacs.d && mv emacs.d .emacs.d && cd $dir
