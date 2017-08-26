set tabstop=4 shiftwidth=4 expandtab softtabstop=4
so ~/inkpot.vim
so ~/python.vim
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set nu
set colorcolumn=90
set clipboard=unnamedplus
set hlsearch
set incsearch
set smartcase
hi Search guibg=LightBlue
map <F2> :Ccontinue <CR>
map <F4> :exe "C print " . expand("<cword>") <CR>
map <F5> :Pyclewn pdb %:p <CR> <CR>
map <S-F5> :Cexitclewn <CR>
map <F8> :Cn <CR>
map <S-F8> :Cstep <CR>
map <F9> :exe "Cbreak " . expand("%:p") . ":" . line(".")<CR>
map <F10> :TagbarToggle<CR>

execute pathogen#infect()
call pathogen#helptags()

let g:pymode = 1
let g:pymode_motion = 1
let g:pymode_folding = 1
let g:pymode_lint = 0
let g:pymode_rope = 0
" Pylint configuration file
let g:pymode_lint_config = '$HOME/pylint.rc'

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'

highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

