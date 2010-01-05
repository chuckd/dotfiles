function git_dirty
	if not is_git_repo
		return 1
	end
	not git diff HEAD --quiet 2> /dev/null

end
