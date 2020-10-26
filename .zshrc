

# Path to your oh-my-zsh installation.
  export ZSH="/home/nischal/.oh-my-zsh"

ZSH_THEME="blinks"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  z
)

source $ZSH/oh-my-zsh.sh

# User configuration

## for locale and right font in terminal
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

## all things nvim
alias vim=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

# alias rm to avoid removing files by mistake
alias rm='rm -i'

## R use R3.6
alias export_rstudio_env="export RSTUDIO_WHICH_R=/home/nischal/anaconda3/envs/r_env/bin/R"

## dot file tracker alias - use as normal git command
### eg dotconfig add file.file
###    dotconfig commit -m "Add file.file"
###    dotconfig push origin master
alias dotconfig='/usr/bin/git --git-dir=$HOME/.arch-dotfile --work-tree=$HOME'

## Auto start TMUX -- https://wiki.archlinux.org/index.php/Tmux#Start_tmux_on_every_shell_login
if [[ $DISPLAY ]]; then
    # If not running interactively, do not do anything
    [[ $- != *i* ]] && return
    [[ -z "$TMUX" ]] && exec tmux new-session -A -s general
fi

# Turn on vi mode
# Source: https://unix.stackexchange.com/questions/547/make-my-zsh-prompt-show-mode-in-vi-mode/327572#327572
# vim mode config
# ---------------

# Activate vim mode.
# bindkey -v

# Remove mode switching delay.
# KEYTIMEOUT=5

# Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'

#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select

# # Use beam shape cursor on startup.
# echo -ne '\e[5 q'

# # Use beam shape cursor for each new prompt.
# preexec() {
#    echo -ne '\e[5 q'
# }

# Use vim keys in tab complete menu:
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -v '^?' backward-delete-char

# # open command in vim using ctrl+e
# autoload edit-command-line; zle -N edit-command-line
# bindkey '^e' edit-command-line

# end vi mode

# <<< conda init <<<
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/nischal/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/nischal/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nischal/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/nischal/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
