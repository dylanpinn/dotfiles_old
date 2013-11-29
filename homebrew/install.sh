#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew install grc coreutils spark z ack
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install caffeine dropbox iterm2 sequel-pro virtualbox vagrant \
  the-unarchiver vlc google-chrome skype transmission dash cloudapp \
  postgres divvy rdio github disk-inventory-x

exit 0