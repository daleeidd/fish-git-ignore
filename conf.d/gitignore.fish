git config --global alias.ignore '!f() { args=$@; fish --command "__gitignore $args"; }; f'

set --local name (basename (status filename) .fish){_uninstall}

function $name --on-event $name
  git config --global --unset alias.ignore
end
