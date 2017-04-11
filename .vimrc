" 插件相关
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" 自动补全插件
Bundle 'Valloric/YouCompleteMe'
" tomorrow 主题插件
Bundle 'chriskempson/vim-tomorrow-theme'
" NERDTree 插件
Bundle 'scrooloose/nerdtree'
" 加注释插件
Bundle 'scrooloose/nerdcommenter'
" tagbar 程序结构显示
Bundle 'majutsushi/tagbar'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 配置
set nu "行号
syntax on "语法高亮
set bg=dark "背景色
set hlsearch "高亮度反白
set backspace=2 "用退格键删除
set autoindent "自动缩排
set ruler "显示最后一行的状态
set showmode "显示左下角状态
colorscheme tomorrow "主题配色
set ts=4 "tab为4格
set expandtab "tab转换为空格


" 按键映射

" 括号引号自动补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

" tagbar呼出
nmap <F8> :TagbarToggle<CR>

" NERDTree呼出
nmap <F7> :NERDTree<CR>





" NERDTree 配置
let NERDTreeShowLineNumbers=1 "NERDtree显示行号
let NERDTreeShowHidden=1 "显示隐藏文件
let NERDTreeWinSize=31 "设置宽度
let NERDTreeIgnore=['\.pyc'] "忽略显示的文件
let NERDTreeShowBookmarks=1 "显示书签

" NERDCommener 配置
let g:NERDSpaceDelims=0 "注释后加空格
