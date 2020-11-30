alias fishbashrc='vim ~/.config/fish/config.fish'
alias cdfishbashrc='cd ~/.config/fish/'
alias e='/c/Windows/explorer .'
alias ap='cd /c/additionalPath'
alias vi='vim'
alias sp='cd /c/Users/chetan/AppData/Roaming/code/User/snippets/' 
alias _docker='"/c/Program\ Files/Docker\ Toolbox/docker"'
alias docker='winpty docker'
alias fishfunctions='cd /usr/share/fish/functions/'

# Debugging - seeing the output of pwd
# pwd 

# When you type command like `type fishbashrc` it will tell you that its a function definition. Yikes!!!


# I can define my custom functions to be loaded at the time of starting the shell. But I choose to import a complete custom directory instead using below methodology.

# For importing particular file ->  source /home/chetan/.config/fish/sahil_custom_fish/coco.fish

# Below statement imports all files in folder sahil_custom_fish_path
# source /home/chetan/.config/fish/sahil_custom_fish_path/*.fish

for f in ~/.config/fish/sahil_custom_fish_path/*.fish
	source $f 
end
