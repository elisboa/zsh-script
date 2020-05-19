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

echo "\e[00;32mInstalação do Git e ZSH concluída com Êxito!!\e[00m"
echo "\e[05;32mFeche o terminal e abra novamente!!\e[47m"