source ~/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# antigen bundle git
antigen theme candy
# antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen theme minimal
# Tell antigen that you're done.
antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

DEFAULT_USER=`whoami`
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH=/Users/jchiu/.composer/vendor/bin/:$PATH
export NODE_PATH=/usr/local/lib/node_modules

# ------------- #
# GIT heart FZF #
# ------------- #

export PATH="/Users/jchiu/bin:$PATH"

source /Users/jchiu/dev/wf/wf_complete_zsh
