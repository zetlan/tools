# Executed at the start of every shell

export DEV="${HOME}/Development"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Make sure PostgreSQL is in the path. First, figure out where it is:
PSQL_VERSION=16
PSQL_DIR="$(brew --prefix postgresql@${PSQL_VERSION})"
# Add it to the path if it's not already there:
if [[ ":${PATH}:" != *":${PSQL_DIR}/bin:"* ]]; then
  export PATH="${PSQL_DIR}/bin:${PATH}"
fi