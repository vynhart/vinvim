# Vim Configuration
This repository containing my vim configuration for use in each of my machines.

## How to use the same configuration to your new machine?
Following are the steps to set vim configuration in new machine:

### Make sure Git Installed
Make sure git installed. Otherwise : `$ sudo apt-get install git`

### Install vundle
run:
  `$ mkdir ~/.vim && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### Setup
1. Clone this repo
  `$ git clone https://github.com/vynhart/vinvim`
2. CD to downloaded directory, run 
  `$ sh ./setup.sh`
3. open vim, and run:
  `PluginInstall`
