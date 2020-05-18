#!/bin/bash
# Script de instalação - ZSH Tools + Autocomplete 
# Autor: Erick Garcia Kun
# Descrição: Instalação do Oh-my-zsh Pluguins de autocomplete e tema Spaceship padrão

cd ~

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y

#Instalação do Spaceship Theme
cd ~

sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "./.oh-my-zsh/custom/themes/spaceship-prompt"

sudo ln -s "./.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

sed -i 's/robbyrussell/spaceship/' ~/.zshrc

sudo echo "#Configuração da interface spaceship do terminal
SPACESHIP_PROMPT_ORDER=(
   user          # Username section
   dir           # Current directory section
   host          # Hostname section
   git           # Git section (git_branch + git_status)
   hg            # Mercurial section (hg_branch  + hg_status)
   exec_time     # Execution time
   line_sep      # Line break
   vi_mode       # Vi-mode indicator
   jobs          # Background jobs indicator
   exit_code     # Exit code section
   char          # Prompt character
   docker        # Docker Version
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="->"
SPACESHIP_CHAR_SUFFIX=" "" >> ~/.zshrc



#Instalação do Zinit com plubuins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

sudo echo "zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions" >> ~/.zshrc

echo "Instalação concluída com sucesso!!\nFeito por: Erick Garcia"