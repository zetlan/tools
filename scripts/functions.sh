# A collection of useful functions shared by the scripts in this repository.

# Print an info message, text in bold blue:
function info {
  echo -e "\033[1;34mINFO: $1\033[0m"
}

# Print a warning message, text in bold yellow:
function warn {
  echo -e "\033[1;33mWARNING: $1\033[0m"
}

# Print an error message, text in bold red:
function error {
  echo -e "\033[1;31mERROR: $1\033[0m"
}

# Check if a file or directory exists:
function exists {
  if [ -e "$1" ]; then
    return 0
  else
    return 1
  fi
}