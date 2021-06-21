set nocompatible
filetype off

call plug#begin()
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

" File tree
Plug 'scrooloose/nerdtree'

" Completion
Plug 'ncm2/ncm2'
set completeopt=noinsert,menuone,noselect
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" Linting
Plug 'w0rp/ale'

" Rust support
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

" Discord integration
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_enter = 0
let g:ale_virtualtext_cursor = 1
let g:ale_rust_rls_config = {
	\ 'rust': {
		\ 'all_targets': 1,
		\ 'build_on_save': 1,
		\ 'clippy_preference': 'on'
	\ }
	\ }
let g:ale_rust_rls_toolchain = ''
let g:ale_linters = {'rust': ['rls']}
highlight link ALEWarningSign Todo
highlight link ALEErrorSign WarningMsg
highlight link ALEVirtualTextWarning Todo
highlight link ALEVirtualTextInfo Todo
highlight link ALEVirtualTextError WarningMsg
highlight ALEError guibg=None
highlight ALEWarning guibg=None
let g:ale_sign_error = "✖"
let g:ale_sign_warning = "⚠"
let g:ale_sign_info = "i"
let g:ale_sign_hint = "➤"

map <C-n> :NERDTreeToggle<CR>
