echo "192.168.56.110 mbariS" >> /etc/hosts
export TOKEN=`cat /vagrant/token`
curl -sfL https://get.k3s.io | K3S_URL="https://mbariS:6443" K3S_TOKEN=$TOKEN sh -s - --node-ip "192.168.56.111"
