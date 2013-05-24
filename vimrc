runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" 
" " UTF-8 
" " 
set encoding=utf-8 
set fileencoding=utf-8 
set termencoding=utf-8 
set fencs=utf-8
set fenc=utf-8
set enc=utf-8

if has("syntax")
  syntax on
endif

set mouse=a		    " Enable mouse usage (all modes)

set nu              "显示行号
set background=dark

set autoindent
set smartindent

set tabstop=4       "设置tab键为4个空格
set shiftwidth=4    "当行之间交错时使用4个空格
set is              "搜索时在未完全输入完毕就开始检索
set et              "// tab转成对应的空格数目
set hls             "搜索时高亮显示被找到的文本。
" set ruler         "在编辑过程中，在右下角显示光标位置的状态行
"

set spell spelllang=en_us

" set clipboard+=unnamed  " 解决系统剪贴板的问题
" colorscheme pablo

" vim latex suite
" http://vim-latex.sourceforge.net/index.php?subject=download&title=Download

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
set iskeyword+=:
autocmd BufEnter *.tex set sw=2

" let g:Tex_Folding=0 "I don't like folding. 完全不会fold了
set nofoldenable    " disable folding 仍然可以用za

"正向搜索设置，在 ~/.vimrc 中指定
let g:Tex_CompileRule_dvi='latex -src-specials -interaction=nonstopmode $*'


" vim-pathogen
" execute pathogen#infect()


" language tool
let g:languagetool_jar='$HOME/Software/vim/LanguageTool-2.1/languagetool-commandline.jar'


" engspchk
set nocp

" vim-pandoc
" Folding can slow things down. To disable it, set g:pandoc_no_folding:
let g:pandoc_no_folding = 1

" If you want .txt files to be treated as pandoc files, add
au BufNewFile,BufRead *.MD,*.RMD,*.rmd   set filetype=pandoc
