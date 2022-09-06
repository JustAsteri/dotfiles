"=== Plugins ===
call plug#begin('~/.vim/plugged')

"" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'cakebaker/scss-syntax.vim'
"Plug 'scrooloose/syntastic'

"" Status Bar
Plug 'itchyny/lightline.vim'

"" Themes
Plug 'flazz/vim-colorschemes'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"" Tree
Plug 'scrooloose/nerdtree'

"" Typing
Plug 'sirver/ultisnips'
Plug 'alvan/vim-closetag'
Plug 'chun-yang/auto-pairs'
Plug 'tpope/vim-surround'

"" Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"" Auto-complete
"Plug 'neoclide/coc.nvim'
Plug 'valloric/youcompleteme'

"" Test

"" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-repeat'

"" IDE
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
" Plug 'editorconfig/editorconfig-vim'
Plug 'ddollar/nerdcommenter'
Plug 'junegunn/fzf'
"Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf.vim'
"Plug 'yggdroot/indentline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
"Plug 'ironcamel/vim-script-runner', {'for': ['sh', 'python']}

call plug#end()
