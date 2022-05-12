#!/bin/bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
alias vi='vim'
if [ -t 1 ]; then
	exec fish
fi
