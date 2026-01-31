#!/usr/bin/env bash

# Install node package manager
echo "▶ Installing NVM"
if ! command -v nvm >/dev/null 2>&1; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
fi

# Install tmux package manager
echo "▶ Installing TPM"
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# set zsh as default terminal shell
sudo chsh -s $(which zsh)
