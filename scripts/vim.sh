echo "Install ViM"
brew install vim
echo "Create tmp folder for swp files ~/.vimtmp"
mkdir -p ~/.vimtmp
echo "Create a backup folder at ~/.vimbackup"
mkdir -p ~/.vimbackup
echo "Create symlinks for .vim and .vimrc, prep for Vundle"
ln -s ~/setup/files/vimrc ~/.vimrc
mkdir ~/.vim
echo "Pull the latest Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Install vim plugins"
vim +PluginInstall +qall
