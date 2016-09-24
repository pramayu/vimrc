     
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/
 "set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
 set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
 set laststatus=2
 set t_Co=256
 syntax on
 filetype plugin on
 set omnifunc=syntaxcomplete


 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 let g:vim_markdown_folding_style_pythonic = 1
 let g:vim_markdown_toc_autofit = 1
 let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown", "ruby"]
 " let g:seoul256_background = 233
 "colo 256-grayvim
 "colo railscasts
 "colo alduin
 "colorscheme molokai_dark
 colo lucid
 "colo jellybeans
 "colo dracula
 let g:user_emmet_mode='a'
 let g:airline_powerline_fonts=1
 "let g:airline_theme='base16_eighties' " dark simple badwolf solarized solarized2
"  autocmd vimenter * NERDTree
"  autocmd vimenter * if !argc() | NERDTree | endif
"  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
 let NERDChristmasTree=0
 let NERDTreeMapHelp=''
 let NERDTreeWinSize=30
 let NERDTreeChDirMode=2
 let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
 " let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
 let NERDTreeShowBookmarks=0
 "let NERDTreeWinPos = "" 
 " nerdcommenter
 let NERDSpaceDelims=1
 let NERDTreeMouseMode=3
 " nmap <D-/> :NERDComToggleComment<cr>
 let NERDCompactSexyComs=1
 let NERDTreeMinimalUI = 1
 let NERDTreeDirArrows = 1
 let NERDTreeMouseMode = 1
 let NERDTreeDirArrowExpandable = "⠋"
 let NERDTreeDirArrowCollapsible = "⠴"
 let g:ctrlp_map='<c-p>'
 let g:ctrlp_cmd='CtrlP'
 let g:user_emmet_leader_key='<c-x>'
 let g:user_emmet_prev_key='<c-j>'
 let g:user_emmet_next_key='<c-k>'
 imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
 " multi cursor 
 let g:multi_cursor_next_key='<C-n>'
 let g:multi_cursor_prev_key='<C-p>'
 let g:multi_cursor_skip_key='<C-x>'
 let g:multi_cursor_quit_key='<Esc>'
 let html_no_rendering=1
 " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<c-d>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"
 
 " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

 let delimitMate_expand_cr = 1

 "Airline
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_theme="dracula"
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = '|'
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_powerline_fonts = 1

 "line guide
 let g:indentLine_concealcursor = 'inc'
 let g:indentLine_conceallevel = 2
 let g:indentLine_char = '¦'
 let g:indentLine_color_term = 239
 "highlight LineNr ctermfg=237 ctermbg=233
 "map
 
 :au VimEnter * :GitGutterDisable
 :au VimEnter * :GitGutterLineHighlightsEnable
 
 
 "set
 :set fillchars+=vert:\|
 :hi VertSplit ctermbg=NONE guibg=NONE
 :set number
 :set numberwidth=4
 :set foldcolumn=0
 :set shiftwidth=4
 :set tabstop=8
 :set lbr
 :set tw=500
 :set ruler
 :set scrolloff=5
 :set mouse=a
"  :set cursorline
 :set linebreak 
 :set splitbelow
 :set smarttab

 :set ai "Auto indent
 :set si "Smart indent
 :set wrap "Wrap lines
 :set encoding=utf8
 :set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

 "auto cmd
 autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
 autocmd FileType python set sw=4 sts=4 et

 autocmd! BufRead,BufNewFile *.sass setfiletype sass 

 autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
 autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;
 autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
 autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
 autocmd FileType ruby,eruby let g:rubycomplete_rails = 1


 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 "Plugin

 NeoBundle 'https://github.com/tpope/vim-rails'
 NeoBundle 'https://github.com/vim-ruby/vim-ruby'
 NeoBundle 'https://github.com/scrooloose/nerdtree'
 NeoBundle 'https://github.com/jistr/vim-nerdtree-tabs'
 NeoBundle 'https://github.com/airblade/vim-gitgutter'
 NeoBundle 'https://github.com/plasticboy/vim-markdown'
 NeoBundle 'https://github.com/tpope/vim-markdown'
 NeoBundle 'https://github.com/msanders/snipmate.vim'
 NeoBundle 'https://github.com/flazz/vim-colorschemes'
 NeoBundle 'https://github.com/junegunn/seoul256.vim'
 NeoBundle 'https://github.com/mattn/emmet-vim'
 NeoBundle 'https://github.com/vim-airline/vim-airline'
 NeoBundle 'https://github.com/vim-airline/vim-airline-themes'
 NeoBundle 'https://github.com/akmassey/vim-codeschool'
 NeoBundle 'https://github.com/ChrisKempson/Tomorrow-Theme'
 NeoBundle 'https://github.com/kien/ctrlp.vim'
 NeoBundle 'https://github.com/terryma/vim-multiple-cursors'
 NeoBundle 'https://github.com/SirVer/ultisnips'
 "NeoBundle 'https://github.com/honza/vim-snippets'
 NeoBundle 'https://github.com/Valloric/YouCompleteMe'
 NeoBundle 'https://github.com/yggdroot/indentline'
 NeoBundle 'https://github.com/Raimondi/delimitMate'
 NeoBundle 'https://github.com/tomtom/tcomment_vim'
 NeoBundle 'https://github.com/tpope/vim-fugitive'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
