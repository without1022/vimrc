set nu
set mouse=a "开启鼠标点击"
syntax on        "语法高亮
set tabstop=4    "tab长度
set shiftwidth=4 "缩进长度"



"code format"
"map <F4> :call FormatCode()<CR><CR>
"func FormatCode()
"    exec "w"
"    if &filetype == 'c' || &filetype == 'h'
"        exec "!astyle --style=allman -k3 -W3 -z2 -c -t -s -w -xG -S -p -U -y -j -xC90 -xL --suffix=none %"
"   elseif &filetype == 'cpp' || &filetype == 'cc'
"       exec "!astyle --style=google -k3 -W3 -z2 -c -t -s -w -xG -S -p -U -y -j --suffix=none % > /dev/null 2>&1"
"   else
"       exec "normal gg=G"
"        return
"    endif
"endfunc

"NERDTree
map <F10> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"vim-rainbow
let g:rainbow_active = 1

set nocompatible              " be iMproved, required
filetype off                  " required



let mapleader = ","

let NERDSpaceDelims=1           " 让注释符与语句之间留一个空格

let NERDCompactSexyComs=1       " 多行注释时样子更好看

let g:NERDDefaultAlign = 'left'  "将行注释符左对齐 

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

 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
