mkdir -p ~/.vimtmp
mkdir -p ~/.vimbackup
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
cd ~/dotfiles
git submodule init
git submodule update
