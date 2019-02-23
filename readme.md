# Fish `git ignore`

Adds an integration with the [gitignore.io] service in the form of a [git alias]. Includes completions for the [fish] shell.

## Installation

**Warning!** The installation uses `git config --global alias.ignore` which will override an alias with the same name. It also removes the alias on uninstallation.

`fisher add daleeidd/fish-git-ignore`

## Usage

`git ignore node sass > .gitignore`

or

`git ignore node,sass > .gitignore`

Commas are supported to match the [gitignore.io] API.

## Support
- [fish] 3.0.0+
- [git] 1.4.0+

[fish]: https://fishshell.com
[git]: https://git-scm.com
[git alias]: https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases
[gitignore.io]: https://gitignore.io
