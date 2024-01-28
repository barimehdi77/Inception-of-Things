# to disable the firewall and allow conection to the machine
sudo systemctl disable firewalld --now

# install k3s without need of `sudo`
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --write-kubeconfig-mode 644
export PATH=$PATH:/usr/local/bin
pwd
ls -la
# create the pods in the ../pods/fifo-pod.yml
k3s kubectl apply -f /vagrant/pods/fifo-pod.yml
