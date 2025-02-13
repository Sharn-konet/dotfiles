# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

# Update configuration 
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
alias "l"="ls -la"
alias "lg"="lazygit"
alias "ddu"="docker compose up --build"
alias "dd"="docker compose down"
alias "amd"="uv run atlas migrate diff --env sqlalchemy"
alias "ama"="uv run atlas migrate apply --url=\"postgresql://user:pass@localhost:5432/survesy?search_path=public&sslmode=disable\" --dir=\"file://atlas_migrations\" --baseline \"0000000000000\""
alias "amh"="uv run atlas migrate hash --dir=\"file://atlas_migrations\""

eval "$(starship init zsh)"

# Created by `pipx` on 2024-05-05 21:59:08
export PATH="$PATH:/Users/sharnkonet/.local/bin"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sharnkonet/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sharnkonet/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sharnkonet/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sharnkonet/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# bun completions
[ -s "/Users/sharnkonet/.bun/_bun" ] && source "/Users/sharnkonet/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Expo
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv init --path)"

. "$HOME/.cargo/env"
