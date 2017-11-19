source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"
# zplug "zsh-users/zsh-syntax-highlighting"

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

zplug "arzzen/calc.plugin.zsh"
zplug "rimraf/k"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

# Environment

umask 022
export EDITOR=nvim
export TERMINAL=urxvt
export BROWSER=browser
export LANG=en_US.UTF-8
export TERM=xterm-256color # Fix 24bit colors nvim in tmux
# #[ -n "$TMUX" ] && export TERM=xterm-256color
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export GDK_USE_XFT=1 # ?
export QT_XFT=true # ?

# Colors

# export LSCOLORS=ExFxCxdxBxegedabagacad
# export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# New solarized theme
export LS_COLORS='no=00;38;5;244:rs=0:di=00;38;5;33:ln=01;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=01;38;5;64:*.tar=00;38;5;61:*.tgz=01;38;5;61:*.arj=01;38;5;61:*.taz=01;38;5;61:*.lzh=01;38;5;61:*.lzma=01;38;5;61:*.tlz=01;38;5;61:*.txz=01;38;5;61:*.zip=01;38;5;61:*.z=01;38;5;61:*.Z=01;38;5;61:*.dz=01;38;5;61:*.gz=01;38;5;61:*.lz=01;38;5;61:*.xz=01;38;5;61:*.bz2=01;38;5;61:*.bz=01;38;5;61:*.tbz=01;38;5;61:*.tbz2=01;38;5;61:*.tz=01;38;5;61:*.deb=01;38;5;61:*.rpm=01;38;5;61:*.jar=01;38;5;61:*.rar=01;38;5;61:*.ace=01;38;5;61:*.zoo=01;38;5;61:*.cpio=01;38;5;61:*.7z=01;38;5;61:*.rz=01;38;5;61:*.apk=01;38;5;61:*.gem=01;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.tex=01;38;5;245:*.rdf=01;38;5;245:*.owl=01;38;5;245:*.n3=01;38;5;245:*.ttl=01;38;5;245:*.nt=01;38;5;245:*.torrent=01;38;5;245:*.xml=01;38;5;245:*Makefile=01;38;5;245:*Rakefile=01;38;5;245:*build.xml=01;38;5;245:*rc=01;38;5;245:*1=01;38;5;245:*.nfo=01;38;5;245:*README=01;38;5;245:*README.txt=01;38;5;245:*readme.txt=01;38;5;245:*.md=01;38;5;245:*README.markdown=01;38;5;245:*.ini=01;38;5;245:*.yml=01;38;5;245:*.cfg=01;38;5;245:*.conf=01;38;5;245:*.c=01;38;5;245:*.cpp=01;38;5;245:*.cc=01;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=01;38;5;166:*.mpg=01;38;5;166:*.mpeg=01;38;5;166:*.m2v=01;38;5;166:*.mkv=01;38;5;166:*.ogm=01;38;5;166:*.mp4=01;38;5;166:*.m4v=01;38;5;166:*.mp4v=01;38;5;166:*.vob=01;38;5;166:*.qt=01;38;5;166:*.nuv=01;38;5;166:*.wmv=01;38;5;166:*.asf=01;38;5;166:*.rm=01;38;5;166:*.rmvb=01;38;5;166:*.flc=01;38;5;166:*.avi=01;38;5;166:*.fli=01;38;5;166:*.flv=01;38;5;166:*.gl=01;38;5;166:*.m2ts=01;38;5;166:*.divx=01;38;5;166:*.webm=01;38;5;166:*.axv=01;38;5;166:*.anx=01;38;5;166:*.ogv=01;38;5;166:*.ogx=01;38;5;166:';
zstyle ':completion:*' list-colors 'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
autoload -U colors && colors

# Options

# setopt correct
setopt no_flow_control # ignore ^S/^Q
# setopt mark_dirs # add "/" if completes directory
# setopt always_last_prompt

# Options: completion
setopt complete_aliases
setopt auto_param_slash
setopt auto_param_keys
setopt magic_equal_subst # Enable completion in "--option=arg"
setopt glob_complete # Expand globs when completion
setopt numeric_glob_sort
setopt extended_glob
setopt list_packed
setopt dotglob

# Options: moving
setopt auto_cd
setopt auto_pushd # cd = pushd
setopt pushd_ignore_dups
setopt pushd_silent

setopt print_exit_value # Print exit value if return code is non-zero

setopt promptpercent
setopt promptsubst

# History

HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=50000
setopt share_history
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_history
setopt hist_expand

# Completion

autoload -U compinit && compinit
zstyle ':completion:*' rehash true
zstyle ':completion:*' use-cache 'yes'
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'
zstyle ':completion:*:expand:*' tag-order all-expansions
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~''*?.old' '*?.pro'
zstyle ':completion:*:functions' ignored-patterns '_*'
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

rationalise-dot() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}

autoload -U url-quote-magic
zle -N self-insert url-quote-magic
zle -N rationalise-dot

# Keybindings

set -s escape-time 0
set -o vi
# bindkey -e
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

bindkey . rationalise-dot
bindkey -s '\C-o' 'ranger-cd\C-m'

# improved less option
export LESS='--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS'

# Alias

alias l='ls -la -CF --group-directories-first'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -lh'
alias p='yaourt'
alias pa='sudo pacman --color=always'
alias v='nvim'
alias sv='sudo -E nvim'
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias du='du -h'
alias df='df -h'
alias mux='tmuxinator'
alias grep='grep --colour'
alias mkdir='mkdir -p'
alias _='sudo -E'
alias x='startx -- -ardelay 200 -arinterval 30'
alias 'ps?'='ps ax | grep -i'
alias r='rails'
alias xdefaults-reload='xrdb ~/.Xdefaults'
touchx() { touch $1 && chmod u+x $1 }

# Functions

ranger-cd() {
  before="$(pwd)"
  #python3 /usr/bin/ranger --fail-unless-cd "$@" || return 0
  python3 /usr/bin/ranger "$@" || return 0
  after="$(grep \^\' ~/.config/ranger/bookmarks | cut -b3-)"
  if [[ "$before" != "$after" ]]; then
    cd "$after"
  fi
}

extract () {
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xvjf "$1"    ;;
      *.tar.gz)    tar xvzf "$1"    ;;
      *.tar.xz)    tar xvJf "$1"    ;;
      *.bz2)       bunzip2 "$1"     ;;
      *.rar)       unrar x "$1"     ;;
      *.gz)        gunzip "$1"      ;;
      *.tar)       tar xvf "$1"     ;;
      *.tbz2)      tar xvjf "$1"    ;;
      *.tgz)       tar xvzf "$1"    ;;
      *.zip)       unzip "$1"       ;;
      *.Z)         uncompress "$1"  ;;
      *.7z)        7z x "$1"        ;;
      *.iso)       7z x "$1"        ;;
      *)           echo "don't know how to extract '$1'... trying 7z" && 7z x $1;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

pk () {
  if [ $1 ] ; then
    case $1 in
      tbz)    tar cjvf $2.tar.bz2 $2      ;;
      tgz)    tar czvf $2.tar.gz  $2    ;;
      tar)    tar cpvf $2.tar  $2       ;;
      bz2)    bzip $2 ;;
      gz)     gzip -c -9 -n $2 > $2.gz ;;
      zip)    zip -r $2.zip $2   ;;
      7z)     7z a $2.7z $2    ;;
      *)      echo "'$1' cannot be packed via pk()" ;;
    esac
  else
      echo "'$1' is not a valid file"
  fi
}

start() {
  for arg in $*; do
    sudo systemctl start $arg
  done
}

stop() {
  for arg in $*; do
    sudo systemctl stop $arg
  done
}

restart() {
  for arg in $*; do
    sudo systemctl restart $arg
  done
}

reload() {
  for arg in $*; do
    sudo systemctl reload $arg
  done
}

# Prompt

typeset -Ag FX FG BG

FX=(
    reset     "%{[00m%}"
    bold      "%{[01m%}" no-bold      "%{[22m%}"
    italic    "%{[03m%}" no-italic    "%{[23m%}"
    underline "%{[04m%}" no-underline "%{[24m%}"
    blink     "%{[05m%}" no-blink     "%{[25m%}"
    reverse   "%{[07m%}" no-reverse   "%{[27m%}"
)

for color in {000..255}; do
    FG[$color]="%{[38;5;${color}m%}"
    BG[$color]="%{[48;5;${color}m%}"
done

PROMPT='%{$FG[240]%}$%f '

# Other

[ -d "$HOME/.bin" ] && PATH="$HOME/.bin:$PATH"
[ -f $HOME/.zshrc-$HOST ] && . $HOME/.zshrc-$HOST

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GREP_COLOR='1;32'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""' # Ignore directories from .gitignore in FZF
export MYSQL_PS1="(\u@\h) [\d]> "

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# NVM
export NVM_DIR="/home/user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# source /etc/profile
# export KEYTIMEOUT=1
#
# stty ixany
# stty ixoff -ixon
#
# export GPG_TTY=`tty`
#
# typeset -U path cdpath fpath manpath
# typeset -g -A key
# bindkey '^?' backward-delete-char
# bindkey '^[[1~' beginning-of-line
# bindkey '^[[5~' up-line-or-history
# bindkey '^[[3~' delete-char
# bindkey '^[[4~' end-of-line
# bindkey '^[[6~' down-line-or-history
# bindkey '^[[A' up-line-or-search
# bindkey '^[[D' backward-char
# bindkey '^[[B' down-line-or-search
# bindkey '^[[C' forward-char
# bindkey "^[[3~"  delete-char
# bindkey "^[3;5~" delete-char
# bindkey "\e[1~" beginning-of-line
# bindkey "\e[4~" end-of-line
# bindkey "\e[7~" beginning-of-line
# bindkey "\e[8~" end-of-line
# bindkey "\eOH" beginning-of-line
# bindkey "\eOF" end-of-line
# bindkey "\e[H" beginning-of-line
# bindkey "\e[F" end-of-line
# bindkey "^[[5~" up-line-or-history
# bindkey "^[[6~" down-line-or-history
# bindkey '\e[A'  up-line-or-history
# bindkey '\e[B'  down-line-or-history
# bindkey '\e[C'  forward-char
# bindkey '\e[D'  backward-char
# bindkey '\eOA'  up-line-or-history
# bindkey '\eOB'  down-line-or-history
# bindkey '\eOC'  forward-char
# bindkey '\eOD'  backward-char
# bindkey '^i' expand-or-complete-prefix # completion in the middle of a line
#
# READNULLCMD=${PAGER}
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[38;5;246m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[04;38;5;146m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export GDK_USE_XFT=1
# export QT_XFT=true
# export AWT_TOOLKIT="MToolkit"
# export _JAVA_OPTIONS="-Dswing.aatext=true -Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
#
# PROMPT='\
# %{$FG[240]%}\
# %2c \
# %{$FG[240]%}» \
# %{$reset_color%}\
# %{$reset_color%}\
# '
#
# RPROMPT='\
# ${vcs_info_msg_0_} \
# $FG[240]\
# %n\
# @\
# %m\
# %{$reset_color%}%\
# '
# typeset -Ag FX FG BG
#
# FX=(
#     reset     "%{[00m%}"
#     bold      "%{[01m%}" no-bold      "%{[22m%}"
#     italic    "%{[03m%}" no-italic    "%{[23m%}"
#     underline "%{[04m%}" no-underline "%{[24m%}"
#     blink     "%{[05m%}" no-blink     "%{[25m%}"
#     reverse   "%{[07m%}" no-reverse   "%{[27m%}"
# )
#
# for color in {000..255}; do
#     FG[$color]="%{[38;5;${color}m%}"
#     BG[$color]="%{[48;5;${color}m%}"
# done
