#!/bin/sh
export GOPATH="$PROJECTS/go"
export PATH="$PATH:$GOPATH/bin"
mkdir -p "$GOPATH/bin" "$GOPATH/src/github.com/"
export PATH=$PATH:/home/dylan/.linuxbrew/opt/go/libexec/bin
