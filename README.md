# Plugins
- vim-go
- vim-airline
- vim-airline-themes
- vim-colorschemes
- vim-fugitive
- vim-indent-guides
- neocomplete
- nerdtree
- nerdtree-git-plugin
- tagbar
- syntastic
- vim-puppet
- vim-snipmate
- vim-snippets
- vim-addon-mw-utils

# Git branch in bash prompt
```
function local_git_ps1 ()
{
	# This code drops the trailing space from the git information
	local prompt
	prompt=$(__git_ps1)
	short_prompt=${prompt:1}
	echo -e $short_prompt
}

if command -v __git_ps1 >/dev/null 2>&1  ; then
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:$(local_git_ps1)\w\$ '
f
```
