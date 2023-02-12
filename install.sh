brew tap "crowdin/crowdin"
brew install ffmpeg
brew install p7zip
brew install pipenv
brew install yt-dlp
brew install zola
brew install crowdin/crowdin/crowdin@3
brew install --cask alt-tab
brew install --cask dropbox
brew install --cask firefox
brew install --cask freedom
brew install --cask karabiner-elements
brew install --cask michaelvillar-timer
brew install --cask netnewswire
brew install --cask notion
brew install --cask numi
brew install --cask obsidian
brew install --cask sublime-merge
brew install --cask sublime-text
brew install --cask syncthing
brew install --cask telegram
brew install --cask ukelele
brew install --cask unnaturalscrollwheels
brew install --cask vlc
brew install --cask webstorm

# clone repository with settings
git clone git@github.com:alex-mos/macos-apps-settings.git ~/settings

# disable apple music launch with play button
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# karabiner
rm -rf ~/.config/karabiner
ln -s ~/settings/karabiner ~/.config/karabiner

# iterm
# configure according to the screenshot iterm-settings.png

# alt-tab
# configure according to the screenshots in alt-tab folder

# sublime text

# webstorm