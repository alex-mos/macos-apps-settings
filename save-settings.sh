# alt-tab
mkdir -p alt-tab/library/preferences/
cp -R ~/Library/Preferences/com.lwouis.alt-tab-macos.plist alt-tab/Library/Preferences/ alt-tab/library/preferences/

# iterm2
mkdir -p iterm2/library/preferences/
cp -R ~/Library/Preferences/com.googlecode.iterm2.plist iterm2/Library/Preferences/ iterm2/library/preferences/

# zsh
mkdir zsh
cp ~/.zshrc zsh

# Karabiner Elements
mkdir -p karabiner/config/
cp ~/.config/karabiner/karabiner.json karabiner/config/

# Sublime Text
mkdir -p sublime-text/library/application-support/packages/user
mkdir -p sublime-text/library/application-support/installed-packages/
cp -R ~/Library/Application\ Support/Sublime\ Text/Packages/User/ sublime-text/library/application-support/packages/user/
cp -R ~/Library/Application\ Support/Sublime\ Text/Installed\ Packages/ sublime-text/library/application-support/installed-packages/

# Sublime Merge
mkdir -p sublime-merge/library/application-support/packages/user
cp -R ~/Library/Application\ Support/Sublime\ Merge/Packages/User/ sublime-merge/library/application-support/packages/user/

# Rectangle
mkdir -p rectangle/library/preferences/
cp -R ~/Library/Preferences/com.knollsoft.Rectangle.plist rectangle/library/preferences/
