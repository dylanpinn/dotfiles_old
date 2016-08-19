#!/bin/sh
if test "$(which code)"; then
  if [ "$(uname -s)" = "Darwin" ]; then
    VSCODE_HOME="$HOME/Library/Application Support/Code"
  else
    VSCODE_HOME="$HOME/.config/Code"
  fi

  ln -sf "$ZSH/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
  ln -sf "$ZSH/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"

  modules="
    Borke.Puppet
    CraigMaslowski.erb
    DotJoshJohnson.xml
    EditorConfig.EditorConfig
    HookyQR.JSDocTagComplete
    HookyQR.beautify
    HvyIndustries.crane
    Kasik96.format-indent
    PeterJausovec.vscode-docker
    WakaTime.vscode-wakatime
    codezombiech.gitignore
    dbaeumer.jshint
    dbaeumer.vscode-eslint
    deerawan.vscode-dash
    donjayamanne.githistory
    donjayamanne.python
    eg2.tslint
    felixfbecker.php-debug
    georgewfraser.vscode-javac
    haaaad.ansible
    hoovercj.ruby-linter
    ikappas.phpcs
    joelday.docthis
    linyang95.phpmd
    lukehoban.Go
    minhthai.vscode-todo-parser
    misogi.ruby-rubocop
    ms-vscode.cpptools
    ms-vscode.csharp
    ms-vscode.jscs
    msjsdiag.debugger-for-chrome
    rebornix.Ruby
    robertohuertasm.vscode-icons
    seanmcbreen.Spell
    vsmobile.vscode-react-native
    zhutian.swig
  "
  for module in $modules; do
    code --install-extension "$module" || true
  done
fi
