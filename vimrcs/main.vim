" Main vim file
" Used to load and execute first commands and load other partial --
" -- vim files that are divided by purpose

set rtp+=/home/marcus/Dotfiles/vim

""""""" Sourced vim files - vundle must go first
:so /home/marcus/Dotfiles/vim/vimrcs/vundle-start.vim
:so /home/marcus/Dotfiles/vim/vimrcs/appearance.vim
:so /home/marcus/Dotfiles/vim/vimrcs/basic.vim
:so /home/marcus/Dotfiles/vim/vimrcs/input.vim
:so /home/marcus/Dotfiles/vim/vimrcs/plugins.vim
