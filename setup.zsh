#! /usr/bin/env zsh

# because OSX's `readlink` is all retarded
function readlinkf () {(cd -P $1 && echo $(pwd))}

dotdir=$(readlinkf $(pwd))
backupdir=dotfiles.$(date +%s).backup

function dotrelink () {
  if [[ -a $2 ]]; then
    mv -v $2 $backupdir;
  fi
  ln -svf $dotdir/$1 $2
}

(
  cd $HOME
  mkdir $backupdir

  dotrelink dotaliases .aliases
  dotrelink dotvimrc .vimrc
  dotrelink dotinputrc .inputrc
  dotrelink dotzshrc .zshrc
  dotrelink dotpythonrc .pythonrc
  dotrelink dotrubyrc .rubyrc

  source .zshrc
)

