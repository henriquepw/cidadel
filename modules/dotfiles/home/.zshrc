# Path
export PATH=$PATH:$HOME/bin:$HOME/.local/bin

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf
export PATH=$PATH:$HOME/.fzf/bin
[[ ! -f ~/.fzf.zsh ]] || source ~/.fzf.zsh

# Aliases
alias gf="sh ~/dotfiles/scripts/git-fetch.sh"
alias update="sh ~/dotfiles/scripts/update-all.sh"
alias gz="lazygit"
alias c="clear"
alias vim="nvim"
alias ls="ls --color -a"

ZINIT="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT ] && mkdir -p "$(dirname $ZINIT)"
[ ! -d $ZINIT/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT"
source "${ZINIT}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -U compinit && compinit
zinit cdreplay -q

bindkey '^l' forward-char
bindkey '^k' history-search-backward
bindkey '^j' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

# bun completions
[ -s "/home/henrique/.bun/_bun" ] && source "/home/henrique/.bun/_bun"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if (( ! ${+TMUX} )); then
  tmux new-session -A -s main
fi
