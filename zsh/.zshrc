# ZSHRC
# ###########################################
# AUTHOR: IAROM MADDEN
# NOTES
# - USE lf for nav (C-o, nav and exit)
# - USE autocompletion features
# - USE 
# ############################################
#
# # POWERLEVEL10K
# 	Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc. Important so that other initialisation processes can continue after the prompt has loaded. Providing a sense of responsiveness
#
# 	Note, Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  PROMPT_C_OFF="1"
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
fi
themex="/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme"
if [[ -f $themex ]]; then
		source $themex
	else
		themey="$HOME/.local/pkg/powerlevel10k/powerlevel10k.zsh-theme"
		[[ -f $themey ]] && source $themey
fi
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# THEMEING ==========================================
autoload -U colors && colors	# Load colors

# WINTITLE AND PROMPT =============================================
 if [[ $PROMPT_C_OFF == "1" ]]; then
  # if moding in future, look at 'powerlevel10k' as a tool to do this
	#source $XDG_BIN_HOME/fdt/git-prompt
	setopt PROMPT_SUBST
	#PS1='%{$fg[red]%}%c$(__git_ps1 "(%s)")%{$fg[yellow]%} $%b '
	RPROMPT='%{$fg[red]%}%c$(__git_ps1 "(%s)")'
	PS1='%{$fg[yellow]%}>%b '
	# WINTITLE ############################################
  	# Dynamic window title
		function xtitle () { 
			builtin print -n -- "\e]0;$@\a" }
  	# updates WIN TITLE on cmd run
		#function precmd () { 
			#xtitle "$(print -P \[%2~\])" }
		#function precmd () {xtitle "\[${PWD/#$HOME/~}\] [$(history | tail -n1 | awk '{for (i=2;i<=NF-1;i++) printf $i " "; print $NF}')]"}
		#function preexec () {xtitle "\[${PWD/#$HOME/~}\] [$(history | tail -n1 | awk '{for (i=2;i<=NF-1;i++) printf $i " "; print $NF}')]"}
		function preexec () {xtitle "\e${cmd}"}
		function preexec () {xtitle "\[${PWD/#$HOME/~}\] ${1[(w)1]}"}

 fi
	setopt autocd				# Automatically cd into typed directory.
	setopt interactive_comments
	#stty stop undef			# Disable ctrl-s to freeze terminal.
	#
#preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# COMPLETION
# Basic auto/tab complete:
autoload -U compinit && compinit -d $HOME/.local/share/zsh/zcompdump-$HOST #make sure dir exists
zstyle ':completion:*' menu select
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.

# HIST/AUTOCOMPLETION
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=${HISTFILE}
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# VIM NAV
# vi mode
bindkey -v
export KEYTIMEOUT=1
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q" ;}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.

# LF
lfcd () { # switch dir and launch lf
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi ;}

bindkey -s '^o' 'lfcd\n'
bindkey -s '^a' 'bc -lq\n'
bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char

# EDIT
autoload edit-command-line; zle -N edit-command-line 
bindkey '^e' edit-command-line # edit line in vim w c-e

# BIND
bindkey -s '^n' 'nnn\n'
#bindkey -s '^v' 'nvim\n'

# SYN HIGHLIGHT (keep last)
syntaxx="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f $syntaxx ]] && source $syntaxx

# SOURCING
[[ -f $PROFILE_I ]] && source $PROFILE_I
