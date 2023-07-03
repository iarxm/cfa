# Setup fzf
# TODO: change location to .local/usr/..
if [[ ! "$PATH" == *$HOME/.local/pkg.git/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}}:$HOME/.local/pkg.git/fzf/bin/"
  source "$HOME/.local/pkg.git/fzf/shell/completion.bash" 
  source "$HOME/.local/pkg.git/fzf/shell/key-bindings.bash"
fi
# Auto-completion
#[[ $- == *i* ]] && 2> /dev/null
# Key bindings
# if [[ $- == *i* ]] && source 
