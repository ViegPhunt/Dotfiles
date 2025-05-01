# Created by Phunt_Vieg_
# Created by newuser for 5.9
# autoload -Uz zsh-newuser-install
# zsh-newuser-install -f# Lines configured by zsh-newuser-install

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory

# Set-up icons for files/folders in terminal
alias ls='eza --icons --color=always'
alias lt='eza -a --tree --level=1 --icons --color=always'
alias grep='grep --color=always'

# Set-up alias
alias vim='nvim'
alias cbonsai='cbonsai -l -i -w 1'

bindkey -e

# Setup fzf
eval "$(fzf --zsh)"

# fzf theme
export FZF_DEFAULT_OPTS='
--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 
--color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 
--color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 
--color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4
'
export FZF_TAB_COLORS='fg:#f8f8f2,bg:#282a36,hl:#bd93f9,min-height=5'

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/viet/.zshrc'

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${ZDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit
# End of lines added by compinstall

zinit cdreplay -q

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' fzf-flags --height=17
zstyle ':fzf-tab:complete:*' fzf-preview '
if [ -d "$realpath" ]; then
    eza --icons --tree --level=2 --color=always "$realpath"
elif [ -f "$realpath" ]; then
    bat -n --color=always --line-range :500 "$realpath"
fi
'

# Setup bat (better than cat)
export BAT_THEME=Dracula
alias bat='bat --paging=never'

# Setup zoxide (better than cd)
eval "$(zoxide init zsh)"



# Create random number
RANDOM_NUMBER=$(shuf -i 1-10 -n 1)
# Random between fastfetch and pokemon-colorscripts
if (( RANDOM_NUMBER % 2 == 0 )); then
    fastfetch
else
    pokemon-colorscripts --no-title -s -r
fi

# fastfetch
# pokemon-colorscripts --no-title -s -r
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/viet.omp.json)"
