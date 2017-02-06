# Vim Configuration
This repository containing my vim configuration for use in each of my machines.

## How to use the same configuration to your new machine?
Following are the steps to set vim configuration in new machine:

### Make sure Git Installed
Make sure git installed. Otherwise : `$ sudo apt-get install git`

### Install vundle
`$ mkdir ~/.vim && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### clone this repository
1. Run this command: `$ cd && git clone git@github.com:vynhart/vinvim.git && cp ~/vinvim/.vimrc .vimrc && mkdir ~/.vim/colors && cp -r ~/vinvim/colors ~/.vim`
2. open vim, and run:
`PluginInstall`
