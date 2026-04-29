#!/bin/bash

# One-click installation script for Termux with pro features

# Update package lists
apt update && apt upgrade -y

# Install necessary system packages
apt install -y python git wget

# Install Python dependencies
pip install --upgrade pip
pip install requests beautifulsoup4 numpy pandas

# Set up directory structure
mkdir -p ~/termux_pro/features
mkdir -p ~/termux_pro/scripts

# Environment configuration
export TERMUX_PRO_HOME=~/termux_pro

# Define aliases
echo "alias termuxpro='python ~/termux_pro/scripts/main.py'" >> ~/.bashrc

# Verification checks
if command -v python &> /dev/null; then
    echo "Python installed successfully"
else
    echo "Python installation failed"
fi

if command -v git &> /dev/null; then
    echo "Git installed successfully"
else
    echo "Git installation failed"
fi

# Final message
echo "Installation complete! Configure your environment with the new settings."