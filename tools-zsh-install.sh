#!/bin/bash
# Script de instalação - ZSH Tools + Autocomplete 
# Autor: Erick Garcia Kun
# Descrição: Instalação do tema Spaceship padrão
#
#Instalação do Spaceship Theme
#
#Clona o tema Spaceship
cd ~
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"


#Criação do link simbólico
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#Editar o ~/.zshrc para setar o tema para Spaceship
sed -i 's/robbyrussell/spaceship/' ~/.zshrc


#Adição de configuração do spaceship no arquivo ~/.zshrc
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

#Adição dos pluguins 
sudo echo "zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions" >> ~/.zshrc


printf "$GREEN"
	cat <<-'EOF'
		         __                                     __
		  ____  / /_     ____ ___  __  __   ____  _____/ /_
		 / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
		/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
		\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
		                        /____/                       ....Está instalado!


		Você pode editar o arquivo ~/.zshrc para configurar pluguins, temas e opções.

		p.s. Follow us on https://twitter.com/ohmyzsh
      
	EOF