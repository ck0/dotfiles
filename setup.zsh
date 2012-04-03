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

  # nope
  #for f in $(find $dotdir -type -f -name "*dot"); do
    #dotrelink $f $(echo $f | sed "s/dot/./")
  #done

  dotrelink dotaliases .aliases
  dotrelink dotctags .ctags
  dotrelink dotinputrc .inputrc
  dotrelink dotpentadactylrc .pentadactylrc
  dotrelink dotpythonrc .pythonrc
  dotrelink dotrubyrc .rubyrc
  dotrelink dotscreenrc .screenrc
  dotrelink dotvimrc .vimrc
  dotrelink dotzshrc .zshrc

  source .zshrc
)

