# Install Linux packages
echo "Install linux packages..."
sudo apt update
sudo apt upgrade -y
sudo apt install -y $(cat package_list.txt)
cat ./linux_config/snap_list.txt | xargs -n 1 sudo snap install
sudo cp ./linux_config/sources.list.backup /etc/apt/sources.list