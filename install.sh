echo "Set up git defaults"
git config --global user.email "paul@paulnorthup.com"
git config --global user.name "Paul Northup"
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
echo "Create tmp folder for swp files ~/.vimtmp"
mkdir -p ~/.vimtmp
echo "Create a backup folder at ~/.vimbackup"
mkdir -p ~/.vimbackup
echo "Create symlinks for .vim and .vimrc"
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
echo "Pull vim plugins from respective repos"
echo "Add ZSH config, alias, and prompt"
rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
echo "Source the new ZSH config"
source ~/.zshrc
