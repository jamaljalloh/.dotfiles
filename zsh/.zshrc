# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

# Check for plugin and zgenom updates every 7 days
# This does not increase the startup time.
zgenom autoupdate

export DOTFILES="$HOME/.dotfiles"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# if the init script doesn't exist
if ! zgenom saved; then  
    echo "Creating a zgenom save"

    # Add this if you experience issues with missing completions or errors mentioning compdef.
    # zgenom compdef

    # Ohmyzsh base library
    zgenom ohmyzsh

    # plugins
    zgenom ohmyzsh plugins/git
    zgenom ohmyzsh plugins/emoji

    # Install ohmyzsh osx plugin if on macOS
    [[ "$(uname -s)" = Darwin ]] && zgenom ohmyzsh plugins/macos

    zgenom load apachler/zsh-aws
    zgenom load zsh-users/zsh-autosuggestions
    zgenom load zsh-users/zsh-syntax-highlighting
    zgenom load zsh-users/zsh-history-substring-search

    # Completion-only repos
    zgenom load zsh-users/zsh-completions src

    # Theme
    zgenom load romkatv/powerlevel10k powerlevel10k

    zgenom save

    # Compile your zsh files
    zgenom compile "$HOME/.zshrc"
    zgenom compile "$HOME/.p10k.zsh"
    zgenom compile "$HOME/.zgenom"
    zgenom compile "$HOME/.zsh-functions"

fi

source $HOME/.p10k.zsh

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# # add function directory to path
fpath=( ~/.zsh-functions "${fpath[@]}" )
# # # register and load functions
autoload -Uz $fpath[1]/*(.:t)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
