" Matlab Config file
"================================================================================
"================================================================================
let g:mlint_path_to_mlint='/home/jrestrepo/matlab/bin/glnxa64/mlint'
compiler mlint
set foldmethod=syntax foldcolumn=4 foldlevel=33
setl ts=4 
setl sw=4 
setl expandtab

colorscheme ir_black_matlab


"================================================================================
"================================================================================
" Matlab and conque
let g:ConqueTerm_FastMode=1
let g:ConqueTerm_ReadUnfocused=1
let g:ConqueTerm_InsertOnEnter=1
let g:ConqueTerm_SendFileKey='<leader>pq'
let g:ConqueTerm_ExecFileKey='<leader>pw'
let g:ConqueTerm_SendVisKey='<leader>ss'
nmap <Leader>cm :ConqueTermSplit matlab -nodesktop -nosplash<CR>
nmap <Leader>CM :ConqueTermVSplit matlab -nodesktop -nosplash<CR>

map <F5> :let g:Term=Open_matlab_session()<CR><CR>
"map <leader>ll :call Matconque_SendLine(g:Term)<CR><Esc><Esc><Esc><C-w><C-w>
map <leader>ws :call Matconque_WorkSpace(g:Term)<CR>
map <leader>ed :call Matconque_EditFile(g:Term)<CR>
map <leader>qq :call Matconque_Exit(g:Term)<CR>
map <leader>ll :call MatRunCell(g:Term)<CR><Esc><Esc><Esc><C-w><C-w>

function! Open_matlab_session()
    let g:ConqueTerm_FastMode=1
    let g:ConqueTerm_ReadUnfocused=1
    let g:ConqueTerm_InsertOnEnter=1
    let g:Term=conque_term#open('matlab -nosplash -nodesktop', ['vsplit'], 1)
    call g:Term.focus()
    startinsert!
    normal! 0zH
    return g:Term
endfunction

function! Matconque_Exit(Term)
    let Term=a:Term
    call Term.writeln("exit;")
    exe 'bw' Term.buffer_name
endfunction

function! Matconque_SendLine(Term)
    let Term=a:Term
    let str=getline(".")
    call Term.focus()
    call Term.writeln(str)
    startinsert!
    normal! 0zH
endfunction

function! Matconque_WorkSpace(Term)
    let Term=a:Term
    call Term.writeln("workspace;")
endfunction

function! Matconque_EditFile(Term)
    let Term=a:Term
    let file=expand('%:t')
    call Term.writeln("edit "."'".file."'")
endfunction

function! MatRunCell(Term)
    let Term=a:Term
    let cell='%% '
    let p1=search(cell,'bcn')+1
    let p2=search(cell,'n')-1
    let str=getline(p1,p2)
    "call Term.focus()
    for i in str 
        call Term.write(i)
    endfor
    call Term.write("\r")
endfunction
"================================================================================










