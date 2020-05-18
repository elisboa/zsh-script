#!/bin/bash
# Script de instalação - ZSH shell
# Autor: Erick Garcia Kun
# Descrição: Instalação do Oh-my-zsh shell padrão

cd ~ 
sudo apt-get update
sudo apt-get upgrade -y
sudo add-apt-repository ppa:git-core/ppa 
sudo apt update && sudo apt install git zsh -y

#Define o zsh como shell padrão
sudo echo "# if running in terminal...
if test -t 1; then
# ...start zsh
exec zsh
fi" > previa.txt
cat ~/.bashrc >> previa.txt
sudo mv previa.txt ~/.bashrc

#Instala ZSH Tools via curl
cd ~

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y

printf "$GREEN"
	cat <<-'EOF'
	
		Você pode editar o arquivo ~/.zshrc para configurar pluguins, temas e opções.

		p.s. Follow us on https://twitter.com/ohmyzsh

    Instalação concluída com sucesso!!\nFeito por: Erick Garcia
      
	EOF