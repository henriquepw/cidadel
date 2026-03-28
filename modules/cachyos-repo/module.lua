return {
	description = "Main Module file for cachy repos module",
	conflicts = {},
	post_install_hook = "scripts/install-cachyos-repos.sh",
	packages = {
		"cachyos-hooks",
		"cachyos-kernel-manager",
		"cachyos-keyring",
		"cachyos-micro-settings",
		"cachyos-mirrorlist",
		"cachyos-packageinstaller",
		"cachyos-plymouth-bootanimation",
		"cachyos-rate-mirrors",
		"cachyos-settings",
		"cachyos-snapper-support",
		"cachyos-v3-mirrorlist",
		"cachyos-v4-mirrorlist",
		"cachyos-zsh-config",
	},
	metadata = {
		category = "system",
	},
}
