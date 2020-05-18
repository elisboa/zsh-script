# Requisitos mínimos
- Windows 10 Versão 2004
- - Hyper-V ativado
- - Subsistema do Windows para Linux ativado
- - Uma distribuição Linux instalada
- - Fonte Firacode instalado

## Baixe e instale a fonte FiraCode Light TTF
<a href="https://github.com/tonsky/FiraCode/releases/download/4/Fira_Code_v4.zip"><img src="https://raw.githubusercontent.com/tonsky/FiraCode/master/extras/download.png" width="520" height="130"></a>

## Habilite o Hyper-V e o WSL via Powershell Admin

```pws
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

```pws
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```
**OBS: Algumas máquinas é necessário habilitar a virtualização na bios também**

## Instale uma Distro linux
<a href="https://www.microsoft.com/pt-br/p/ubuntu/9nblggh4msv6?SilentAuth=1&wa=wsignin1.0&activetab=pivot:overviewtab"><img src="https://store-images.s-microsoft.com/image/apps.63954.13510798887446365.018f40a9-2b3c-4ff8-bb22-6247f3e8bb82.2b3e22de-e0e8-4c6d-bac4-cf78a8b03158?mode=scale&q=90&h=270&w=270&background=%23E95420" width="200" height="200"></a>

## Instale o Windows Terminal

<a href="https://www.microsoft.com/pt-br/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab"><img src="https://store-images.s-microsoft.com/image/apps.22832.13926773940052066.96ea379b-9e7a-49f1-8cee-25ed75770e30.dcdc888f-85a5-4182-8126-245f0757ef3a?mode=scale&q=90&h=300&w=200" width="200" height="300"></a>

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