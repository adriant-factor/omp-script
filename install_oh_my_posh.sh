#!/bin/bash

# Exit on any error
set -e

# Update system packages
echo "Updating system packages..."
sudo apt-get update

# Install necessary utilities (wget for downloading and unzip for extracting zip files)
echo "Installing necessary utilities..."
sudo apt-get install -y wget unzip

# Install Oh My Posh
echo "Installing Oh My Posh..."
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Download and extract the themes
echo "Setting up Oh My Posh themes..."
mkdir -p ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

# Configure the shell to use Oh My Posh with the Mojada theme
USER_NAME=$(whoami)  # Retrieve the username of the person running the script
MOJADA_THEME_PATH="/home/${USER_NAME}/.poshthemes/mojada.omp.json"

echo "Configuring the shell to use Oh My Posh with the Mojada theme..."
echo "eval \"\$(oh-my-posh --init --shell bash --config ${MOJADA_THEME_PATH})\"" >> ~/.bashrc

# Inform the user
echo "Oh My Posh installation and configuration completed. Please restart your terminal or source your .bashrc to apply changes:"
echo "source ~/.bashrc"
