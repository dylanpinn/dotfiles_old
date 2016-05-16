#!/bin/sh
if [ "$(uname -s)" = "Darwin" ]; then
  pyenv() {
    eval "$(command pyenv init -)"
    pyenv "$@"
  }
else
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
