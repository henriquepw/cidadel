local io = require("io")

local packages = {
	"stow",
}

local dotfiles = {}
local cmd = [[ls -pa ~/.config/arch-config/modules/dotfiles/home | grep -v /]]
local dir = io.popen(cmd)
if dir then
	for file in dir:lines() do
		table.insert(dotfiles, {
			source = "home/" .. file,
			target = "~/" .. file,
		})
	end

	dir:close()
end

return {
	description = "Dotfiles",
	dotfiles_sync = true,
	dotfiles = dotfiles,
	packages = packages,
}
