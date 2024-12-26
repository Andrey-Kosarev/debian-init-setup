# update everything
sudo apt update 
sudo apt upgrade -y

# enable adding new apt repositories
sudo apt install software-properties-common -y
sudo apt install python-software-properties -y


# run scripts
./install_apt_packages.sh

./install_latest_nvim.sh
./install_latest_git.sh
./install_latest_python.sh

#aliases
./add_aliases.sh
