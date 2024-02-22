ufetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#eval "$(starship init zsh)"
source '/home/abhijit/.local/share/powerlevel10k/powerlevel10k.zsh-theme'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export EDITOR=nvim
export PATH=/home/abhijit/.local/bin:$PATH
alias vim='/bin/nvim'
alias nvim='lvim'
alias cat='bat'
# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# History-Based Autocomplete
autoload -U compinit && compinit
eval "$(zoxide init zsh)"
alias cd="z"
# Plugins (XBPS HANDLES 1&2)
source ~/.local/share/zsh/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.local/share/zsh/zsh-eza/zsh-eza.plugin.zsh
