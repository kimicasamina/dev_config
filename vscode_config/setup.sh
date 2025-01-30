# Install VSCode extensions
echo "Installing vscode extensions..."
cat ./vscode_config/vscode_extensions.txt | xargs -n 1 code --install-extension

# Restore VSCode settings
echo "Restoring vscode settings..."
cp ./vscode_config/vscode_settings.json ~/.config/Code/User/settings.json
cp ./vscode_config/vscode_keybindings.json ~/.config/Code/User/keybindings.json
cp -r ./vscode_config/vscode_snippets/ ~/.config/Code/User/snippets/
