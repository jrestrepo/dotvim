"these lines are suggested to be at the top of every colorscheme
" ir_black_matlab color scheme
" It uses ir_black color scheme

" ********************************************************************************
" Standard colors used in all ir_black themes:
" Note, x:x:x are RGB values
"
"  normal: #f6f3e8
" 
"  string: #A8FF60  168:255:96                   
"    string inner (punc, code, etc): #00A0A0  0:160:160
"  number: #FF73FD  255:115:253                 
"  comments: #7C7C7C  124:124:124
"  keywords: #96CBFE  150:203:254             
"  operators: white
"  class: #FFFFB6  255:255:182
"  method declaration name: #FFD2A7  255:210:167
"  regular expression: #E9C062  233:192:98
"    regexp alternate: #FF8000  255:128:0
"    regexp alternate 2: #B18A3D  177:138:61
"  variable: #C6C5FE  198:197:254
"  
" Misc colors:
"  red color (used for whatever): #FF6C60   255:108:96 
"     light red: #FFB6B0   255:182:176
"
"  brown: #E18964  good for special
"
"  lightpurpleish: #FFCCFF
" 
" Interface colors:
"  background color: black
"  cursor (where underscore is used): #FFA560  255:165:96
"  cursor (where block is used): white
"  visual selection: #1D1E2C  
"  current line: #151515  21:21:21
"  search selection: #07281C  7:40:28
"  line number: #3D3D3D  61:61:61


" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #B5DCFE
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF


" ********************************************************************************
hi clear
if exists("syntax_on")
  syntax reset
endif

"Load the 'base' colorscheme - the one you want to alter
runtime colors/ir_black.vim

"Override the name of the base colorscheme with the name of this custom one
let g:colors_name = "ir_black_matlab"

"Clear the colors for any items that you don't like
hi clear Title
hi clear SpecialComment
hi clear Todo
hi clear PreProc
hi clear Error

"Set up your new & improved colors

hi Title	        guifg=#48CF48	    guibg=#004400	    gui=BOLD,UNDERLINE	ctermfg=Green	    ctermbg=DarkGreen	cterm=BOLD,UNDERLINE| " Cell titles
hi SpecialComment	guifg=#BCFFBC		guibg=NONE			gui=ITALIC			ctermfg=Green		ctermbg=NONE		cterm=ITALIC		| " MLint identifiers
hi Todo				guifg=#06FFFF		guibg=#0606FF		gui=UNDERLINE		ctermfg=Cyan		ctermbg=DarkBlue	cterm=UNDERLINE		| " To-Do
hi PreProc			guifg=#FFCC00		guibg=NONE			gui=NONE			ctermfg=Yellow		ctermbg=NONE		cterm=NONE			| " Preprocessor and System commands: !
hi Tag				guifg=#00FFFF		guibg=NONE			gui=NONE			ctermfg=Cyan		ctermbg=NONE		cterm=NONE			| " Tags
hi Debug			guifg=#FFA500		guibg=NONE			gui=NONE			ctermfg=Yellow		ctermbg=NONE		cterm=NONE			| " Debugging statements
hi Error			guifg=#FF0000		guibg=NONE			gui=UNDERLINE		ctermfg=Red			ctermbg=NONE		cterm=UNDERLINE		| " Errors



















