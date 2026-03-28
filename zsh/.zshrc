# iarom mail@iarom.org
# initeractive zsh configs
# init code that may require console input, must go above this block
HISTSIZE=10000000 #HISTFILE=${HISTFILE}
SAVEHIST=10000000
KEYTIMEOUT=1 #export KEYTIMEOUT=1
DIRSTACKSIZE='50'
export DIRSTACKFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/dirs"
fpath=("${ZDOTDIR}/lib" "${fpath[@]}")
autoload -U colors; colors
echo -ne '\e[3 q' # cursor shapes vi modes
autoload -Uz zlib; zlib
autoload -Uz prompt_time_setup; prompt_time_setup
autoload -Uz term_title; term_title
[[ -d ${ZSH_CACHE:="${XDG_CACHE_HOME}/zsh"} ]] || mkdir -p ${ZSH_CACHE}
autoload -U compinit
compinit -d ${ZSH_CACHE}/zcompdump
zmodload zsh/complist
_comp_options+=(globdots) # include hidden files
zstyle ':completion:*' menu select
zstyle ':completion:*:functions' ignored-patterns '_*'
autoload edit-command-line
zle -N zle-line-init
zle -N zle-keymap-select
zle -N edit-command-line
zle -N cdParentKey
zle -N cdUndoKey
zle -N ncmpcppShow
bindkey '^\' ncmpcppShow
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey '^u'    cdUndoKey
bindkey '^h'    cdParentKey
bindkey '^[[P'  delete-char
bindkey '^e'    edit-command-line # edit line in vim w c-e
bindkey -v '^?' backward-delete-char
bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'
bindkey -s '^o' 'lfcd\n'
bindkey -s '^n' 'nnn -na\n'
bindkey -s '^b' 'nnn\n'
bindkey -s '^v' 'nvim\n'
bindkey -s '^k' 'ls\n'
bindkey -s '^d' 'tmux\n'
bindkey -s '^x' 'tmux kill-session\n'
setopt AUTOCD AUTOPUSHD PUSHD_SILENT PUSHD_TO_HOME PUSHD_MINUS CDABLE_VARS INTERACTIVE_COMMENTS APPEND_HISTORY SHARE_HISTORY INC_APPEND_HISTORY HIST_IGNORE_ALL_DUPS HIST_SAVE_NO_DUPS HIST_IGNORE_DUPS HIST_FIND_NO_DUPS
. ${ZDOTDIR}/lib/cding
[ -f ${SYN_HIGH:="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"} ] && . ${SYN_HIGH}
