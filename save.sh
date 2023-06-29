mkdir -p alt-tab
mkdir -p alt-tab/Library/LaunchAgents/
mkdir -p alt-tab/Library/Preferences/
cp -R ~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist ./alt-tab/Library/LaunchAgents/
cp -R ~/Library/Preferences/com.lwouis.alt-tab-macos.plist ./alt-tab/Library/Preferences/

mkdir -p iterm2
mkdir -p iterm2/Library/Preferences/
cp -R ~/Library/Preferences/com.googlecode.iterm2.plist ./iterm2/Library/Preferences/
