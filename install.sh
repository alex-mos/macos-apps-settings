# disable apple music launch with play button
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# karabiner
rm -rf ~/.config/karabiner
ln -s ~/settings/karabiner ~/.config/karabiner

# iterm

# alt-tab
# rm -rf ~/Library/Preferences/com.lwouis.alt-tab-macos.plist
# ln -s ~/settings/com.lwouis.alt-tab-macos.plist ~/Library/Preferences/com.lwouis.alt-tab-macos.plist
# sublime text

# webstorm