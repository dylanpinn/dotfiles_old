#!/bin/sh
test "$(which apm)" || return 0
apm update --confirm false
apm install \
  package-sync
apm remove metrics exception-reporting || true
