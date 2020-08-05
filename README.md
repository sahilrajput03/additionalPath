## Commands
••Executables works for both .cmd and .bat files.
•c => Fast commit only.(provide message as argument{works without agrument too.})
	important: WE HAVE => 
		• c.bat $*    
	Actually, $* equals to "arg1 arg2 arg3 ...so on" in bash language.
					(in file c)
		   WE HAVE =>
		• git add . && git commit -m "%~1 ~sahil"
	Actually, %~1 refers argument with no surrounding quotes in cmd.
					(in file c.bat)

•p => Push only to current branch while setting default upstream too.

•s => Set default upstream to same remote branch as we have on local(on same branch name on remote).

•cpn => CommitPushNow: This is actually c && p {Note: p has inbuilt setting upstream for the currently checkedout branch}.

•reactBoilerPlate >> rb command was made with npx create-react-app on 6th july.

•reactBoilerPlate >> rbt command was made with npx create-react-app reactboilerplatetypescript --template typescript

•Sounds folder is for the timer's sounds, don't play with it.