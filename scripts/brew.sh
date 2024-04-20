#! /bin/zsh

# Complain and exist if $DEV is not set
if [[ -z "${DEV}" ]]; then
  echo "DEV is not set; please set it to the directory where you keep your development projects."
  exit 1
fi

# Load our shared functions:
source "${DEV}/tools/scripts/functions.sh"

# Check if Homebrew is installed:
if ! command -v brew; then
  warn "Homebrew is not installed; installing now..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure `brew` command exists:
if ! command -v brew; then
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/scott/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Now use Homebrew to install the packages we need from our Brewfile.
# Our brewfile location can be set in $BREWFILE, but we'll default to resources/Brewfile.
if [[ -z "${BREWFILE}" ]]; then
  BREWFILE="${DEV}/tools/resources/Brewfile"
fi
info "Installing packages from Brewfile ($BREWFILE)..."


brew bundle --file="$BREWFILE"