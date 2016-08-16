 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/
 set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
 set laststatus=2
 set t_Co=256

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 let g:vim_markdown_folding_style_pythonic = 1
 let g:vim_markdown_toc_autofit = 1
 let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]
 let g:seoul256_background = 233
 colo 256-grayvim 
 let g:user_emmet_mode='a'
 let g:airline_powerline_fonts=1
 let g:airline_theme='base16_eighties' " dark simple badwolf solarized solarized2
 " autocmd vimenter * NERDTree
 " autocmd vimenter * if !argc() | NERDTree | endif
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
 let NERDChristmasTree=0
 let NERDTreeWinSize=30
 let NERDTreeChDirMode=2
 let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
 " let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
 let NERDTreeShowBookmarks=1
 "let NERDTreeWinPos = "" 
 " nerdcommenter
 let NERDSpaceDelims=1
 " nmap <D-/> :NERDComToggleComment<cr>
 let NERDCompactSexyComs=1
 let g:ctrlp_map='<c-p>'
 let g:ctrlp_cmd='CtrlP'
 let g:user_emmet_leader_key='<c-y>'
 let g:user_emmet_prev_key='<c-j>'
 let g:user_emmet_next_key='<c-k>'
 imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


 "set
 :set t_Co=256
 :set fillchars+=vert:\|
 :hi VertSplit ctermbg=NONE guibg=NONE
 :set number
 :set numberwidth=4
 :set foldcolumn=1
 :set shiftwidth=4
 :set tabstop=4
 :set lbr
 :set tw=500

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


 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 "Plugin

 NeoBundle 'https://github.com/tpope/vim-rails'
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

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
