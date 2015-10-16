# vagrantconfigurator.sh

sudo apt-get update -y
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker vagrant
sudo -i
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose