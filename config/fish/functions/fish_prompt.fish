function fish_prompt --description 'Write out the prompt'
  printf '%s%s@%s%s ' (set_color black) (whoami) (hostname|cut -d . -f 1) (set_color normal)

  # Write the process working directory
  if test -w "."
    printf '%s%s' (set_color -o $fish_color_cwd) (prompt_pwd)
  else
    printf '%s%s' (set_color -o $fish_color_uneditable_cwd) (prompt_pwd)
  end

  printf '%s%s ' (set_color black) (__git_ps1)

  if git_dirty
    printf '%s☠ ' (set_color red)
  end

  #printf '%s$%s ' (set_color -o $fish_color_cwd) (set_color normal)

  printf '%s> ' (set_color black)
end
