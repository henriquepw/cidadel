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
	"go",
	"rust",
	"zig",
	"lazygit",
	"lazydocker",
}

return {
	description = "Development tools",
	post_install_hook = "scripts/nvm.sh",
	hook_behavior = "once",
	packages = packages,
	conflicts = {},
}
