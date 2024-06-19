
#aliases

alias nv="nvim"
alias gs="git status"
alias gl="git log"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias fps="~/script_active/flatpak/search.sh"
alias fpi="flatpak install flathub"
alias fpr="flatpak run"
alias gcro="~/scripts_active/git/gcro.sh"
alias gcr="~/scripts_active/git/gcr.sh"
alias gdir="~/scripts_active/gdir.sh"

# Replace ls with exa
alias lse='exa -al --color=always --group-directories-first --icons'     # preferred listing
alias lae='exa -a --color=always --group-directories-first --icons'      # all files and dirs
alias lle='exa -l --color=always --group-directories-first --icons'      # long format
alias lte='exa -aT --color=always --group-directories-first --icons'     # tree listing
alias le.='exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles

#setting the zsh history limit to unlimited(practically)

HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=999999999
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
