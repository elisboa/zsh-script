#Script de instalação - ZSH + Pluguins + Autocomplete 
# Autor: Erick Garcia Kun
# Descrição: Instalação do Oh-my-zsh + Pluguins de autocomplete e tema Spaceship padrão
#!/bin/bash
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

#Instalação do ZSH
cd ~

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y

cd ~

sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

sed -i 's/robbyrussell/spaceship/' ~/.zshrc

sudo echo '#Configuração da interface do terminal
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
SPACESHIP_CHAR_SUFFIX=" "' >> ~/.zshrc

#Instalação do pluguins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

sudo echo "
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions" >> ~/.zshrc 

echo -e "Instalação concluída com sucesso!!\nFeito por: Erick Garcia"
