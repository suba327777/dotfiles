.PHONY: init
init:
	ln -svf ${PWD}/Brewfile ${HOME}/Brewfile
	type brew > /dev/null 2>&1 \
	  	|| /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	#brew update
	#brew upgrade
	HOMEBREW_BUNDLE_FILE="${HOME}/Brewfile" \
											 brew bundle -v
	brew cleanup

.PHONY: clean
clean:
	unlink ${HOME}/Brewfile || true
