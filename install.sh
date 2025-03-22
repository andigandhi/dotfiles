#!/usr/bin/env sh
set -eu

# install git
sudo apt --yes --force-yes install git

# Clone Repo
git clone https://github.com/andigandhi/dotfiles $HOME/.dotfiles

# Install dependencies using apt
sudo apt --yes --force-yes install sway waybar swaylock fuzzel mako-notifier zathura light zathura-pdf-poppler ssh-askpass lsd udiskie imagemagick zsh
sudo apt --yes --force-yes pipewire pipewire-pulse pavucontrol blueman

# install zed
curl -f https://zed.dev/install.sh | sh

# install Zen Browser
bash <(curl https://updates.zen-browser.app/appimage.sh)

# link config files
mkdir -p $HOME/.config/
ln -s $HOME/.dotfiles/config/* $HOME/.config/

# set zsh as default shell
sudo chsh -s /usr/bin/zsh $USER
# Link zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/

# TODOs:
# - Font
# - Ly
#

sway
