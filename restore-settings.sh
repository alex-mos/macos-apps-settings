## App preferences

# alt-tab
cp ./alt-tab/library/preferences/com.lwouis.alt-tab-macos.plist ~/Library/Preferences/

# iterm2
cp ./iterm2/library/preferences/com.googlecode.iterm2.plist ~/Library/Preferences/

# zsh
cp ./zsh/.zshrc ~/
source ~/.zshrc

# Karabiner Elements
cp ./karabiner/config/karabiner.json ~/.config/karabiner

# Sublime Text

# Sublime Merge

# Rectangle



## System preferences

# Show the Library directory in the home directory.
chflags nohidden ~/Library

# disable apple music launch with play button
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# scripts
cp -R ./scripts/ ~/scripts
chmod +x ~/scripts/*

# macos
cp .macos/.GlobalPreferences.plist  ~/Library/Preferences/