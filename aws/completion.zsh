#!/bin/zsh
if [ "$(uname -s)" = "Darwin" ]; then
  source /usr/local/share/zsh/site-functions/_aws
else
  source /home/dylan/.pyenv/versions/2.7.11/bin/aws_zsh_completer.sh
fi
