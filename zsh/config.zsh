#brew
export PATH=/opt/homebrew/bin:$PATH

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(anyenv init -)"

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# JAVA VERSION
#export JAVA_17_HOME=$(/usr/libexec/java_home -v 17)
#export JAVA_11_HOME=$(/usr/libexec/java_home -v 11)
#export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)

# Java Versionの切替aliasを設定
#alias java17="export JAVA_HOME=$JAVA_17_HOME"
#alias java11="export JAVA_HOME=$JAVA_11_HOME"
#alias java8="export JAVA_HOME=$JAVA_8_HOME"

#デフォルトでjavaのversonを11にする
#export JAVA_HOME=`/usr/libexec/java_home -v 11`
#17
export JAVA_HOME=`/usr/libexec/java_home -v 17`
PATH=${JAVA_HOME}/bin:${PATH}

# rust path
export PATH="$HOME/.cargo/bin:$PATH"

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


