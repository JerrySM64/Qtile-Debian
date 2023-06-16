#!/bin/bash

# Remove the EXTERNALLY-MANAGED file so pip works again
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

# Install the full Python 3 Suite, pip, git and all Dependencies
sudo apt update && sudo apt install python3-full python3-pip libpangocairo-1.0-0 python3-cffi python3-xcffib git

# Install cairocffi using pip
pip install --no-cache-dir cairocffi

# Clone the Qtile Source Code from GitHub
git clone https://github.com/qtile/qtile.git

# Install Qtile
cd qtile
pip install .

# Xsessions Desktop file
sudo mv qtile.desktop /usr/share/xsessions/
sudo chmod +x /usr/share/xsessions/qtile.desktop
