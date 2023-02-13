# Install essential packages with Homebrew

if ! type brew > /dev/null 2>&1; then
  echo "Homebrew not found! Please install at -> https://brew.sh/"
  exit 1
fi

echo "Installing packages from Brewfile..."
brew bundle --file macos/Brewfile
