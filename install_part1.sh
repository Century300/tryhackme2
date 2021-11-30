#!/bin/bash

# Detect machine
unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)     MACHINE=Linux;;
  Darwin*)    MACHINE=Mac;;
  CYGWIN*)    MACHINE=Cygwin;;
  MINGW*)     MACHINE=MinGw;;
  *)          MACHINE="UNKNOWN:${unameOut}"
esac

echo "Your machine is" __$MACHINE'''__, I used these scripts to install oh-my-zsh, ~/.zshrc configuration, powerlevel10k theme, and other useful packages to the Ubuntu & Kali (Linux) machines on TryHackMe.com, I have not tested the scripts with other machines yet. You might want to run "sudo apt upgrade -y" after running this 1st bash script, but it might take a long time to upgrade all packages.'''

echo '''Please continue by typing ./install_zsh_part2.sh into the terminal to finsh the installation. I could not combine the 2 scripts because after installing oh-my-zsh on TryHackMe.com attackBox machine, the system will stop and ask if you want to change the default shell to /usr/bin/zsh, and you should type Y. '''

# Download package information from all configured sources
sudo apt update

# Installs .oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  # Installs Oh my ZSH with Homebrew (Mac)
  if [[ $MACHINE == "Mac" ]]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi

  # Installs Oh my ZSH with Linux
  if [[ $MACHINE == "Linux" ]]; then
    sudo apt install zsh -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
fi
