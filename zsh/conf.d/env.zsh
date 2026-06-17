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

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 17`
PATH=${JAVA_HOME}/bin:${PATH}

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Lua
export PATH=$PATH:$HOME/.config/lsp/lua-language-server/bin

# Locale
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
