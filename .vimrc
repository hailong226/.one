syntax on
filetype off

set number
set nobackup
set smartindent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

au BufNewFile,BufRead *.py
			\ set tabstop=4
			\ set softtabstop=4
			\ set shiftwidth=4
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
" set nocompatible

" let g:minBufExplForceSyntaxEnable = 1
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 自动补全
Plugin 'Valloric/YouCompleteMe'

" vim scala 插件
Plugin 'derekwyatt/vim-scala'

" vim golang 插件
Plugin 'fatih/vim-go'

Plugin 'SirVer/ultisnips'

" 代码折叠（Code Folding）
Plugin 'tmhedberg/SimpylFold'

" Python代码缩进
Plugin 'vim-scripts/indentpython.vim'

" 语法检查/高亮
Plugin 'scrooloose/syntastic'

" PEP8代码风格检查
Plugin 'nvie/vim-flake8'

" 配色方案
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" 文件浏览
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" 超级搜索
Plugin 'kien/ctrlp.vim'

" Git集成
Plugin 'tpope/vim-fugitive'

" vim-go settings
let g:go_fmt_command = "goimports"

let python_highlight_all=1

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

call vundle#end()
filetype plugin indent on

