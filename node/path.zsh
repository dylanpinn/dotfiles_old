#!/bin/zsh
if [ "$(uname -s)" = "Darwin" ]; then
  export PATH="$PATH:/usr/local/share/npm/bin:$HOME/.npm/bin"

  export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh"
else
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi
