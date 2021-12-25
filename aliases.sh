# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="code ${DOTFILES}/.zshrc"
alias p10config="code ~/.p10k.zsh"
alias ohmyzsh="code ~/.oh-my-zsh"
alias cls="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias h="history"
alias hg="history | grep"
alias hgrep="history | grep"
alias l="ls -l"
alias la="ls -la"
alias :q="exit"
alias quit="exit"
alias bye="exit"
alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"
alias ports="sudo netstat -tulanp"
alias myip="curl -s http://ipecho.net/plain"
mkcd() { mkdir -p "$@" && cd "$@"; }
wiki () {
  if [[ $# == 0 ]] then
    $EDITOR +'VimwikiIndex'
  elif [[ $1 == 'git' ]] then
    git -C ~/vimwiki/ ${@:2}
  else
    echo 'Usage: vimwiki [git] [args ...]'
  fi
}