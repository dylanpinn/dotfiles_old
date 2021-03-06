#!/bin/sh
export PATH="$PATH:$HOME/.pyenv/bin"

__pyenv_started=0

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

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
