"Copy this file to $HOME/.vimrc"

set runtimepath=~/Dropbox/lib/vim,$VIM,$VIMRUNTIME
let $MYVIMRC="~/Dropbox/lib/vim/user/startup.vim"
runtime user/startup.vim
runtime! user/*-rc.vim
