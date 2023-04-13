echo "Welcome! Let's start setting up your system. It could take more than 10 minutes, be patient"

sudo apt-get update

echo 'installing curl' 
sudo apt install curl -y

echo 'installing vim'
sudo apt install vim -y
clear

echo 'installing git' 
sudo apt install git -y

echo "What name do you want to use in GIT user.name?"
echo "For example, mine will be \"Vitor O\""
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear 

echo "What email do you want to use in GIT user.email?"
echo "For example, mine will be \"vitoros@outlook.com.br\""
read git_config_user_email
git config --global user.email $git_config_user_email
clear

echo "Setting cache to save PAT for your git credential"
git config --global credential.helper cache

echo 'enabling workspaces for both screens' 
gsettings set org.gnome.mutter workspaces-only-on-primary false

echo 'installing zsh'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

echo 'installing tool to handle clipboard via CLI'
sudo apt-get install xclip -y

export alias pbcopy='xclip -selection clipboard'
export alias pbpaste='xclip -selection clipboard -o'
source ~/.zshrc

echo 'installing spotify' 
snap install spotify

echo 'installing pip3'
sudo apt-get install python3-pip

echo 'installing JupyterNotebook'
sudo -H pip install jupyter

echo 'Installing VSCode'
sudo snap install --classic code

echo 'Installing Code Extensions'
code --install-extension moyu.snapcode
code --install-extension Shan.code-settings-sync

echo 'installing Discord'
sudo snap install discord

echo 'installing Slack'
sudo snap install slack -- classic

echo 'installing Teams'
sudo snap install teams-for-linux

echo 'installing Edge'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt update && sudo apt install microsoft-edge-stable

echo 'installing chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo 'installing autosuggestions' 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
source ~/.zshrc

echo 'installing GNOME-Tweaks'
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool

echo 'installing Typora'
sudo snap install typora

echo 'installing VLC'
sudo snap install vlc

echo 'installing OBS Studio'
sudo snap install obs-studio

echo 'installing Steam'
sudo add-apt-repository multiverse
sudo apt update
sudo apt install steam

echo 'installing PostgreSQL'
sudo apt install postgresql-14

echo 'installing dbeaver'
wget -c https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb
sudo dpkg -i dbeaver-ce_6.0.0_amd64.deb
sudo apt-get install -f

echo 'installing pgadmin'
# Install the public key for the repository (if not done previously):
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
# Create the repository configuration file:
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
# Install pgAdmin
# Install for both desktop and web modes:
sudo apt install pgadmin4
# Install for desktop mode only:
sudo apt install pgadmin4-desktop
# Install for web mode only: 
sudo apt install pgadmin4-web 
# Configure the webserver, if you installed pgadmin4-web:
sudo /usr/pgadmin4/bin/setup-web.sh

clear 

echo 'All setup, enjoy!'
