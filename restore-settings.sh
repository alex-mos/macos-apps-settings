# clone repository with settings
git clone git@github.com:alex-mos/macos-apps-settings.git ~/settings

# alt-tab
cp -R ./alt-tab/Library/Preferences/com.lwouis.alt-tab-macos.plist ~/Library/Preferences/

# iterm2
cp -R ./iterm2/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/

# zsh

# Karabiner Elements

# Sublime Text

# Sublime Merge



# Show the Library directory in the home directory.
chflags nohidden ~/Library

# disable apple music launch with play button
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist