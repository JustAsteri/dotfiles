" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html, *.xhtml, *.phtml, *.js'
let g:closetag_shortcut = '>'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

""" NerdTree
let NERDTreeQuitOnOpen=1

""" Nerd Commenter
filetype plugin on

""" Indent guides
let g:indent_guides_enable_on_vim_startup = 1

""" Super Tab
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

""" Ultisnips
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"

""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
