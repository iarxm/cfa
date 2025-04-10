# iarom mail@iarom.org

# init code that may require console input must go above this block

PROMPT_C_ON="1"
P10K_ON="0"

if [[ ${P10K_ON} = "1" ]]; then
    P10K_INSTANT="${HOME}/.cache/p10k-instant-prompt-${(%):-%n}.zsh"
    P10K_CFG="${HOME}/.config/zsh/p10k/p10k.zsh"
    P10K_THEME_X="/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme"
    P10K_THEME_Y="${HOME}/.local/pkg/powerlevel10k/powerlevel10k.zsh-theme"
fi

if [[ -r "${P10K_INSTANT}" ]]; then
    source "${P10K_INSTANT}"
    PROMPT_C_ON="1"
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

autoload -U colors && colors

if [[ ${PROMPT_C_ON} == "1" ]]; then
    autoload -Uz vcs_info
    zstyle ':vcs_info:git*' formats "%{$fg[blue]%}%{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%} %h "
    zstyle ':vcs_info:git*' actionformats "%S %b %m%u%c "
    zstyle ':vcs_info:*' max-exports 5
    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:*' unstagedstr '%F{red}!'
    zstyle ':vcs_info:*' stagedstr ' %F{green}✚%f'

    precmd()
    {
        vcs_info
    }
    setopt PROMPT_SUBST

    # - [ ] add host info when ssh active
    #RPROMPT='%{$fg[red]%}%c$(__git_ps1 "(%s)")'
    RPROMPT='${vcs_info_msg_0_}$( [ -n "${SSH_CONNECTION}" ] && echo " ssh ")${PWD/#${HOME}/~}${1[(w)1]}'
    PS1='%{$fg[yellow]%}>%b '
    
    # dynamic window title
    function xtitle () { builtin print -n -- "\e]0;${@}\a" }
    function preexec () {xtitle "\e${cmd}"}
    function preexec () {xtitle "\[${PWD/#$HOME/~}\] ${1[(w)1]}"}

fi

setopt autocd
setopt interactive_comments
ZSH_DAT="${HOME}/.local/share/zsh"
mkdir -p ${ZSH_DAT}
autoload -U compinit
compinit -d ${ZSH_DAT}/zcompdump-${HOST}
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots) # include hidden files
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
echo -ne '\e[3 q' # cursor shapes vi modes

zle-keymap-select ()
{
    case ${KEYMAP} in
        vicmd) echo -ne '\e[1 q';; # block
        viins|main) echo -ne '\e[3 q';; # underscore
        #viins|main) echo -ne '\e[5 q';; # beam
    esac
}

lfcd ()
{
    tmp="$(mktemp)"
    lf -last-dir-path="${TMP_LF}" "${@}"
    if [ -f "${TMP_LF}" ]; then
        DIR_LF="$(cat "${TMP_LF}")"
        rm -f "${TMP_LF}" >/dev/null
        [ -d "${DIR_LF}" ] && [ "${DIR_LF}" != "$(pwd)" ] && cd "${DIR_LF}"
    fi
}

zle-line-init()
{
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
bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char
bindkey '^e' edit-command-line # edit line in vim w c-e
bindkey -s '^n' 'nnn\n'
bindkey -s '^b' 'nnn -n\n'
bindkey -s '^v' 'nvim\n'
bindkey -s '^l' 'l\n'
bindkey -s '^k' 'clear\n'
SYNTAX="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f ${SYNTAX} ]] && source ${SYNTAX} # keep last
[[ -f ${PROFILEI} ]] && source ${PROFILEI}
ZSH_HIGHLIGHT_STYLES[precommand]=fg=yellow
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=yellow
ZSH_HIGHLIGHT_STYLES[arg0]=fg=yellow
# - [ ] experiment with below gist
# https://gist.github.com/romkatv/8b318a610dc302bdbe1487bb1847ad99
#zstyle ':vcs_info:git:*' formats '%b%f%m%u%c %a'
#zstyle ':vcs_info:*' stagedstr ' +'
#zstyle ':vcs_info:*' unstagedstr ' %F{red}●%f'
#zstyle ':vcs_info:*' disable bzr cdv darcs fossil hg mtn p4 svk tla
