#! /bin/zsh

# Start by verifying that $DEV is set; assume ${HOME}/Development if not
if [[ -z "${DEV}" ]]; then
  export DEV="${HOME}/Development"
fi

# Load our shared functions:
source "${DEV}/tools/scripts/functions.sh"

info "Setting up Homebrew..."
$DEV/tools/scripts/brew.sh

info "Installing dotfiles..."
$DEV/tools/scripts/dotfiles.sh