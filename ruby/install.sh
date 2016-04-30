#!/bin/sh
mkdir -p "$(rbenv root)/plugins"
git clone https://github.com/rkh/rbenv-update.git "$(rbenv root)/plugins/rbenv-update"
git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems
git clone https://github.com/ianheggie/rbenv-binstubs.git $(rbenv root)/plugins/rbenv-binstubs
