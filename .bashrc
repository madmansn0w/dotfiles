# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
[ -f ~/.fzf/.fzf.bash ] && source ~/.fzf/.fzf.bash
. "$HOME/.cargo/env"

# load the rest of the configs
source $HOME/.exports
source $HOME/.aliases

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
