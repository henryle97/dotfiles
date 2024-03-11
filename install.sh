#!/usr/bin/env bash

set -e

cp .zshrc ~/
cp .p10k.zsh ~/


if ! [ -d ~/.oh-my-zsh/custom/themes ]; then
  mkdir ~/.oh-my-zsh/custom/themes
fi

if ! [ -d ~/.oh-my-zsh/custom/themes ]; then
  mkdir -p ~/.oh-my-zsh/custom/themes
fi

if ! [ -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then
  git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
else
  cd ~/.oh-my-zsh/custom/themes/powerlevel10k
  git pull
fi

if ! [ -d ~/.oh-my-zsh/custom/plugins ]; then
  mkdir ~/.oh-my-zsh/custom/plugins
fi

if ! [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
else
  cd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  git pull
fi

if ! [ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
  cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  git pull
fi

if ! [ -d ~/.oh-my-zsh/custom/plugins/conda-zsh-completion ]; then
  git clone https://github.com/conda-incubator/conda-zsh-completion.git ~/.oh-my-zsh/custom/plugins/conda-zsh-completion
else
  cd ~/.oh-my-zsh/custom/plugins/conda-zsh-completion
  git pull
fi

# if command -v conda &> /dev/null
# then
#     conda init --all
# fi