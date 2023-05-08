# ----------------
# path
# ----------------
# brew path
export PATH=/opt/homebrew/bin:$PATH
#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(anyenv init -)"

# 各バージョンのJAVA_HOMEを設定
#export JAVA_17_HOME=$(/usr/libexec/java_home -v 17)
#export JAVA_11_HOME=$(/usr/libexec/java_home -v 11)
#export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)

# Java Versionの切替アリスを設定
#alias java17="export JAVA_HOME=$JAVA_17_HOME"
#alias java11="export JAVA_HOME=$JAVA_11_HOME"
#alias java8="export JAVA_HOME=$JAVA_8_HOME"

#デフォルトでjavaのversonを11にする
#export JAVA_HOME=`/usr/libexec/java_home -v 11`
#17
export JAVA_HOME=`/usr/libexec/java_home -v 17`
PATH=${JAVA_HOME}/bin:${PATH}

# rust pathを通す
export PATH="$HOME/.cargo/bin:$PATH"
# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# vim en_US
export LANG=en_US.UTF-8
	

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/suba/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/suba/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/suba/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/suba/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# ----------------
# Fig
# ----------------
# # Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"


#----------------
#zsh-theme
#----------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ----------------
# alias
# ----------------
alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'
