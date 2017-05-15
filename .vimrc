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
" python-mode插件
Bundle 'klen/python-mode'
" 括号自动匹配插件
Bundle 'jiangmiao/auto-pairs'
" ctrlp文件搜索插件
Bundle 'ctrlpvim/ctrlp.vim'
" airline状态框
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" markdown插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" vim git 插件
Plugin 'tpope/vim-fugitive'

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


" 基本配置
set nu "行号
syntax on "语法高亮
set bg=dark "背景色
set hlsearch "高亮度反白
set backspace=2 "用退格键删除
set autoindent "自动缩排
set ruler "显示最后一行的状态
set showmode "显示左下角状态
colorscheme Tomorrow-Night "主题配色
set tabstop=4 "读取时tab占用空格数
set softtabstop=4 "退格以及按下tab占用空格数
set shiftwidth=4 "tab显示空格数
set expandtab "tab转换为空格
set textwidth=79 "设置一行最多字符数
set vb t_vb= "去除错误提示音
set cursorline "游标线
set mouse=a "所有模式允许使用鼠标
set encoding=utf-8 "设置字符编码方式

" 按键映射

" 上下左右切换窗口
nmap <UP> <C-W>k
nmap <DOWN> <C-W>j
nmap <RIGHT> <C-W>l
nmap <LEFT> <C-W>h

" 运行python文件
nmap <F5> :w<CR>:!python %<CR>

" 括号引号自动补全(已有autopair插件)
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {<CR>}<ESC>O

" tagbar呼出
nmap <F6> :TagbarToggle<CR>

" NERDTree呼出
nmap <F7> :NERDTreeToggle<CR>


" 插件配置

" python-mode 配置
let g:pymode = 0 "开关python-mode
let g:pymode_python = 'python' "默认python版本为python3

" NERDTree 配置
let NERDTreeShowLineNumbers=1 "NERDtree显示行号
let NERDTreeShowHidden=1 "显示隐藏文件
let NERDTreeWinSize=31 "设置宽度
let NERDTreeIgnore=['\.pyc'] "忽略显示的文件
let NERDTreeShowBookmarks=1 "显示书签

" NERDCommener 配置
let g:NERDSpaceDelims=0 "注释后加空格

" tagbar 配置
let g:tagbar_singleclick=1 "鼠标单击，光标跳到定义处

" airline 配置
set laststatus=2 "打开文件就显示airline
let g:airline#extensions#tabline#enabled = 1 "tabline开启

" powerline font airline字体显示
let g:airline_powerline_fonts = 1 "airline字体显示正常

" vim-markdown配置
let g:vim_markdown_folding_disabled = 1
