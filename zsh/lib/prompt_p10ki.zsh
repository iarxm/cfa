P10K_INSTANT="${HOME}/.cache/p10k-instant-prompt-${(%):-%n}.zsh"
P10K_CFG="${HOME}/.config/zsh/lib/prompt_p10k.zsh"
P10K_THEME_X="/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme"
P10K_THEME_Y="${HOME}/.local/lib/powerlevel10k/powerlevel10k.zsh-theme"

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
