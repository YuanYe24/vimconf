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

" ����궨λ���ϴ�VIM�ر�ʱ��λ��
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif

" cscope
" �Ƿ�ʹ�� quickfix ��������ʾ cscope ���
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

" ΪQuickFix�������ļ�ӳ��
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
" ӳ��Grep��������
nnoremap <silent> <F3> :Grep<CR>

let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" �Զ���ȫ�йص�
" ���ļ����ͼ��
filetype plugin indent on
" �ص����ܲ�ȫʱ��Ԥ������
" set completeopt=longest,menu
" ʹ��SuperTab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"



" ���ð���<Tab>��Ĭ�ϵĲ�ȫ��ʽ, Ĭ����<C-P>,
" ���ڸ�Ϊ<C-X><C-O>. ����<C-P>�Ĳ�ȫ��ʽ,
" ���������Ĳ�ȫ��ʽ, ����Կ��������һЩ����:
" :help ins-completion
" :help compl-omni
let g:SuperTabRetainCompletionType=2
" 0 - ����¼�ϴεĲ�ȫ��ʽ
" 1 - ��ס�ϴεĲ�ȫ��ʽ,ֱ���������Ĳ�ȫ����ı���
" 2 - ��ס�ϴεĲ�ȫ��ʽ,ֱ����ESC�˳�����ģʽΪֹ
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

