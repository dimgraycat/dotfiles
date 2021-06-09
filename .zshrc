if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

zstyle ':completion:*:default' list-colors di=4 ex=33
zstyle ':completion:*:setopt:*' menu true select

alias ls='ls -AFG'
alias ll='ls -hlt'

alias history='history -Di'

# http://zsh.sourceforge.net/Doc/Release/Options.html#Description-of-Options
setopt hist_ignore_dups
setopt share_history
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=100000

setopt nonomatch
setopt correct

autoload -Uz compinit && compinit

# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#History-Control
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

export PATH=~/homebrew/bin:$PATH
eval "$(starship init zsh)"
eval "$(anyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fbr - checkout git branch
function fzf-checkout-branch() {
  local branches branch
  branches=$(git branch | sed -e 's/\(^\* \|^  \)//g' | cut -d " " -f 1) &&
  branch=$(echo "$branches" | fzf --preview "git show --color=always {}") &&
  git checkout $(echo "$branch")
}
zle     -N   fzf-checkout-branch
bindkey "^b" fzf-checkout-branch
