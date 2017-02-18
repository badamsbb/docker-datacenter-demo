curl -SLf https://packages.docker.com/1.13/install.sh | sh
sudo ufw disable
docker run --rm --name ucp \
 -v /var/run/docker.sock:/var/run/docker.sock \
 docker/ucp:2.1.0 install \
 --host-address 192.168.35.10 \
 --admin-username admin \
 --admin-password password

 sudo docker swarm join-token worker | grep -v command > /vagrant/swarm-join.sh