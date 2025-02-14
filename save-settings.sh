## Applications settings

### alt-tab
mkdir -p alt-tab/library/preferences/
cp -R ~/Library/Preferences/com.lwouis.alt-tab-macos.plist alt-tab/Library/Preferences/ alt-tab/library/preferences/

### Brave browser


### Ghostty
mkdir -p ghostty/library/application-support/
cp -R /Users/ugo/Library/Application\ Support/com.mitchellh.ghostty/ ghostty/library/application-support/

### Karabiner Elements
mkdir -p karabiner/config/
cp ~/.config/karabiner/karabiner.json karabiner/config/

### Leader Key
mkdir -p leader-key/library/application-support/
cp /Users/ugo/Library/Application\ Support/Leader\ Key/config.json leader-key/library/application-support/

### Sublime Text
mkdir -p sublime-text/library/application-support/packages/user
mkdir -p sublime-text/library/application-support/installed-packages/
cp -R ~/Library/Application\ Support/Sublime\ Text/Packages/User/ sublime-text/library/application-support/packages/user/
cp -R ~/Library/Application\ Support/Sublime\ Text/Installed\ Packages/ sublime-text/library/application-support/installed-packages/

### Sublime Merge
mkdir -p sublime-merge/library/application-support/packages/user
cp -R ~/Library/Application\ Support/Sublime\ Merge/Packages/User/ sublime-merge/library/application-support/packages/user/

### VLC player
mkdir -p vlc/library/preferences/
cp -R ~/Library/Preferences/org.videolan.vlc vlc/library/preferences/

### Rectangle
mkdir -p rectangle/library/preferences/
cp -R ~/Library/Preferences/com.knollsoft.Rectangle.plist rectangle/library/preferences/

### zsh
mkdir -p zsh
cp ~/.zprofile zsh
cp ~/.zshrc zsh

## scripts
cp -R ~/scripts .

## macOS user dictionary
cp ~/Library/Spelling/LocalDictionary .
