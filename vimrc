" Vimrc 
"=============================================================================
"=============================================================================
"=============================================================================
set nocompatible
"=============================================================================
" Pathoge
filetype off                " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()    " generate helptags for everything in 'runtimepath'
"=============================================================================
"=============================================================================
" Filetype detection
filetype on                     " enable filetype detection
filetype plugin on              " enable filetype specific plugins
filetype indent on
syntax on
"=============================================================================
"=============================================================================
" Gui Options	
if has('gui_running')
	set t_Co=256
    colorscheme ir_black
else
	set t_Co=256
    colorscheme tir_black
end
set guifont=Droid\ Sans\ Mono\ 11
set guioptions+=m
set guioptions-=T
"=============================================================================
"=============================================================================
" General settings
set showmatch                  " show matching brackets/parenthesis
set wildmenu                                          
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest 
set cf                                                  " Enable error files & error jumping.
set history=2000                                      	" Number of things to remember in history.
set undolevels=1000                                     " Undo levels
set autowrite 						                    " Writes on make/shell commands
set foldmethod=marker
set encoding=utf8
set ruler                                               " Ruler on
set nu                                                  " Line numbers on
set nowrap                                              " Line wrapping off
set timeoutlen=250                                      " Time to wait after ESC (default causes an annoying delay)
set autoindent                                          
set smartindent                                         
set textwidth=120 
set showmode
set clipboard+=unnamed                                	" yank and copy to X clipboard
set showcmd
set nospell
set hlsearch            				                " highlight all search results
set incsearch           				                " increment search
set ignorecase          				                " case-insensitive search
set smartcase           				                " upper-case sensitive search
set equalalways 
set nopaste
set foldenable  				                        " auto fold code
set statusline=%f                                       " path from cwd to filename
set statusline+=\ \                                     " separator
set statusline+=%m                                      " modified flag
set statusline+=%y                                      " filetype
set statusline+=\                                       " separator
set statusline+=%=                                      " left/right separator
set statusline+=%l/%L                                   " cursor line/total lines
set laststatus=2                                        "Always Show Status Line
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4                                       " make the four spaces feel like a tab
let mapleader = ","                                     " map local leader
let g:mapleader = ","

"=============================================================================
"=============================================================================
" Custom commands
" Fast saving
nmap <leader>w :w!<cr>
" Fast editing of the .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" make F3 copy into clipboard"
" make F4 paste from clipboard"
:map <F2> "+yy
:map <F3> "+p
" Tab configuration
map <c-Left> :tabp<CR>
map <c-Right> :tabn<CR>
map <leader>tn :tabnew<CR>
"clearing highlighted search
nmap <silent> <leader>3 :nohlsearch<CR>
" Sessions
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
map <leader>mk :mksession! session.vim<CR>
map <leader>lk :source session.vim <CR>
" Spell Mapping
map zd 	:setlocal nospell<CR> :set mousemodel=extend<CR>
map zs 	:setlocal spell spelllang=es<CR> :set mousemodel=popup<CR>
map ze 	:setlocal spell spelllang=en_us<CR> :set mousemodel=popup<CR>
" Some imaps
imap !11 <c-r>=strftime("%Y-%m-%d")<cr>  
imap "22 <c-r>=string("Juan Felipe Restrepo <jf.restrepo.rinckoar@gmail.com>")<cr>

"=============================================================================
"=============================================================================
" Detect Matlab or Latex files
autocmd Filetype matlab	    :source ~/.vim/ftplugin/matlab.vim  "Matlab mode"<CR>
autocmd Filetype tex	    :source ~/.vim/ftplugin/tex.vim	    "TeX mode"<CR>
"=============================================================================
"=============================================================================
" Plugins
" NerdTree {
		map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
		map <leader>e :NERDTreeFind<CR>
		nmap <leader>nt :NERDTreeFind<CR>
		let NERDTreeShowBookmarks=1
		let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
		let NERDTreeChDirMode=0
		let NERDTreeQuitOnOpen=1
		let NERDTreeShowHidden=1
		let NERDTreeKeepTreeInNewTab=1
" }
" ShowMarks {
		let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
		" Don't leave on by default, use :ShowMarksOn to enable
		let g:showmarks_enable = 0
		" For marks a-z
		highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
		" For marks A-Z
		highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
		" For all other marks
		highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
		" For multiple marks on the same line.
		highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen
" }
" SuperTab {
        let g:SuperTabDefaultCompletionType = "context"
        imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" }
" ConqueTerm {
        let g:ConqueTerm_FastMode=1
        let g:ConqueTerm_ReadUnfocused=1
        let g:ConqueTerm_InsertOnEnter=1
        nmap <Leader>cv :ConqueTermSplit bash<CR>
        nmap <Leader>CV :ConqueTermVSplit bash<CR>
" }
" Surround {
        map <Leader>s <Plug>Vsurround
        map <Leader>S <Plug>Vsurround
" }
" SingleCompile {
        "matlab
        call SingleCompile#SetCompilerTemplate('matlab', 'matlab', 'MATLAB', 'matlab', '-nodesktop -nosplash -r "$(FILE_TITLE)$"', '')  
"}

" Fugitive {
    " Delete fugitive-created buffers
    autocmd BufReadPost fugitive://* set bufhidden=delete
    " Add git status line
    set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
"}


