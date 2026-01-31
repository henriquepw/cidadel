local packages = {
	"android-studio",
	"clang",
	"cmake",
	"curl",
	"git",
	"github-cli",
	"unzip",
	"yazi",
	"opencode-bin",
	"tmux",
	"nvm",
	"bun",
	"go",
	"rust",
	"zig",
	"lazygit",
	"lazydocker",
	"zsh",
}

return {
	description = "Development tools",
	post_install_hook = "scripts/setup.sh",
	hook_behavior = "once",
	packages = packages,
	conflicts = {},
}
