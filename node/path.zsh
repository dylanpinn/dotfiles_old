#!/bin/zsh
if [ "$(uname -s)" = "Darwin" ]; then
  export PATH="$PATH:$HOME/.npm/bin"

  export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh"
else
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi

# Completion
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# Autoload node version based on .nvmrc
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
