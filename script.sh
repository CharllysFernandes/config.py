#!/bin/bash

# Atualiza os pacotes do sistema
sudo softwareupdate --install --all

# Verifica se o Homebrew está instalado
if ! command -v brew &> /dev/null
then
    echo "Homebrew não encontrado. Instalando..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "Homebrew já está instalado."
fi

# Atualiza o Homebrew
brew update

# Instala o Python
brew install python

# Verifica a versão do Python instalada
echo "Python instalado: $(python3 --version)"

# Define Python 3 como padrão
if ! grep -q "alias python='python3'" ~/.zshrc; then
    echo "alias python='python3'" >> ~/.zshrc
    echo "Python 3 configurado como padrão."
else
    echo "Python 3 já está configurado como padrão."
fi

# Aplica as alterações
source ~/.zshrc

echo "Configuração do Python concluída!"
