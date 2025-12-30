#!/usr/bin/env bash

# NixOS rebuild script for vm-nixos
# This script rebuilds the system using the flake configuration

set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Rebuilding NixOS configuration from $SCRIPT_DIR..."
sudo nixos-rebuild switch --flake "$SCRIPT_DIR#vm-nixos"

echo "Rebuild complete!"
