# omp-script
An install script to download and install the Oh My Posh binary and update .bashrc

# Oh My Posh Installation on Ubuntu

This guide explains how to install Oh My Posh on Ubuntu systems using a script that automatically sets up everything needed for an enhanced terminal experience with the Mojada theme.

## Prerequisites

Ensure your system has `wget` and `unzip` installed. These tools will be used to download and extract necessary files. If you do not have these tools installed, the script will attempt to install them for you.

## Installation Steps

Follow these instructions to download, install, and configure Oh My Posh with a single set of commands:

### Quick Install

Open a terminal and execute the following commands. This will handle the download, installation, and initial configuration:

```bash
# Navigate to your home directory or any specific directory where you want to download the script
cd ~

# Download the installation script
wget https://github.com/adriant-factor/omp-script/raw/main/install_oh_my_posh.sh -O install_oh_my_posh.sh

# Make the script executable
chmod +x install_oh_my_posh.sh

# Execute the script
./install_oh_my_posh.sh

# Apply the changes
source ~/.bashrc
