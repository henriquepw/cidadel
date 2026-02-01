local packages = {
	"sddm",
	"git",
	"qt6-svg",
	"qt6-virtualkeyboard",
	"qt6-multimedia-ffmpeg",
}

return {
	description = "SDDM login manager with Astronaut pixel_sakura theme",
	conflicts = {
		"login-managers/ly-enable",
	},
	services = {
		enabled = { "sddm" },
		disabled = {},
	},
	post_install_hook = "scripts/install.sh",
	hook_behavior = "once",
	packages = packages,
}
