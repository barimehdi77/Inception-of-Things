# to disable the firewall and allow conection to the machine
sudo systemctl disable firewalld --now

# install k3s without need of `sudo`
# curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --write-kubeconfig-mode 644 --node-ip "190.168.56.110"
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --write-kubeconfig-mode=644 --node-ip 192.168.56.110"  sh -s -;


/usr/local/bin/kubectl apply -f /vagrant/confs/app-one.yaml
/usr/local/bin/kubectl apply -f /vagrant/confs/app-two.yaml
/usr/local/bin/kubectl apply -f /vagrant/confs/app-three.yaml
/usr/local/bin/kubectl apply -f /vagrant/confs/app-one-service.yaml
/usr/local/bin/kubectl apply -f /vagrant/confs/app-two-service.yaml
/usr/local/bin/kubectl apply -f /vagrant/confs/app-three-service.yaml



/usr/local/bin/kubectl apply -f /vagrant/confs/ingress.yaml