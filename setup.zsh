#! usr/bin/env zsh

dotdir=$(readlink -f $(pwd))

(
cd $HOME
ln -svf $dotdir/dotaliases .aliases
ln -svf $dotdir/dotvimrc .vimrc
ln -svf $dotdir/dotinputrc .inputrc
ln -svf $dotdir/dotzshrc .zshrc
ln -svf $dotdir/dotpythonrc .pythonrc
ln -svf $dotdir/dotrubyrc .rubyrc
)

