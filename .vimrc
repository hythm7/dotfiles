syntax on
set paste
colorscheme peachpuff
filetype plugin indent on
set autoindent
set shiftwidth=2
if has('mouse')
  set mouse=a
endif
set tabstop=2
set t_Co=256
set undofile
set undodir=$HOME/.vim/undo/
set backupdir=$HOME/.vim/backup/
set directory=$HOME/.vim/swap/

set runtimepath^=~/.vim/bundle/neomutt.vim
execute pathogen#infect()

let g:perl6_unicode_abbrevs = 1
