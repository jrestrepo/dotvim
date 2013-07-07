" Latex Config file
"=============================================================================
"=============================================================================
"setlocal formatoptions=1 
"setlocal noexpandtab 
"map j gj 
"map k gk
"set complete+=s
"set formatprg=par
"setlocal wrap 
"setlocal linebreak
"Set a left margin
highlight! link FoldColumn Normal
setlocal foldcolumn=5 
"=============================================================================
"=============================================================================
" Thesaurus
fun! ReadThesaurus()
   " Assign current word under cursor to a script variable
   let s:thes_word = expand('<cword>')
   " Open a new window, keep the alternate so this doesn't clobber it. 
   keepalt split thes_
   " Show cursor word in status line
   exe "setlocal statusline=" . s:thes_word
   " Set buffer options for scratch buffer
   setlocal noswapfile nobuflisted nowrap nospell 
     \buftype=nofile bufhidden=hide 
   " Delete existing content
   1,$d
   " Run the thesaurus script
   exe ":0r !~/.vim/ftplugin/thesaurus " . s:thes_word
   " Goto first line
   1
   " Set file type to 'thesaurus'
   set filetype=thesaurus
   " Map q to quit without confirm
   nmap <buffer> q :q<CR>
endfun
" Map the <F4> key to the ReadThesaurus function
noremap <buffer> <F4> :call ReadThesaurus()<CR><CR>

"=============================================================================
"=============================================================================
" ATP
set iskeyword+=:
let g:Tex_Leader = '#'
let g:Tex_DefaultTargetFormat = 'pdf'
let b:atp_Viewer = 'okular'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode --enable-write18 $*'
let b:atp_TexCompiler = "pdflatex"
let b:atp_TexFlavor = "latex"
let b:atp_ProjectScript = 0
let g:Tex_AutoFolding = 0
let g:Tex_Folding = 0
set winaltkeys=no

map <Leader>ll :2Tex<CR>
map <Leader>kk :Tex<CR>
map <Leader>bb :Bibtex<CR>
map <Leader>vv :View<CR>
































