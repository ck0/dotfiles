#! /usr/bin/env zsh

dotdir=$(readlink -f $(pwd))
backupdir=dotfiles.$(date +%s).backup

(
cd $HOME
mkdir $backupdir
mv .aliases $backupdir
ln -svf $dotdir/dotaliases .aliases
mv .vimrc $backupdir
ln -svf $dotdir/dotvimrc .vimrc
mv .inputrc $backupdir
ln -svf $dotdir/dotinputrc .inputrc
mv .zshrc $backupdir
ln -svf $dotdir/dotzshrc .zshrc
mv .pythonrc $backupdir
ln -svf $dotdir/dotpythonrc .pythonrc
mv .rubyrc $backupdir
ln -svf $dotdir/dotrubyrc .rubyrc

source .zshrc
)

