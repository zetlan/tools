#! /bin/zsh

# Start by verifying that $DEV is set; exit if not
if [[ -z "${DEV}" ]]; then
  echo "DEV is not set; please set it to the directory where you keep your development projects."
  exit 1
fi

cp $DEV/tools/dotfiles/.exrc $HOME/.exrc
cp $DEV/tools/dotfiles/.zshenv $HOME/.zshenv
cp $DEV/tools/dotfiles/.zshrc $HOME/.zshrc