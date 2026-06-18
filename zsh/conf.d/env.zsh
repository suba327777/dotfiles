#brew
export PATH=/opt/homebrew/bin:$PATH

#mise
eval "$(mise activate zsh)"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 17`
PATH=${JAVA_HOME}/bin:${PATH}

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Lua
export PATH=$PATH:$HOME/.config/lsp/lua-language-server/bin

# Locale
export LANG=en_US.UTF-8
