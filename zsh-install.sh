#!/bin/bash
# Script de instalação - ZSH shell
# Autor: Erick Garcia Kun
# Descrição: Instalação do Oh-my-zsh shell padrão

cd ~ || exit


for comando in "add-apt-repository ppa:git-core/ppa" "apt-get update -q" "apt-get upgrade -yq" 
do

    echo -e "Iniciando comando $comando... "
    if sudo $comando
    then
        echo "SUCESSO"
    else
        echo "FALHA ao executar comando $comando"
        exit 1
    fi
done

for pacote in git zsh
do
    echo -ne "Iniciando instalação do pacote $pacote: "
    if sudo apt-get install -yq $pacote
    then
        echo -e "SUCESSO"
    else
        echo -e "FALHA. Tentando recuperar quebra de pacotes"
        if sudo apt-get install -f
        then
            echo  -e "Sucesso ao recuperar pacotes quebrados"
        else
            echo -e "Falha ao recuperar pacotes quebrados"
        fi
    fi
done

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

echo -e "Iniciando o ZSH: "
zsh
