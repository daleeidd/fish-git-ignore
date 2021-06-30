set --local this_filename (realpath (status filename))

# Go through each completion path and source the first file that is not this file.
# We need this because this file overrides the provided git completion file which has everything.
for path in $fish_complete_path
  set --local that_filename (realpath $path/git.fish 2> /dev/null)

  # realpath provides nothing on failure which produces errors in next stanza
  if test -z "$that_filename"
    continue
  end

  if test -f "$that_filename" -a "$that_filename" != "$this_filename"
    source $that_filename
    break
  end
end

# Completions for the command itself
complete \
  --command 'git' \
  --arguments ignore \
  --description '.gitignore generator using gitignore.io' \
  --condition '__fish_git_needs_command'

complete \
  --command 'git' \
  --condition '__fish_git_using_command ignore'  \
  --arguments 'list' \
  --description 'List all templates' \
  --no-files

# TODO: filter out selected
# Completions for the command's parameters
complete \
  --command 'git' \
  --condition '__fish_git_using_command ignore'  \
  --arguments "(git ignore list | string split ',')" \
  --no-files
