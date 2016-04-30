#!/bin/zsh
if [ "$(uname -s)" = "Darwin" ]; then
  source /usr/local/share/zsh/site-functions/_aws
else
  source /home/dylan/.linuxbrew/share/zsh/site-functions/_aws
fi
