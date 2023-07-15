## App preferences

# alt-tab
cp ./alt-tab/library/preferences/com.lwouis.alt-tab-macos.plist ~/Library/Preferences/

# iterm2
cp ./iterm2/library/preferences/com.googlecode.iterm2.plist ~/Library/Preferences/

# zsh

# Karabiner Elements

# Sublime Text

# Sublime Merge

# Rectangle



## System preferences

# Show the Library directory in the home directory.
chflags nohidden ~/Library

# disable apple music launch with play button
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
