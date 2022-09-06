set fish_greeting ""

# Aliases
alias grep "grep --color=auto"
alias cat "bat --style=plain --paging=never"
alias ls "exa --group-directories-first"
alias tree "exa -T"
alias dotfiles "git --git-dir $HOME/.dotfiles/ --work-tree $HOME"
alias removep "sudo pacman -Rcns"
alias autoremove "sudo pacman -R $(pacman -Qdtq)"

# FZF
# THEME = Everblush
export FZF_DEFAULT_OPTS='
  --color fg:#5d6466,bg:#1e2527
  --color bg+:#ef7d7d,fg+:#2c2f30
  --color hl:#dadada,hl+:#26292a,gutter:#1e2527
  --color pointer:#373d49,info:#606672
  --border
  --color border:#1e2527
  --height 13'

# Prompt
starship init fish | source

# Fish with Vim commands
fish_vi_key_bindings

# Neofetch
neofetch
