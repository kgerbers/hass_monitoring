#!/bin/bash

set -e

USER_NAME=${1:-$(whoami)}
HOME_DIR=$(eval echo "~$USER_NAME")

echo "Installing Glances for user: $USER_NAME"
echo "Home directory resolved to: $HOME_DIR"

# Create Python venv if not exists
if [ ! -d "$HOME_DIR/glances-venv" ]; then
    echo "Creating Python virtual environment..."
    python3 -m venv "$HOME_DIR/glances-venv"
fi

# Activate venv and install Glances and dependencies
echo "Installing Glances in virtual environment..."
"$HOME_DIR/glances-venv/bin/pip" install --upgrade pip
"$HOME_DIR/glances-venv/bin/pip" install glances[all]

# Copy service file
echo "Installing systemd service..."
sudo cp glances.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now glances.service

echo "Installation complete. Glances should be running now."
