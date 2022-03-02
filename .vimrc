call plug#begin()
Plug 'preservim/nerdtree',{'as':'nerdtree'}
Plug 'ap/vim-css-color'
Plug 'Raimondi/delimitMate'
Plug 'neoclide/coc.nvim',{'do':'yarn install --frozen-lockfile'}
Plug '907th/vim-auto-save',{'as':'AutoSave'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc-prettier',{'as':'prettier','do':'yarn install'}
Plug 'ryanoasis/vim-devicons'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'morhetz/gruvbox', { 'as':'gruvbox' }
call plug#end()

let g:auto_save = 1
let g:auto_save_events=["InsertLeave","TextChanged"]
" hi Pmenu term=standout ctermfg=14 ctermbg=242

hi Pmenu cterm=underline ctermfg=250 ctermbg=235 gui=underline guifg=#bcbcbc guibg=#262626
hi PmenuSel cterm=underline ctermfg=250 ctermbg=131 gui=underline guifg=#bcbcbc guibg=#af5f5f

let g:gruvbox_contrast_dark = 'hard'

syntax on
colorscheme gruvbox
set background=dark 

" let g:prettier#autoformat = 1
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue :silent exec
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
"let g:devicons_enable = 1
" let g:devicons_enable_nerdtree = 1

set nu!
set pumwidth=10
set pumheight=15

execute pathogen#infect()

set noswapfile	

set guicursor+=n-v-c:blinkon0

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

augroup myCmds
au!
autocmd InsertEnter * silent !echo -ne "\e[2 q"
augroup END

nmap <F2> :qa! <CR>
" prettier config
" let g:prettier#config#use_tabs = 'false'
" let g:prettier#config#semi = 'true'
" let g:prettier#config#trailing_comma = 'none'
" let g:prettier#autoformat_config_files = ["~/.vim/plugged/vim-prettier/node_modules/.bin/.prettierrc"]
"

"function Run(Name)  
"	echom a:Name
" endfunction

"call Run("Ola")

noremap <M-Right> :bn! <cr>
noremap <M-Left> :bp! <cr>
noremap <F3> :bwipe! <cr>
noremap <c-x> :bp \| bd # <cr>

noremap <silent> exp :CocCommand explorer . <cr>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'

let g:airline_theme="gruvbox"

nmap <silent> cf <Plug>(coc-definition)
nmap <silent> cd <Plug>(coc-type-definition)
nmap <silent> ci <Plug>(coc-implementation)
nmap <silent> cr <Plug>(coc-references)

set encoding=utf-8
set linebreak
set nobackup
set completeopt=longest,menuone
set autochdir
set tabstop=2

function FileName() 
  let g:fName = system('ls "%"')
   echom fName
endfunction

noremap e :call FileName() <cr> 
