#!/bin/sh
test "$(which apm)" || return 0
apm update --confirm false
apm install \
  atom-beautify \
  atom-wrap-in-tag \
  color-picker \
  editorconfig \
  file-icons \
  go-plus \
  language-diff \
  language-docker \
  linter \
  linter-ruby \
  native-ui \
  sort-lines \
  package-sync
