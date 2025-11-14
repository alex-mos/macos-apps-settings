## Applications settings

### alt-tab
cp ./alt-tab/library/preferences/com.lwouis.alt-tab-macos.plist ~/Library/Preferences/

### Brave browser


### Ghostty


### Karabiner Elements
cp ./karabiner/config/karabiner.json ~/.config/karabiner

### Leader Key

### Hammerspoon
mkdir -p ~/.hammerspoon
cp -R hammerspoon/* ~/.hammerspoon/

### Sublime Text
cp -R ./sublime-text/library/application-support/packages/user/ ~/Library/Application\ Support/Sublime\ Text/Packages/User/
cp -R ./sublime-text/library/application-support/installed-packages/ ~/Library/Application\ Support/Sublime\ Text/Installed\ Packages/

### Sublime Merge
cp -R ./sublime-merge/library/application-support/packages/user/ ~/Library/Application\ Support/Sublime\ Merge/Packages/User/

### Rectangle
cp ./rectangle/library/preferences/com.knollsoft.Rectangle.plist ~/Library/Preferences/com.knollsoft.Rectangle.plist

### VLC player
cp -R vlc/library/preferences/org.videolan.vlc ~/Library/Preferences/

### zsh
cp ./zsh/.zprofile ~/
cp ./zsh/.zshrc ~/
source ~/.zprofile
source ~/.zshrc

## System preferences

### Show the Library directory in the home directory.
chflags nohidden ~/Library

### disable apple music launch with play button
launchctl load -w /System/Library/LaunchAgents/com.apple.rcd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

### scripts
cp -R ./scripts/ ~/scripts
chmod +x ~/scripts/*

### create global gitignore
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

## Keyboard layouts
mkdir ~/projects
cd ~/projects
git clone git@github.com:alex-mos/mospan-keyboard-layout.git
./mospan-keyboard-layout/install.sh

## macOS user dictionary
cp LocalDictionary ~/Library/Spelling/

## hide unused folders
chflags hidden ~/Desktop
chflags hidden ~/Documents
chflags hidden ~/Movies
chflags hidden ~/Music
chflags hidden ~/Public
chflags hidden ~/Pictures
chflags hidden ~/Sites

## App shortcuts (via https://github.com/alberti42/macOS-hotkeys-manager)
chmod +x ./app_shortcuts/hotkeys-manager.py
./app_shortcuts/hotkeys-manager.py --import ./app_shortcuts/shortcuts.json
