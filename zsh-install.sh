#!/bin/bash
# Script de instalação - ZSH shell
# Autor: Erick Garcia Kun
# Descrição: Instalação do Oh-my-zsh shell padrão

cd ~ || exit

echo -e "Iniciando comando apt-get update... "
if sudo apt-get update -q
then
    echo "SUCESSO"
else
    echo "FALHA"
    exit 1
fi

sudo apt-get upgrade -y
sudo add-apt-repository ppa:git-core/ppa 
sudo apt update && sudo apt install git zsh -y

# Verifica se existe o zsh no sistema...
if command -v zsh
then
    # Se sim, altera a shell padrão do usuário para o ZSH
    sudo chsh -s "$(command -v zsh)" "$USER"
else
    # Senão, exibe mensagem de erro e sai
    echo -e "Não foi encontrado o executável do ZSH no sistema, saindo com erro"
    exit 1
fi

exec "$(command -v zsh)"