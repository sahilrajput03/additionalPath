#!/bin/bash

#Note below path is added when we install yarn via msi/exe program installer.
#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias vi='vim'
alias node='winpty node'
if [ -t 1 ]; then
	exec fish
fi
#fish
