#!/bin/bash

# main execution function to allow forward declarations
function main()
{
    script_path=$(current-script-path)
    link_path="$HOME/.vimrc"
    vimrcs_path="$script_path/vimrcs"
    main_vimrc_path="$vimrcs_path/main.vim"
    vundle_start_config_path="$vimrcs_path/vundle-start.vim"
    bundle_path=$script_path/bundle
    vundle_path="$bundle_path/Vundle.vim"

    echo "Preparing vim for current users..."
    generate-main-vim-file $main_vimrc_path
    link-config $main_vimrc_path $link_path

    install-vundle $vundle_path
    generate-vundle-vim-file $vundle_start_config_path
    vim +PluginInstall +qall
}

# function to determine the path to where this script is located
# AS OPPOSED to the present directory which may be somewhere else
function current-script-path()
{
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do
        dir="$( cd -P "$( dirname "$source" )" && pwd )"
        source="$(readlink "$source")"
        # if this $source is a relative symlink,
        # it needs to be resolved to its sourcing path
        [[ $source != /* ]] && source="$dir/$source"
    done
    echo "$( cd -P "$( dirname "$source" )" && pwd )"
}

function link-config()
{
    if [ -e $2 ]; then
        echo "Previous link or config already exists, deleting..."
        rm $2
    fi
    echo "Linking vimrc config:"
    echo "$2 -> $1"
    ln -s $1 $2
}

function install-vundle()
{
    echo "Attempting to install Vundle package manager for vim..."
    if [ -e $1 ]; then
        echo "Vundle already appears to be installed, removing..."
        rm -rf $1
    fi
    echo "Installing Vundle with git clone to $1"
    git clone https://github.com/VundleVim/Vundle.vim.git $1
}


function generate-vundle-vim-file()
{
    echo "Generating vundle configuration file..."
    if [ -e $1 ]; then
        echo "Previous vundle configuration file already exists, deleting..."
        rm -rf $1
    fi

    touch $1

    echo "set nocompatible    \" be iMproved, required" >> $1
    echo "filetype off        \" required" >> $1
    echo " " >> $1
    echo "\" set the runtime path to include Vundle and initialize" >> $1
    echo "set rtp+=$vundle_path" >> $1
    echo "\"call vundle#begin()" >> $1
    echo "\" alternatively, pass a path where Vundle should install plugins" >> $1
    echo "call vundle#begin('$bundle_path')" >> $1
    echo " " >> $1
    echo "\" let Vundle manage Vundle, required" >> $1
    echo "Plugin 'VundleVim/Vundle.vim'" >> $1
}

function generate-main-vim-file()
{
  echo "Generating the main vim config file $1"
  if [ -e $1 ]; then
    echo "Previous vundle config exists, deleting, then generating..."
    rm -rf $1
  fi

  touch $1
  echo "\" Main vim file" >> $1
  echo "\" Used to load and execute first commands and load other partial --" >> $1
  echo "\" -- vim files that are divided by purpose" >> $1
  echo "" >> $1
  echo "\"\"\"\"\"\"\" Sourced vim files - vundle must go first" >> $1
  echo ":so $vundle_start_config_path" >> $1

  # loop through all files inside the vimrc folder with *.vim filename
  # add these as sourced vim files for the main.vim config file
  # ignore the vundle config since that needs to go first and is already added
  echo "Sourcing these vim files inside $vimrcs_path:"
  for current_file in $vimrcs_path/*.vim; do
    if [ $current_file -ef $vundle_start_config_path ]; then
      continue
    fi
    if [ $current_file -ef $main_vimrc_path ]; then
      continue
    fi
    echo $current_file
    echo ":so $current_file" >> $1
  done
}

# last statement in script is the call to the main function up top
main
