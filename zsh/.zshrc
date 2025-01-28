# IAROM MADDEN mail@iarom.org
#
# lf for nav - C-o & exit
# autocompletion
#
# p10K instant prompt. keep close to top of ~/.config/zsh/.zshrc
# so other init can proceed post prompt loadeding. increases responsiveness
#
# note, init code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

P10K_INSTANT="${HOME}/.cache/p10k-instant-prompt-${(%):-%n}.zsh"
P10K_CFG="${HOME}/.config/zsh/.p10k.zsh"
P10K_THEME_X="/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme"
P10K_THEME_Y="${HOME}/.local/pkg/powerlevel10k/powerlevel10k.zsh-theme"

if [[ -r "${P10K_INSTANT}" ]]; then
    source "${P10K_INSTANT}"
    PROMPT_C_OFF="1"
    typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
    typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
fi

if [[ -f "${P10K_THEME_X}" ]]; then
    source ${P10K_THEME_X}
else 
    [[ -f "${P10K_THEME_Y}" ]] && \
        source ${P10K_THEME_Y}
fi

[[ ! -f ${P10K_CFG} ]] || source ${P10K_CFG}


# THEMEING

autoload -U colors && colors    # Load colors


# THEMEING - WINTITLE AND PROMPT 

 if [[ ${PROMPT_C_OFF} == "1" ]]; then
    setopt PROMPT_SUBST

    RPROMPT='%{$fg[red]%}%c$(__git_ps1 "(%s)")'
    PS1='%{$fg[yellow]%}>%b '
    
    # dynamic window title
    function xtitle () { builtin print -n -- "\e]0;$@\a" }
    function preexec () {xtitle "\e${cmd}"}
    function preexec () {xtitle "\[${PWD/#$HOME/~}\] ${1[(w)1]}"}

fi

setopt autocd # auto cd on typed dir
setopt interactive_comments


# COMPLETION

ZSH_DAT="$HOME/.local/share/zsh"
mkdir -p ${ZSH_DAT}
autoload -U compinit
compinit -d ${ZSH_DAT}/zcompdump-$HOST
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)        # Include hidden files.


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

export KEYTIMEOUT=1
echo -ne '\e[3 q'
# Change cursor shape for different vi modes.

zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        #viins|main) echo -ne '\e[5 q';; # beam
        viins|main) echo -ne '\e[3 q';; # underscore
    esac
}

lfcd () {
    # switch dir and launch lf
    tmp="$(mktemp)"
    lf -last-dir-path="$TMP_LF" "$@"
    if [ -f "$TMP_LF" ]; then
        DIR_LF="$(cat "$TMP_LF")"
        rm -f "$TMP_LF" >/dev/null
        [ -d "$DIR_LF" ] && [ "$DIR_LF" != "$(pwd)" ] && cd "$DIR_LF"
    fi
}

zle-line-init() {
    # init `vi insert` as keymap (can be removed if `bindkey -V` is set)
    zle -K viins 
    echo -ne "\e[5 q"
}

autoload edit-command-line
zle -N zle-line-init
zle -N zle-keymap-select
zle -N edit-command-line

bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -s '^o' 'lfcd\n'
bindkey -s '^a' 'bc -lq\n'
bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char
bindkey '^e' edit-command-line # edit line in vim w c-e
bindkey -s '^n' 'nnn\n'
#bindkey -s '^v' 'nvim\n'

# syn hi - keep last
SYNTAX="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f $SYNTAX ]] && source $SYNTAX
[[ -f $PROFILEI ]] && source $PROFILEI

