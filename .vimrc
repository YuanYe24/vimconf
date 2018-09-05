set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'Valloric/YouCompleteMe'

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
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

syntax on

" for solarized config
"syntax enable  
"set background=dark "light|dark
"colorscheme solarized
" for solarized config

set nocompatible
set showcmd
set showmode
set ruler
set number
set tabstop=4
set noexpandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nohlsearch
set noignorecase
set hlsearch
set incsearch
set showmatch
set nowrapscan
set backspace=indent,eol,start
set foldmethod=syntax
set wildmode=longest,list,full
set infercase
highlight LineNr ctermfg=green
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set listchars=tab:>-,trail:-,eol:$
set pastetoggle=<F10>

" fontforge
let g:Powerline_symbols = 'fancy'

let g:miniBufExplMapCTabSwitchBufs=1

" 将光标定位到上次VIM关闭时的位置
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif

" cscope
" 是否使用 quickfix 窗口来显示 cscope 结果
set cscopequickfix=s-,c-,d-,i-,t-,e-
" Symbol
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" Global define
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" Called
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" Callee
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" Tags
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" Egrep
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
" File
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
" Files that Included this file
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" 为QuickFix窗口做的键映射
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
" 映射Grep查找命令
nnoremap <silent> <F3> :Grep<CR>

let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" 自动补全有关的
" 打开文件类型检测
filetype plugin indent on
" 关掉智能补全时的预览窗口
" set completeopt=longest,menu
" 使用SuperTab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"



" 设置按下<Tab>后默认的补全方式, 默认是<C-P>,
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式,
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni
let g:SuperTabRetainCompletionType=2
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止
"

"highlight LineNr ctermbg=gray
"highlight LineNr ctermfg=red

" build ctags
map <F2> :NERDTreeToggle<CR>

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" OmniCppComplete
set nocp
filetype plugin on

" super tab
let g:SuperTabDefaultCompletionType="context"

" mini expl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction

nmap wm :WMToggle<CR>

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp

" " OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

