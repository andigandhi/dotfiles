#!/usr/bin/env sh
set -eu

# install git
sudo apt install git

# Clone Repo
git clone https://github.com/andigandhi/dotfiles $HOME/.dotfiles

# Install dependencies using apt
sudo apt install sway waybar swaylock fuzzel mako-notifier zathura light zathura-pdf-poppler ssh-askpass lsd udiskie imagemagick zsh

# install zed
curl -f https://zed.dev/install.sh | sh

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# link config files
ln -s $HOME/.dotfiles/config/* $HOME/.config/

# set zsh as default shell
sudo chsh -s /usr/bin/zsh $USER
# Link zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/
