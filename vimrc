" vim: sw=2 sw=2 et
" - alan's .vimrc
" - vim-plug + plugins
call plug#begin('~/.vim/plugged')
  Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
  Plug 'elzr/vim-json', {'for' : 'json'}
  Plug 'fatih/vim-go'
  Plug 'plasticboy/vim-markdown'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'itchyny/lightline.vim'
call plug#end()
" - colorscheme
set background=dark
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
"colorscheme slate
" - gui config
if has('gui_running')
  set guioptions+=T
  set guifont=Victor\ Mono\ Medium\ 14
endif
" - console config
if !has('gui_running')
  set termguicolors
  set t_Co=256
endif
" - behave like windows
source $VIMRUNTIME/mswin.vim
behave mswin
" - the rest
set ruler
set laststatus=2
set noshowmode
set number                    " show line numbers
syntax enable                 " enable syntax highlighting
set encoding=utf-8            " set default encoding
set nobackup                  " disable file backups
set fileformats=unix,dos,mac  " prefer unix over windows over mac for line terminators
set maxmempattern=20000       " increase max memory to show syntax highlighting for large files
" lightline settings
let g:lightline = {
	\ 'colorscheme': 'one',
	\ }
" vim-markdown settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['go=go', 'viml=vim', 'bash=sh']
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 1
" vim-json settings
let g:vim_json_syntax_conceal = 0

