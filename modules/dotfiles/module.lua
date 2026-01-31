local packages = {
	"stow",
}

return {
	description = "Dotfiles",
	dotfiles_sync = true,
	dotfiles = {
		{
			source = ".XCompose",
			target = "~/.XCompose",
		},
		{
			source = ".zshrc",
			target = "~/.zshrc",
		},
		{
			source = ".bashrc",
			target = "~/.bashrc",
		},
		{
			source = ".gitconfig",
			target = "~/.gitconfig",
		},
	},
	packages = packages,
}
