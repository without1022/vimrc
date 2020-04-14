set nu
set mouse=a "开启鼠标点击"
syntax on        "语法高亮
set tabstop=4    "tab长度
set shiftwidth=4 "缩进长度"
set cuc
set cul



"code format"
"sudo apt-get install astyle
map <F4> :call FormatCode()<CR><CR>
func FormatCode()
	exec "w"
	if &filetype == 'c' || &filetype == 'h'
		exec "!astyle --style=allman -b -k3 -W3 -z2 -c -t -s -w -xG -S -p -U -y -j -xC90 -xL --suffix=none %"
	elseif &filetype == 'cpp' || &filetype == 'cc'
		exec "!astyle --style=google -k3 -W3 -z2 -c -t -s -w -xG -S -p -U -y -j --suffix=none % > /dev/null 2>&1"
	else
		exec "normal gg=G"
		return
	endif
endfunc


"plugin config start

"NERDTree
map <F10> :NERDTreeToggle<CR>

"tarbar
nmap <F8> :TagbarToggle<CR>

"youcompleteMe
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"vim-rainbow
let g:rainbow_active = 1

set nocompatible              " be iMproved, required
filetype off                  " required



let mapleader = ","

let NERDSpaceDelims=1           " 让注释符与语句之间留一个空格

let NERDCompactSexyComs=1       " 多行注释时样子更好看

let g:NERDDefaultAlign = 'left'  "将行注释符左对齐 
"plugin config end




"mkdir -p ~/.vim/bundle
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdcommenter'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'majutsushi/tagbar'

 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
