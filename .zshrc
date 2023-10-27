# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

## start typing + [Up-Arrow] - fuzzy find history forward
#if [[ "${terminfo[kcuu1]}" != "" ]]; then
#    autoload -U up-line-or-beginning-search
#    zle -N up-line-or-beginning-search
#    bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
#fi
## start typing + [Down-Arrow] - fuzzy find history backward
#if [[ "${terminfo[kcud1]}" != "" ]]; then
#    autoload -U down-line-or-beginning-search
#    zle -N down-line-or-beginning-search
#    bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
#fi

##plugins=(
##zsh-autosuggestions
##git
##sudo
##)

# Path to your oh-my-zsh installation.

##export ZSH="$HOME/.oh-my-zsh"


# number + gg: will take you to the line
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="alanpeabody"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

##source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# AUTOCOMPLETION

## initialize autocompletion
#autoload -U compinit
#compinit

## history setup
#setopt APPEND_HISTORY
#setopt SHARE_HISTORY
#HISTFILE=$HOME/.zhistory
#SAVEHIST=1000
#HISTSIZE=999
#setopt HIST_EXPIRE_DUPS_FIRST
#setopt EXTENDED_HISTORY

## autocompletion using arrow keys (based on history)
#bindkey '\e[A' history-search-backward
#bindkey '\e[B' history-search-forward

# source .oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
##source $ZSH/oh-my-zsh.sh



alias lll="ls -ltha --color"
alias free="free -h"
alias uptime="uptime -p"
alias ll="ls -lth --color"
alias "cd.."="cd .."
alias ".."="cd .."
alias cls="clear"
alias c='clear'
#alias vim="nvim"
alias ping='ping -c 5'
alias sys="systemctl"
alias ssys="sudo systemctl"
alias "ip.me"="curl ip.me"
alias sapt="sudo apt"
alias cp="cp -v"
#alias vim="nvim"


# Set a custom Zsh prompt
#  PS1='%{$fg[blue]%}%n@%m:%{$reset_color%} %{$fg[cyan]%}%~%{$reset_color%}$(git_branch_prompt)$ '

# Function to display the Git branch
git_branch_prompt() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    echo "%{$fg[magenta]%} ($branch)%{$reset_color%}"
  fi
}

# %{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%}$

# eval $(ssh-agent -s)

# Define a function to set the prompt based on LONG_PROMPT
set_prompt() {
  if [ "$LONG_PROMPT" -eq 0 ]; then
    PS1='%{$fg[red]%}%n@%m:%{$reset_color%}%{$fg[blue]%}%~%{$reset_color%}$(git_branch_prompt)$ '
  else
    PS1='%{$fg[red]%}%n: %{$reset_color%}%{$fg[blue]%}%~%{$reset_color%}$(git_branch_prompt)$ '
  fi
}

# Initialize LONG_PROMPT to 0 (or any default value)
LONG_PROMPT=0

# Call the function to set the initial prompt
set_prompt

# Define a function to toggle LONG_PROMPT value
toggle_prompt() {
  if [ "$LONG_PROMPT" -eq 0 ]; then
    LONG_PROMPT=1
  else
    LONG_PROMPT=0
  fi
  set_prompt
}

# Alias to toggle the prompt
alias toggleprompt='toggle_prompt'
# In this code:

# We define a set_prompt function that sets the PS1 (prompt) based on the value of LONG_PROMPT. It uses an if statement to determine the format of the prompt.

# We initialize LONG_PROMPT to 0 (or any default value) at the beginning.

# We define a toggle_prompt function that toggles the value of LONG_PROMPT between 0 and 1 and then calls set_prompt to update the prompt.

# We create an alias toggleprompt that you can use in the terminal to toggle the prompt format. Just type toggleprompt in the terminal, and it will switch between the long and short prompt.

# After adding this code to your .zshrc file and restarting your Zsh session or running source ~/.zshrc, you can use the toggleprompt command to switch between the two prompt formats while you're in the terminal.







#neofetch

##WIN_USER='/mnt/c/Users/gkara'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#export NVM_DIR=""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
#eval `ssh-agent -s`
export LESS='-R'
export LESSOPEN='|pygmentize -g %s'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#666666'
