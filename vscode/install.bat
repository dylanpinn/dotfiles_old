REM SET VSCODE_HOME directory
SET VSCODE_HOME=%APPDATA%\Code

REM Symlink settings and keybindings
mklink /h %VSCODE_HOME%\User\settings.json %HOMEDRIVE%%HOMEPATH%\dotfiles\vscode\settings.json
mklink /h %VSCODE_HOME%\User\keybindings.json %HOMEDRIVE%%HOMEPATH%\dotfiles\vscode\keybindings.json

for /F "delims=" %%a in (extensions.txt) do (
     echo %%a
)
