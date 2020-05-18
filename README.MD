# Instalação

## Execute o script de instalação do ZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ErickRock/zsh-script/master/zsh-install.sh)" -y
```

Entre com a opção 2 e tecle enter.

![](/.github/default.png)

## Execute o script de instalação do ZSH Tools + Pluguins

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ErickRock/zsh-script/master/tools-zsh-install.sh)" -y
```

Presete atenção, pedirá confirmação de senha do sudo, e confirmação do shell com `y`, após isso está tudo configurado, pode fechar o terminal e abrir novamente que começará a instalação dos pluguins.

![](/.github/yes.png)

## Tema Spaceship

Execute o comando

```bash
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
```

## Crie o link simbólico

```bash
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

## Ativando o tema

Digite code `code ~/.zshrc` e tecle enter que abrirá o VS Code para editar o arquivo, edite o campo `ZSH_THEME="fino"` para `ZSH_THEME="spaceship"` e salve. Pronto, você acabou de mudar o tema.

## Pluguins inclusos

Esses são os plugins inclusos e abaixo explico como funciona cada um deles:

- `zdharma/fast-syntax-highlighting`: Adiciona syntax highlighting na hora da escrita de comandos que facilita principalmente em reconhecer comandos que foram digitados de forma incorreta.
- `zsh-users/zsh-autosuggestions`: Sugere comandos baseados no histórico de execução conforme você vai digitando.
- `zsh-users/zsh-completions`: Adiciona milhares de completitions para ferramentas comuns como Yarn, Homebrew, NVM, Node, etc, para você precisar apenas apertar TAB para completar comandos.