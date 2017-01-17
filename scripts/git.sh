echo "Install Git"
brew install git
echo "Set up git defaults"
git config --global user.email "paul@paulnorthup.com"
git config --global user.name "Paul Northup"
git config --global push.default simple
echo "Create global gitignore"
ln -s ./gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
