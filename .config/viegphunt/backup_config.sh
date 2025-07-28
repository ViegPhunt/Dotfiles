#!/usr/bin/env bash
set -euo pipefail

# Initialize
timestamp=$(date +"%Y%m%d-%H%M%S")
backup_dir="$HOME/.backup-$timestamp"
dotfiles_root="$(pwd)"

echo "==> Backing up existing config files before stowing"
echo "==> Backup will be saved to: $backup_dir"
mkdir -p "$backup_dir"

# Define targets
targets=(".zshrc" ".tmux.conf")

# Add .config subdirectories
while IFS= read -r -d '' dir; do
	targets+=("${dir#$dotfiles_root/}")
done < <(find "$dotfiles_root/.config" -mindepth 1 -maxdepth 1 -type d -print0 2>/dev/null || true)

# Backup existing files (non-symlinks only)
for target in "${targets[@]}"; do
	src="$HOME/$target"
	if [[ -e "$src" && ! -L "$src" ]]; then
		dest="$backup_dir/$target"
		mkdir -p "$(dirname "$dest")"
		mv "$src" "$dest"
		echo "-> Backed up: $target"
	fi
done

echo
echo "Backup completed!"
echo
