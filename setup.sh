# update everything
sudo apt update 
sudo apt upgrade -y

# enable adding new apt repositories
sudo apt install software-properties-common -y
sudo apt install python-software-properties -y


# run scripts
sudo ./install_apt_packages.sh

sudo ./install_latest_nvim.sh
sudo ./install_latest_git.sh
sudo ./install_latest_python.sh

#aliases
sudo ./add_aliases.sh
