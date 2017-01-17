echo "install zsh and completions"
brew install zsh zsh-completions
echo "Add ZSH config, alias, and prompt"
ln -s ./files/zshrc ~/.zshrc
echo "Source the new ZSH config"
source ~/.zshrc
