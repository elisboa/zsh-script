# Instalação

## Execute o script de instalação do ZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ErickRock/zsh-script/master/zsh-install.sh)" -y
```

Feche o terminal, e abra novamente, aprecerá a seguinte mensagem, entre com a opção 2 e tecle enter.

![](/.github/default.png)


Confirme o que for necessário durante a execução e pronto, está tudo configurado,
pode fechar o terminal e abrir novamente que começará a instalação dos pluguins.

## Execute o script de instalação do ZSH Tools + Pluguins

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ErickRock/zsh-script/master/tools-zsh-install.sh)" -y
```

Confirme o que for necessário durante a execução e pronto, está tudo configurado,
pode fechar o terminal e abrir novamente que começará a instalação dos pluguins.

## Pluguins inclusos

Esses são os plugins inclusos e abaixo explico como funciona cada um deles:

- `zdharma/fast-syntax-highlighting`: Adiciona syntax highlighting na hora da escrita de comandos que facilita principalmente em reconhecer comandos que foram digitados de forma incorreta;
- `zsh-users/zsh-autosuggestions`: Sugere comandos baseados no histórico de execução conforme você vai digitando;
- `zsh-users/zsh-completions`: Adiciona milhares de completitions para ferramentas comuns como Yarn, Homebrew, NVM, Node, etc, para você precisar apenas apertar TAB para completar comandos.