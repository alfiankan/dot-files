# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="${PATH}:${HOME}/.local/bin"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git macos zsh-syntax-highlighting zsh-autosuggestions zsh_codex)
bindkey '^X' create_completion


source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@8.1/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export HOMEBREW_GITHUB_API_TOKEN=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
export HOMEBREW_GITHUB_API_TOKEN=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

export PATH="$PATH:$(go env GOPATH)/bin"

alias bcm="sh /Users/alfiankan/bcm.sh"

alias gcloud="/Users/alfiankan/google-cloud-sdk/bin/gcloud"

# bun completions
[ -s "/Users/alfiankan/.bun/_bun" ] && source "/Users/alfiankan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin 
export JAVA_HOME=`/usr/libexec/java_home -v 11.0.17`

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



alias gt='sh ~/test_helper.sh'

export PATH=$PATH:/Users/alfiankan/nim-1.6.8/bin

export JAVA_HOME=`/usr/libexec/java_home -v 11.0.17`
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Wasmer
export WASMER_DIR="/Users/alfiankan/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alfiankan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alfiankan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alfiankan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alfiankan/google-cloud-sdk/completion.zsh.inc'; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:$HOME/nvim-mac/bin"
