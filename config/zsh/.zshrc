
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zmodload zsh/zprof

autoload -Uz compinit
compinit
ZSH_DISABLE_COMPFIX="true"

plugins=(git autojump zsh-osx-autoproxy  zsh-autosuggestions zsh-syntax-highlighting)
export ZSH="/Users/qlzhou/.oh-my-zsh"
export HOMEBREW_NO_AUTO_UPDATE=ture

 
# zsh theme settings
# ZSH_THEME="myys"
ZSH_THEME="powerlevel10k/powerlevel10k"
# source $ZSH/oh-my-zsh.sh

DISABLE_MAGIC_FUNCTIONS=true
autoload -U compinit && compinit -u
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/bottles
source  /Users/qlzhou/.oh-my-zsh/custom/plugins/zsh-osx-autoproxy/zsh-osx-autoproxy.plugin.zsh
source /Users/qlzhou/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/qlzhou/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

alias vim=nvim
alias vi=nvim
alias ll='ls -l'
alias ls='lsd'
alias cat='ccat'
alias lc='colorls -lA --sd'
alias cl=clear
alias f='z'

# fzf命令设置
export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="fd -t d . "

autoload -U promptinit; promptinit
prompt pure
export PATH="/usr/local/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export PATH=/usr/local/bin:$PATH

#chinese 乱码
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# alias voltagebuild = 'sudo /Users/qlzhou/Documents/HackintoshTools/voltageshift/voltageshift buildlaunchd -125 -125 -125 -75 0 0 1 56 90 1 60'
#

export GOROOT=/usr/local/Cellar/go/1.16.6/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

#设置 gopls 环境变量
export PATH=$PATH:$GOPATH/bin:$HOME/.cargo/bin


PATH="/System/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

PATH="/usr/local/Cellar/python@3.9/3.9.6/bin:${PATH}"
export PATH

# completion for git 
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
# LVIM
export PATH=$HOME/.local/bin:$PATH
# path for lua
alias luamake=/Users/qlzhou/tools/lua-language-server/3rd/luamake/luamake
export PATH="$HOME/tools/lua-language-server/bin/macOS:$PATH"
# path for npm and vimlsp
export PATH="$HOME/.npm-packages/bin:$PATH"
# startship seetings
export STARSHIP_CONFIG=~/.starship/config.toml
eval "$(starship init zsh)"
# perl
if (command -v perl && command -v cpanm) >/dev/null 2>&1; then
  test -d "$HOME/perl5/lib/perl5" && eval $(perl -I "$HOME/perl5/lib/perl5" -Mlocal::lib)
fi
# 颜色配置
export TERM="xterm-256color"
# z.lua 
# eval "$(lua /path/to/z.lua --init zsh)"
 
# rust
export PATH="$HOME/.cargo/bin:$PATH"
# zsh-theme-everforest-dark
# source /Users/qlzhou/Documents/github/dotfiles/config/zsh/.zsh-theme-everforest-dark

export EDITOR="nvim"
plugins=(fast-syntax-highlighting)

# zsh-theme-everforest-dark
# sour:wqce ~/path/to/.zsh-theme-everforest-dark

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
#

# {{{completion
zcomp_init () {
    # Auto load
    autoload -U +X compinit && compinit
    autoload -U +X bashcompinit && bashcompinit

    # Set options
    setopt MENU_COMPLETE       # press <Tab> one time to select item
    setopt COMPLETEALIASES     # complete alias
    setopt COMPLETE_IN_WORD    # Complete from both ends of a word.
    setopt ALWAYS_TO_END       # Move cursor to the end of a completed word.
    setopt PATH_DIRS           # Perform path search even on command names with slashes.
    setopt AUTO_MENU           # Show completion menu on a successive tab press.
    setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
    setopt AUTO_PARAM_SLASH    # If completed parameter is a directory, add a trailing slash.
    setopt EXTENDED_GLOB       # Needed for file modification glob modifiers with compinit
    unsetopt FLOW_CONTROL      # Disable start/stop characters in shell editor.

    # Use caching to make completion for commands such as dpkg and apt usable.
    zstyle ':completion::complete:*' use-cache on
    zstyle ':completion::complete:*' cache-path "${ZDOTDIR:-$HOME}/.cache/.zcompcache"
    
    # Case-insensitive (all), partial-word, and then substring completion.
    if zstyle -t ':prezto:module:completion:*' case-sensitive; then
      zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
      setopt CASE_GLOB
    else
      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
      unsetopt CASE_GLOB
    fi
    
    # Group matches and describe.
    zstyle ':completion:*:*:*:*:*' menu select
    zstyle ':completion:*:matches' group 'yes'
    zstyle ':completion:*:options' description 'yes'
    zstyle ':completion:*:options' auto-description '%d'
    zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
    zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
    zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
    zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
    zstyle ':completion:*:default' list-prompt '%S%M matches%s'
    zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
    zstyle ':completion:*' group-name ''
    zstyle ':completion:*' verbose yes
    
    # Fuzzy match mistyped completions.
    zstyle ':completion:*' completer _complete _match _approximate
    zstyle ':completion:*:match:*' original only
    zstyle ':completion:*:approximate:*' max-errors 1 numeric
    
    # Increase the number of errors based on the length of the typed word. But make
    # sure to cap (at 7) the max-errors to avoid hanging.
    zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'
    
    # Don't complete unavailable commands.
    zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
    
    # Array completion element sorting.
    zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
    
    # Directories
    export LSCOLORS=ExFxCxdxBxegedabagacad
    export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    # zstyle ':completion:*' list-colors 'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
    zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
    zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
    zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
    zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
    zstyle ':completion:*' squeeze-slashes true
    
    # History
    zstyle ':completion:*:history-words' stop yes
    zstyle ':completion:*:history-words' remove-all-dups yes
    zstyle ':completion:*:history-words' list false
    zstyle ':completion:*:history-words' menu yes
    
    # Environment Variables
    zstyle ':completion::*:(-command-|export):*' fake-parameters ${${${_comps[(I)-value-*]#*,}%%,*}:#-*-}
    
    # Populate hostname completion. But allow ignoring custom entries from static
    # */etc/hosts* which might be uninteresting.
    zstyle -a ':prezto:module:completion:*:hosts' etc-host-ignores '_etc_host_ignores'
    
zstyle -e ':completion:*:hosts' hosts 'reply=(
      ${=${=${=${${(f)"$(cat {/etc/ssh/ssh_,~/.ssh/}known_hosts(|2)(N) 2> /dev/null)"}%%[#| ]*}//\]:[0-9]*/ }//,/ }//\[/ }
      ${=${(f)"$(cat /etc/hosts(|)(N) <<(ypcat hosts 2> /dev/null))"}%%(\#${_etc_host_ignores:+|${(j:|:)~_etc_host_ignores}})*}
      ${=${${${${(@M)${(f)"$(cat ~/.ssh/config 2> /dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
    )'
    
    # Don't complete uninteresting users...
    zstyle ':completion:*:*:*:users' ignored-patterns \
      adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
      dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
      hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
      mailman mailnull mldonkey mysql nagios \
      named netdump news nfsnobody nobody nscd ntp nut nx openvpn \
      operator pcap postfix postgres privoxy pulse pvm quagga radvd \
      rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs '_*'
    
    # ... unless we really want to.
    zstyle '*' single-ignored show
    
    # Ignore multiple entries.
    zstyle ':completion:*:(rm|kill|diff):*' ignore-line other
    zstyle ':completion:*:rm:*' file-patterns '*:all-files'

    # auto rehash
    zstyle ':completion:*' rehash true

    #highlight prefix
    zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)*==34=34}:${(s.:.)LS_COLORS}")'

    # Kill
    zstyle ':completion:*:*:*:*:processes' command 'ps -u $LOGNAME -o pid,user,command -w'
    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
    zstyle ':completion:*:*:kill:*' menu yes select
    zstyle ':completion:*:*:kill:*' force-list always
    zstyle ':completion:*:*:kill:*' insert-ids single
    
    # Man
    zstyle ':completion:*:manuals' separate-sections true
    zstyle ':completion:*:manuals.(^1*)' insert-sections true
    
    # Media Players
    zstyle ':completion:*:*:mpg123:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
    zstyle ':completion:*:*:mpg321:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
    zstyle ':completion:*:*:ogg123:*' file-patterns '*.(ogg|OGG|flac):ogg\ files *(-/):directories'
    zstyle ':completion:*:*:mocp:*' file-patterns '*.(wav|WAV|mp3|MP3|ogg|OGG|flac):ogg\ files *(-/):directories'
    
    # Mutt
    if [[ -s "$HOME/.mutt/aliases" ]]; then
      zstyle ':completion:*:*:mutt:*' menu yes select
      zstyle ':completion:*:mutt:*' users ${${${(f)"$(<"$HOME/.mutt/aliases")"}#alias[[:space:]]}%%[[:space:]]*}
    fi
    
    # SSH/SCP/RSYNC
    zstyle ':completion:*:(ssh|scp|rsync):*' tag-order 'hosts:-host:host hosts:-domain:domain hosts:-ipaddr:ip\ address *'
    zstyle ':completion:*:(scp|rsync):*' group-order users files all-files hosts-domain hosts-host hosts-ipaddr
    zstyle ':completion:*:ssh:*' group-order users hosts-domain hosts-host users hosts-ipaddr
    zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
    zstyle ':completion:*:(ssh|scp|rsync):*:hosts-domain' ignored-patterns '<->.<->.<->.<->' '^[-[:alnum:]]##(.[-[:alnum:]]##)##' '*@*'
    zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'
}
# }}}

zinit light romkatv/powerlevel10k
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit ice wait'0' lucid depth=1; zinit light zsh-users/zsh-history-substring-search
zinit ice wait'1' lucid depth=1; zinit light ytet5uy4/fzf-widgets
zinit ice wait'0' lucid depth=1; zinit light urbainvaes/fzf-marks
zinit ice wait'0' lucid depth=1; zinit light skywind3000/z.lua
zinit ice wait'1' lucid depth=1; zinit light hlissner/zsh-autopair
zinit ice wait'0' lucid depth=1; zinit light sainnhe/zsh-completions
zinit ice wait'0' lucid depth=1 \
    atload"export FPATH=$HOME/.zinit/plugins/RobSis---zsh-completion-generator/completions:$FPATH"
zinit light RobSis/zsh-completion-generator
zinit ice wait'0' lucid depth=1 \
    atload"export FPATH=$HOME/.zinit/plugins/nevesnunes---sh-manpage-completions/completions/zsh:$FPATH" \
    atload"zcomp_init" \
    atclone"mv run.sh gencomp-manpage" \
    atclone"sed -i -e '1i pushd ~/.zinit/plugins/nevesnunes---sh-manpage-completions/' gencomp-manpage" \
    atclone"sed -i -e '\$a popd' gencomp-manpage" \
    atpull"%atclone" \
    as"program"
zinit light nevesnunes/sh-manpage-completions
zinit ice wait'0' pick'.zsh-snippets' lucid; zinit light "$HOME"
zinit ice wait'1' lucid; zinit snippet OMZ::plugins/extract/extract.plugin.zsh
zinit ice wait'1' lucid; zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh


FAST_HIGHLIGHT[chroma-git]="chroma/-ogit.ch"

# {{{fzf
# $ fzf                 # fuzzy search files
# Tab/Down/S-Tab/Up     # navigate
# C-s                   # Select items
# C-p                   # Toggle preview
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="
-m --height=50%
--layout=reverse
--prompt='❯ '
--ansi
--tabstop=4
--color=dark
--color=bg:-1,hl:2,fg+:4,bg+:-1,hl+:2
--color=info:1,prompt:2,pointer:5,marker:1,spinner:3,header:11
--bind=tab:down,btab:up,ctrl-s:toggle,ctrl-p:toggle-preview
"

# C-f fzf-widgets
# C-r history search
# **<Tab> fuzzy matching path
if [ -d /usr/share/fzf ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi
bindkey '^F'  fzf-select-widget
bindkey '^R'  fzf-insert-history
bindkey -r "^[c"
bindkey -r "^T"
# }}}
# {{{fzf-marks
# Usage:
# $ mark        # mark current directory
# $ fzm         # select marked directories using fzf
# ^z            # select marked directories using fzf
# ^d            # delete selected items when in fzf
FZF_MARKS_FILE="$HOME/.cache/fzf-marks"
FZF_MARKS_COMMAND="fzf"
FZF_MARKS_COLOR_RHS="249"
FZF_MARKS_JUMP="^z"
# }}}
# {{{zsh-autosuggestions
export ZSH_AUTOSUGGEST_USE_ASYNC="true"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"
bindkey '^[z' autosuggest-execute
# }}}
# {{{zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}}
# {{{z.lua
export _ZL_DATA="$HOME/.cache/.zlua"
export _ZL_MATCH_MODE=1
alias zc='z -c' # 严格匹配当前路径的子路径
alias zz='z -i' # 使用交互式选择模式
alias zf='z -I' # 使用 fzf 对多个结果进行选择
# }}}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# zsh-theme-everforest-dark
zinit snippet https://github.com/sainnhe/dotfiles/raw/master/.zsh-theme-everforest-dark
