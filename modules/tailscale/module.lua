---@diagnostic disable: undefined-global -- dcli globals are provided by dcli runtime
local packages = {
	"sunshine",
	"tailscale",
}

-- Get current hostname for metadata
local hostname = dcli.system.hostname()

return {
	description = "Tailscale VPN",

	services = {
		enabled = { "tailscaled" },
		disabled = {},
	},

	metadata = {
		hostname = hostname,
	},

	packages = packages,
}
