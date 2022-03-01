#Tools
apt-get install \
ca-certificates \
curl \
gnupg \
lsb-release

#Dotnet sdk
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt-get update -y 
apt-get install -y apt-transport-https 
apt-get update  -y
apt-get install -y dotnet-sdk-6.0

#Github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null
apt update -y 
apt install gh -y 

#KeePass
apt-add-repository ppa:jtaylor/keepass
apt-get update
apt-get install -y keepass2
apt install -y libcanberra-gtk-module libcanberra-gtk3-module

#OneDrive
add-apt-repository ppa:yann1ck/onedrive
apt install onedrive

#Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
