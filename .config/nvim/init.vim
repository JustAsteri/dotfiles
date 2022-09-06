""" Plugin Manager = Vim-Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugins_conf.vim
source $HOME/.config/nvim/maps.vim

""" Templates
augroup templates
    au!
    let g:template_name = 'JustAsteri'
    autocmd BufNewFile *.* silent! execute '0r $HOME/.config/nvim/templates/'.expand("<afile>:e").'.tpl'
    autocmd BufNewFile * %s/{{YEAR}}/\=strftime('%Y')/ge
    autocmd BufNewFile * %s/{{NAME}}/\=template_name/ge
    autocmd BufNewFile * %s/{{EVAL\s*\([^}]*\)}}/\=eval(submatch(1))/ge
augroup END

"""
" Vim Configs
"""

""" Numering
set number
set relativenumber

""" Tab
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set cursorline
set encoding=utf-8
set showmatch
set laststatus=2
set noshowmode

""" Theme
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
