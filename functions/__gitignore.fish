function __gitignore --description 'Api integration for the gitignore.io service. Supports spaces and commas'
  # Support spaces by normalizing as comma-separated values
  if not string match -- ',' "$argv"
    set argv (string join ',' (string split ' ' (string trim "$argv")))
  end
  curl --silent --location "https://www.gitignore.io/api/$argv"
end
