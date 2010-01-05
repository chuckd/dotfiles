function is_git_repo
	git status > /dev/null 2> /dev/null
	not test $status -eq 128


end
