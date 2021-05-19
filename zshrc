# Path to your oh-my-zsh installation.
export ZSH=/Users/hhsu/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

# User configuration

#export PATH="/Users/hhsu/.local/bin:$PATH"
#export PATH="$HOME/Library/Haskell/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
#export LANG=en_US.UTF-8
#
#Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

alias cls='clear'
alias ls='ls -G'
alias ll='ls -al'
alias la='ls -a'
alias grep="grep --color=auto"


alias vg='vagrant'

export SYSTEMC_HOME=/usr/local/Cellar/systemc/2.3.1
export OCP_HOME=/Library/OCPIP
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
export PATH=/usr/local/opt/llvm/bin:$PATH
export PATH=$PATH:~/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin
export PATH=$PATH:/Users/hhsu/Projects/llvm/build/bin

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

alias cl='pbpaste | pygmentize -O"style=tango, fontface=Monaco" -f rtf -g  | pbcopy'
alias clcpp='pbpaste | pygmentize -l cpp -O"style=tango, fontface=Monaco, bg=dark" -f rtf -g  | pbcopy'
alias clpy='pbpaste | pygmentize -l python -O"style=tango, fontface=Monaco" -f rtf -g  | pbcopy'

alias sb='stack build'

# to use GCC instead of llvm
# alias gcc='gcc-9'
# alias cc='gcc-9'
# alias g++='g++-9'
# alias c++='c++-9'

function clp(){
	pbpaste | pygmentize -O"style=tango, fontface=Menlo" -f rtf -s -l $1  | pbcopy
}


fpath=(/usr/local/share/zsh-completions $fpath)
#export PATH="/usr/local/sbin:$PATH"

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

alias ggrep='git grep'
alias ub='ssh hsuhau@127.0.0.1 -p 2222'
export PATH="/usr/local/opt/sqlite/bin:$PATH"
alias vi='mvim -v'
