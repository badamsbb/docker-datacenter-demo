curl -SLf https://packages.docker.com/1.13/install.sh | sh
sudo ufw disable
until nc -w 1 192.168.35.10 443; do sleep 10; done
until [ -f /vagrant/swarm-join.sh ]; do sleep 2; done
sudo bash /vagrant/swarm-join.sh