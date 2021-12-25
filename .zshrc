# Shows information about the hardware and software of the computer
neofetch --iterm2 --ascii --ascii-width 80 --ascii-height 20 --ascii-colors --ascii-scale 2

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Root of the dotfiles repository
export DOTFILES=$HOME/.dotfiles

# Oh my zsh configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
HIST_STAMPS="yyyy-mm-dd"

# Oh my zsh plugins
plugins=(git thefuck zsh-autosuggestions node npm history emoji macos vscode autojump bgnotify zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Powerlevel10k theme configuration
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $DOTFILES/.p10k.zsh ]] || source $DOTFILES/.p10k.zsh

# Parse all aliases
source $DOTFILES/aliases.sh

# Include additions to the PATH environment variable
source $DOTFILES/path.sh

export EDITOR='vim'