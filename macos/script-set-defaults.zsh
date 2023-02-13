# Set defaults for macOS

if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

echo " - New Finder window opens HOME directory"
defaults write com.apple.finder NewWindowTarget -string 'PfHm'

echo " - Display file extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo " - Display hidden files"
defaults write com.apple.finder AppleShowAllFiles True

echo " - Always open everything in Finder's column view"
defaults write com.apple.Finder FXPreferredViewStyle clmv

echo " - Show volumes on the Desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
