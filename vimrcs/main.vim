" Main vim file
" Used to load and execute first commands and load other partial --
" -- vim files that are divided by purpose

set rtp+=/home/marcus/.dotfiles/vim

""""""" Sourced vim files - vundle must go first
:so /home/marcus/.dotfiles/vim/vimrcs/vundle-start.vim
:so /home/marcus/.dotfiles/vim/vimrcs/appearance.vim
:so /home/marcus/.dotfiles/vim/vimrcs/basic.vim
:so /home/marcus/.dotfiles/vim/vimrcs/input.vim
:so /home/marcus/.dotfiles/vim/vimrcs/plugins.vim
