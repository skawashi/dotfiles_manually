 #!/bin/bash

  DOT_FILES=(.p10k.zsh .tmux.conf .vimrc .zshrc)

 for file in ${DOT_FILES[@]}
 do
     ln -s $HOME/dotfiles/$file $HOME/$file
 done
