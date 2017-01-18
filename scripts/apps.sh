echo "Install Utilities"
brew install wget tig ag
xcode-select --install
echo "Install basic applications"
brew cask install spotify google-chrome clipmenu caffeine slack iterm2 sketch firefox sizeup atom
echo "Install fonts"
brew tap caskroom/fonts
brew cask install font-avenir font-open-sans font-fontawesome
