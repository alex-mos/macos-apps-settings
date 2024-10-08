## App preferences

### alt-tab
cp ./alt-tab/library/preferences/com.lwouis.alt-tab-macos.plist ~/Library/Preferences/

### iterm2
cp ./iterm2/library/preferences/com.googlecode.iterm2.plist ~/Library/Preferences/

### zsh
cp ./zsh/.zshrc ~/
source ~/.zshrc

### Karabiner Elements
cp ./karabiner/config/karabiner.json ~/.config/karabiner

### Sublime Text
cp -R ./sublime-text/library/application-support/packages/user/ ~/Library/Application\ Support/Sublime\ Text/Packages/User/
cp -R ./sublime-text/library/application-support/installed-packages/ ~/Library/Application\ Support/Sublime\ Text/Installed\ Packages/

### Sublime Merge
cp -R ./sublime-merge/library/application-support/packages/user/ ~/Library/Application\ Support/Sublime\ Merge/Packages/User/

### Rectangle
cp ./rectangle/library/preferences/com.knollsoft.Rectangle.plist ~/Library/Preferences/com.knollsoft.Rectangle.plist


### Firefox
defaults write ~/Library/Preferences/org.mozilla.firefox EnterprisePoliciesEnabled -bool  true
defaults write ~/Library/Preferences/org.mozilla.firefox DisableAppUpdate -bool true
defaults write ~/Library/Preferences/org.mozilla.firefox DisableTelemetry -bool true

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
git clone git@github.com:alex-mos/clean-ansi-layout.git
./clean-ansi-layout/install.sh

# macOS user dictionary
cp LocalDictionary ~/Library/Spelling/
