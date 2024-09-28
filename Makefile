SHELL=/bin/zsh

.PHONY: without-brew
without-brew: iterm2 karabiner nvim tmux zsh

.PHONY:all
all: brew iterm2 karabiner nvim tmux zsh

.PHONY:clean
clean:
	cd brew && make clean && \
	cd ../iterm2 && make clean && \
	cd ../karabiner && make clean && \
	cd ../nvim && make clean && \
	cd ../tmux && make clean && \
	cd ../wezterm && make clean && \
	cd ../zsh && make clean && 

.PHONY: brew
brew:
	cd brew && make

.PHONY: iterm2
itrerm2:
	cd iterm2 && make

.PHONY: karabiner
karabiner:
	cd karabiner && make

.PHONY: nvim
nvim:
	cd nvim && make

.PHONY:tmux
tmux:
	cd tmux && make

.PHONY: wezterm
wezterm:
	cd wezterm && make

.PHONY: zsh
zsh:
	cd zsh && make
