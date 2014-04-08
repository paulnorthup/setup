echo "Create tmp folder for swp files ~/.vimtmp"
mkdir -p ~/.vimtmp
echo "Create a backup folder at ~/.vimbackup"
mkdir -p ~/.vimbackup
echo "Create symlinks for .vim and .vimrc"
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
echo "Pull vim plugins from respective repos"
cd ~/dotfiles
git submodule init
git submodule update
echo "Create doc folder for vim-showmarks"
mkdir -p ~/dotfiles/vim/bundle/showmarks/doc
echo "Add ZSH config, alias, and prompt"
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/aliases.zsh $ZSH_CUSTOM/aliases.zsh
ln -s ~/dotfiles/zsh/prompt.zsh $ZSH_CUSTOM/prompt.zsh
echo "Source the new ZSH config"
source ~/.zshrc
