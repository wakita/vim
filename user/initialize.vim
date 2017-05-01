"Copy this file to $HOME/.vimrc"

set runtimepath=$DROPBOX/lib/vim,$VIM,$VIMRUNTIME
let $MYVIMRC="$DROPBOX/lib/vim/user/startup.vim"
runtime user/startup.vim
runtime! user/*-rc.vim
