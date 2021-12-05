### Install oh-my-zsh, custom .zshrc, powerlevel10k theme, and other useful packages
These are 2 bash scripts to fast install some packages to a host machine (particuallyr in TryHackMe.com machines).

This repository is exactly the same with the other one https://github.com/Century300/tryhackme except this one also runs "sudo apt upgrade -y" to install all available upgrades. This procecss takes a long time to complete in Ubuntu & Kali on TryHackMe.com, hence, I made a seperated repository.

I used these scripts to install oh-my-zsh, my .zshrc configuration, powerlevel10k theme, and other useful packages to the Ubuntu & Kali (Linux) machines on TryHackMe.com, I have not tested the scripts with other machines yet.

### My .zshrc configuration
- Theme: powerlevel10k/powerlevel10k (The scripts automatically installed the powerlevel10k official fonts [MesloLGS](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k), but you would need to manually change the font to MesloLGS Regular in your terminal profile).
- Plugins used from $HOME/.oh-my-zsh/plugins/: git sudo web-search dirhistory history jsontools colored-man-pages command-not-found autojump history-substring-search
- Added custom plugins in $HOME/.oh-my-zsh/custom/plugins/: zsh-autosuggestions k zsh-syntax-highlighting

### Other packages
- tilix terminal emulator, tree, neofetch, htop

## Instructions
- git clone https://github.com/Century300/tryhackme2.git ~/Downloads/tryhackme2 (require this path to install Meslo Fonts properly)
- cd ~/Downloads/tryhackme2
- sudo chmod +x install*
- ./install_zsh_part1.sh
- _(type Y when you see "Do you want to change your default shell to zsh?")_
- ./install_zsh_part2.sh
- source ~/.zshrc
- sudo rm -rf ~/Downloads/tryhackme2
