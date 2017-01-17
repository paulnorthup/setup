echo "Install Utilities"
brew install wget ruby
xcode-select --install
echo "Install basic applications"
brew cask install spotify google-chrome sip clipmenu caffeine slack iterm2 firefox sizeup atom
echo "Install fonts"
brew tap caskroom/fonts
brew cask install font-avenir font-open-sans font-futura font-fontawesome
