#!/bin/sh

__pyenv_started=0

if [ "$(uname -s)" != "Darwin" ]; then
  export PATH="$HOME/.pyenv/bin:$PATH"
fi

__pyenv_init() {
  test $__pyenv_started = 0 && {
    eval "$(command pyenv init -)"
    __pyenv_started=1
  }
}

pyenv() {
  __pyenv_init
  command pyenv "$@"
}

python() {
  __pyenv_init
  command python "$@"
}

pip() {
  __pyenv_init
  command pip "$@"
}

#if [ "$(uname -s)" = "Darwin" ]; then
#  pyenv() {
#    eval "$(command pyenv init -)"
#    pyenv "$@"
#  }
#else
#  export PATH="$HOME/.pyenv/bin:$PATH"
#  eval "$(pyenv init -)"
#  eval "$(pyenv virtualenv-init -)"
#fi
