syn region vestiBrackets       contained extend keepend matchgroup=Bold start=+\(\\\)\@<!\[+ end=+]\|$+ skip=+\\\s*$\|\(\\\)\@<!\\]+ contains=@tclCommandCluster

syn keyword vestiKeyword       docclass begenv nextgroup=vestiEnv skipwhite
syn keyword vestiKeyword       import document endenv

syn match   vestiEnv             "[a-zA-Z_][a-zA-Z0-9_]*" contained
syn match   vestiClass           "[a-zA-Z_][a-zA-Z0-9_]*" contained
syn region  vestiComment         start="#" end="$" contains=vestiTodo
syn region  vestiComment         start="#\*" end="\*#" contains=vestiTodo,@Spell
syn region  vestiVerbatim        start="#-" end="-#"
syn region  vestiVerbatimInline  start="##-" end="-##"
syn region  vestiTextMath        start="\$" end="\$"
syn region  vestiTextMath        start="\\(" end="\\)"
syn region  vestiInlineMath      start="\$\$" end="\$\$"
syn region  vestiInlineMath      start="\\\[" end="\\\]"
syn keyword vestiTodo            TODO FIXME XXX contained
syn match   vestiFunction        "\v\\[a-zA-Z]+"

" numbers (including longs and complex)
let s:dec_num = '-?\d%(_?\d)*'
let s:int_suf = '%(''%(%(i|I|u|U)%(8|16|32|64)|u|U))'
let s:float_suf = '%(''%(%(f|F)%(32|64|128)?|d|D))'
let s:exp = '%([eE][+-]?'.s:dec_num.')'
exe 'syn match vestiNumber /\v<0[bB][01]%(_?[01])*%('.s:int_suf.'|'.s:float_suf.')?>/'
exe 'syn match vestiNumber /\v<0[ocC]\o%(_?\o)*%('.s:int_suf.'|'.s:float_suf.')?>/'
exe 'syn match vestiNumber /\v<0[xX]\x%(_?\x)*%('.s:int_suf.'|'.s:float_suf.')?>/'
exe 'syn match vestiNumber /\v<'.s:dec_num.'%('.s:int_suf.'|'.s:exp.'?'.s:float_suf.'?)>/'
exe 'syn match vestiNumber /\v<'.s:dec_num.'\.'.s:dec_num.s:exp.'?'.s:float_suf.'?>/'
unlet s:dec_num s:int_suf s:float_suf s:exp

syn sync match vestiSync grouphere NONE "):$"
syn sync maxlines=200
syn sync minlines=2000

command -nargs=+ HiLink hi link <args>

" The default methods for highlighting.  Can be overridden later
HiLink vestiBrackets Operator
HiLink vestiKeyword	Keyword
HiLink vestiEnv Function
HiLink vestiFunction Identifier
HiLink vestiComment Comment
HiLink vestiTodo Todo
HiLink vestiNumber Number
HiLink vestiVerbatim PreProc 
HiLink vestiVerbatimInline PreProc 
hi vestiTextMath ctermfg=LightMagenta guifg=LightMagenta
hi vestiInlineMath ctermfg=LightMagenta guifg=LightMagenta

delcommand HiLink

let b:current_syntax = 'vesti'

