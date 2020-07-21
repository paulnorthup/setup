echo "Install Utilities"
brew install wget tig ag tmux fonts-powerline
xcode-select --install
echo "Install basic applications"
brew cask install spotify google-chrome caffeine slack iterm2 sketch firefox sizeup
echo "Install fonts"
brew tap caskroom/fonts
brew cask install font-avenir font-open-sans font-fontawesome
