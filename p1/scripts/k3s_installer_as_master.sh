
echo "192.168.56.110   mbariS" >> /etc/hosts

# to disable the firewall and allow conection to the machine
sudo systemctl disable firewalld --now

# install k3s without need of `sudo`
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --write-kubeconfig-mode 644 --node-ip "192.168.56.110"

sudo cat /var/lib/rancher/k3s/server/token > /vagrant/token
