# Debugging for seeing if file is actually sourced when config.fish is executed on the first load of the fish, yikes!!
# echo "reached here - 1_test.fish"

function coco
   ls 
end

function l
#	ls -alF --group-directories-first
echo DIRECTORIES:-
	ls -alF --color=always --group-directories-first | grep "\/" | tail -n +3
echo
echo FILES:-
	ls -alp --color=always | grep -v / | tail -n +2     #-v tells to return lines not containing /
	   # -a for all files including hidden files.
	   # -l for list format
	   # -p for showing / at the end of folder.
end
#comment-Ctrl+w p : to open current file to the RIGHT in split view.-Ctrl+w p : to open current file to the RIGHT in split view.-Ctrl+w p : to open current file to the RIGHT in split view.-Ctrl+w p : to open current file to the RIGHT in split view.-Ctrl+w p : to open current file to the RIGHT in split view.-Ctrl+w p : to open current file to the
