" General config
:set nu
syntax on
" Plugins
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim'
call plug#end()


" Identation Config
set autoindent
filetype plugin indent on
autocmd Filetype php setlocal sts=4 sw=4 expandtab
autocmd Filetype blade setlocal sts=2 sw=2 expandtab
autocmd Filetype perl setlocal sts=4 sw=4 expandtab
autocmd Filetype sh setlocal sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal sts=2 sw=2 expandtab
autocmd Filetype sql setlocal sts=2 sw=2 expandtab
autocmd Filetype lua setlocal sts=2 sw=2 expandtab
autocmd Filetype haskell setlocal sts=2 sw=2 expandtab
autocmd Filetype scss setlocal sts=2 sw=2 expandtab
autocmd Filetype html setlocal sts=2 sw=2 expandtab
autocmd Filetype python setlocal sts=4 sw=4 expandtab
autocmd Filetype c setlocal sts=4 sw=4 expandtab
autocmd Filetype ruby setlocal sts=2 sw=2 expandtab
autocmd Filetype vcl setlocal sts=4 sw=4 expandtab
autocmd Filetype json setlocal sts=2 sw=2 expandtab
autocmd Filetype erb setlocal sts=4 sw=4 expandtab

" colorscheme
syntax on
let g:onedark_hide_endofbuffer = 1
colorscheme onedark
set background=dark
set termguicolors
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
endif

" Lint highlight config
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
let g:onedark_hide_endofbuffer = 1
highlight ALEErrorSign ctermfg=9 ctermbg=NONE guifg=#b73c3c guibg=NONE
highlight ALEWarningSign ctermfg=11 ctermbg=NONE guifg=#ED6237 guibg=NONE

"Nerdtree config
map <C-b> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 &&
            \ isdirectory(argv()[0]) &&
            \ !exists("s:std_in") | exe 'NERDTree'
            \ argv()[0] | wincmd p | ene | endif

augroup nerdtreehidecwd
    autocmd!
    autocmd FileType nerdtree setlocal
                \ conceallevel=3 | syntax match
                \ NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
    autocmd FileType nerdtree syntax match NERDTreeHideCWD #^[</].*$# conceal
augroup end

let NERDTreeIgnore=['node_modules', 'www', 'public', '\.pyc$', '\~$', '\.db$', '\.sqlite$', '__pycache__']

" devIcons config
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1

" IdentLine Config
let g:indentLine_char = '⎸'
let g:indentLine_enabled = 1
let g:indentLine_first_char = '⎸'
let g:indentLine_color_term = 200
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_leadingSpaceChar = '⎸'
