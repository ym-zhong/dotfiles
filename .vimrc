" 不与Vi兼容
set nocompatible

" 打开语法高亮
syntax on

" 显示模式
set showmode

" 显示命令
set showcmd

" 使用鼠标
set mouse=a

" 使用utf-8编码
set encoding=utf-8

" 下一行缩进自动与上一行保持一致
set autoindent

" Tab对应空格数
set tabstop=4

" >>、<<或==一级缩进对应的字符数
set shiftwidth=4

" 将Tab自动转为空格
set expandtab

" Tab转为多少个空格
set softtabstop=4

" 显示行号
set number

" 设置行宽
set textwidth=80

" 显示状态栏
set laststatus=2

" 光标遇到括号时，自动高亮对应另一个括号
set showmatch

" 高亮显示匹配结果
set hlsearch

" 当搜索每输入一个字符时，就自动跳转到第一个匹配的结果
set incsearch

" 当搜索词含有大写字母时，大小写敏感；否则，大小写不敏感
set ignorecase
set smartcase

" 打开英语单词的拼写检查
set spell spelllang=en_us

" 出错时不发出警报
set noerrorbells

" 记录多少次历史操作
set history=1000

" 打开文件监视，编辑文件过程发生外部改变发出提示
set autoread

" 命令模式下按Tab补全命令
set wildmenu
set wildmode=longest:list,full

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
" 在正常模式下禁用方向键
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
" inoremap <Left>  <ESC>:echoe "Use h"<CR>
" inoremap <Right> <ESC>:echoe "Use l"<CR>
" inoremap <Up>    <ESC>:echoe "Use k"<CR>
" inoremap <Down>  <ESC>:echoe "Use j"<CR>

" 启用256色
set t_Co=256

" 配色方案
syntax enable
set background=dark
" colorscheme solarized
colorscheme molokai
