alias node='winpty node' #This is must for any node user on windows!!
alias npm='winpty npm.cmd' #This is must for any npm user on windows,
# and wow it does fix all issues i had on conemu with npm, yikes!
alias pc='pwd | clip' #Copyies current directory to clipboard, note this works for windows only,
# for linux version of `pc` try exploring xclip install it via `apt-get install xclip`. 
# ↑ ↑ ↑ src: https://stackoverflow.com/questions/749544/pipe-to-from-the-clipboard-in-bash-script
alias rs-start='winpty react-scripts.cmd start'
alias rs-build='winpty react-scripts.cmd build'
alias rs-test='winpty react-scripts.cmd test'
alias rs-eject='winpty react-scripts.cmd eject'
#Learn more about `react-scripts`: https://blog.logrocket.com/everything-you-need-to-know-about-react-scripts/

alias fishbashrc_source='. ~/.config/fish/config.fish'
alias fishbashrc_vi='vim ~/.config/fish/config.fish'
alias fishbashrc_cat='cat ~/.config/fish/config.fish'
alias fishbashrc_cd='cd ~/.config/fish/'

# FYI(for other bashed :LOL:): Use source ~/.bash_profile or . ~/.bash_profile to source the modified file.
# FYI (FOR FISH): . ~/.config/fish/config.fish

alias e='/c/Windows/explorer .'
alias ap='cd /c/additionalPath'
alias vi='vim'
alias sp='cd /c/Users/chetan/AppData/Roaming/code/User/snippets/' 
alias _docker='"/c/Program\ Files/Docker\ Toolbox/docker"'
alias docker='winpty docker'
alias docker-compose='winpty docker-compose'
alias fishfunctions='cd /usr/share/fish/functions/'
alias dch='docker-compose --help'
alias grip='winpty grip'
alias r='reset'
alias psql='winpty psql'
alias blazepack='winpty blazepack.cmd' #I also have bp aliased to a winpty script too, yikes!!
alias code='code-insiders'

# GIT related aliases!
#######Tip: You can use `go` which is a script in additionalPath that uses git-open npm package to open current
# git repo in browser. Also, you can use `git open` that I defined in .gitconfig file that aliases to 
# `hub browse` and it also works intended!
alias g='git'
alias gl='git lg'
alias gs='git status'
alias ga='git add .'
alias gb='git branch'
alias gco='git commit'
alias gch='git checkout'
alias gd='git diff'
#TIP: USING `gitf`: You can use fetcher i.e., npm package: `npm install -g github-files-fetcher` and have defined a bash 
# script for it in additionalPath, i.e., gitf stands for gitfile or gitfolder, it can clone file/folder
# and repositories in .zip format.

alias yi='yarn init -y && gitignorecreate'
alias ni='npm init -y && gitignorecreate'
alias gi='git init && gitignorecreate'
alias gcr='git create'
#FYI: GIT You can use 
# 1.) `git create` (to create github repos directly as I have aliased `hub create` to git create. Note I have added a leading ! i.e., `!hub create` coz hub is not a git internal command, yikes!(src: https://github.com/google/git-appraise/issues/77#issuecomment-336901599)
# 2.) `git unstage` to do reverse of `git add`. You can pass multiple file/folder to unstage at once. Also `git rm` is not reverse of `git add`, as git rm will actaully delete the file, shit fuck!!
# 3.) `git last` to view the last commit made using thsi command!

# Setting location for aws cli tool!
#set AWS_DEFAULT_REGION ap-south-1



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

# Below command sets the startup dir for interactive sessions(thus we are safe with all our scripts, yikes!)
#if status is-interactive
#  cd $HOME
#end
