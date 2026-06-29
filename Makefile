SHELL=/bin/zsh

.PHONY: without-brew
without-brew: aerospace karabiner nvim tmux zsh

.PHONY:all
all: aerospace brew karabiner lazygit mise nvim tmux zsh

.PHONY:clean
clean:
	cd aerospace && make clean && \
	cd brew && make clean && \
	cd ../karabiner && make clean && \
	cd ../nvim && make clean && \
	cd ../mise && make clean && \
	cd ../tmux && make clean && \
	cd ../wezterm && make clean && \
	cd ../zsh && make clean

.PHONY: brew
brew:
	cd brew && make

.PHONY: aerospace
aerospace:
	cd aerospace && make

.PHONY: lazygit
lazygit:
	cd lazygit && make

.PHONY: mise
mise:
	cd mise && make

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
