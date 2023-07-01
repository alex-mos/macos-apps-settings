# alt-tab
mkdir -p alt-tab/Library/LaunchAgents/
mkdir -p alt-tab/Library/Preferences/
cp -R ~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist alt-tab/Library/LaunchAgents/
cp -R ~/Library/Preferences/com.lwouis.alt-tab-macos.plist alt-tab/Library/Preferences/

# iterm2
mkdir -p iterm2/Library/Preferences/
cp -R ~/Library/Preferences/com.googlecode.iterm2.plist iterm2/Library/Preferences/

# zsh
mkdir zsh
cp ~/.zshrc zsh

# Karabiner Elements
cp -R ~/.config/karabiner/karabiner.json karabiner/config/

# Sublime Text
mkdir -p sublime-text/library/application-support/
cp -R ~/Library/Application\ Support/Sublime\ Text sublime-text/library/application-support/

# Sublime Merge
mkdir -p sublime-merge/library/application-support/
cp -R ~/Library/Application\ Support/Sublime\ Merge sublime-merge/library/application-support/

# Rectangle
mkdir -p rectangle/library/preferences/
cp -R ~/Library/Preferences/com.knollsoft.Rectangle.plist rectangle/library/preferences/

