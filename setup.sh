 #!/bin/bash

DOT_FILES=(.p10k.zsh .tmux.conf .vimrc .zshrc init.vim)

for file in ${DOT_FILES[@]}
do
  if [ $file = init.vim ]; then
    ln -s $HOME/dotfiles/$file $HOME/.config/nvim/$file
  else
    ln -s $HOME/dotfiles/$file $HOME/$file
  fi
done
