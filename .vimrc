" 使用vim-plug(https://github.com/junegunn/vim-plug)管理插件
call plug#begin()
" 插件列表
Plug 'ycm-core/YouCompleteMe'               " code-completion
Plug 'jiangmiao/auto-pairs'                 " insert or delete in pairs
Plug 'octol/vim-cpp-enhanced-highlight'     " syntax highlighting for C++
Plug 'preservim/nerdtree'                   " tree explorer
Plug 'tomasr/molokai'                       " color scheme
call plug#end()
" :PlugStatus
" :PlugInstall to install plugins
" :PlugUpdate  to update plugins
" :PlugDiff    to review the changes from the last update
" :PlugClean   to remove plugins no longer in the list

" YCM
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_filepath_completion_use_working_dir = 1

" vim-cpp-enhanced-highlight: enable
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

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

" 剪切板与匿名寄存器同步
set clipboard=unnamedplus

" 重新映射ctrl+v
map <C-K> <C-V>

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

" 总是显示状态栏
set laststatus=2
" 定制状态行
set statusline=%1*\%f\                  " 显示相对路径名
set statusline+=%=%2*\%Y%m%r%h%w\ %*    " 显示文件类型及文件状态
set statusline+=%3*\%{&fenc}\ %*        " 显示文件编码类型
set statusline+=%4*\ row:%l,col:%c\ %*  " 显示光标所在行和列
set statusline+=%5*\%3p%%\%*            " 显示光标前文本所占总文本的比例

" 配色方案
syntax enable
set background=dark
colorscheme molokai

" 背景透明
hi Normal ctermbg=none

" 至少有两个标签页时才显示标签栏
set showtabline=1
" 设置标签栏颜色
hi TabLineSel term=bold cterm=bold ctermfg=Green
hi TabLine term=underline cterm=underline ctermfg=Cyan ctermbg=none
hi TabLineFill term=none cterm=none
