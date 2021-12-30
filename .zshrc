# For locale (mosh)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8   

# For kubectl and git autocomplete
autoload -Uz compinit && compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval $(thefuck --alias)
export THEFUCK_PRIORITY="git_hook_bypass=1100"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# include Z
. /usr/local/etc/profile.d/z.sh

source $HOME/.zsh/aliases
source $HOME/.zsh/functions

plugins=(colorize pip brew osx zsh-syntax-highlighting zsh-autosuggestions zsh-z)
source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"
