alias ls='ls --color'
alias la='ls -la --color'
alias zshrc='vim ~/.zshrc'
alias zshsrc='source ~/.zshrc'
alias dcup='docker compose up -d'
alias dcd='docker compose down'
alias dlgs='docker logs --since 5m'
alias dlgsl='docker logs'
alias dr='dotnet run'
alias pnpx='pnpm dlx'

export PATH="$HOME:/usr/local/bin:${PATH}"

autoload -U compinit && compinit

source ~/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh_plugins/zsh-z/zsh-z.plugin.zsh
source ~/.zsh_plugins/completion.zsh
source ~/.zsh_plugins/gitstatus/gitstatus.prompt.zsh

setopt PROMPT_SUBST
PROMPT='%F{032}%~%f$GITSTATUS_PROMPT %F{105}»%f '

# pnpm
export PNPM_HOME="/Users/orangeburrito/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export HOMEBREW_NO_AUTO_UPDATE=1


