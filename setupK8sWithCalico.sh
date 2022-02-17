yes | sudo kubeadm init --pod-network-cidr=192.168.0.0/16

yes |mkdir -p $HOME/.kube
yes |sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
yes |sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl create -f https://projectcalico.docs.tigera.io/manifests/tigera-operator.yaml

kubectl create -f https://projectcalico.docs.tigera.io/manifests/custom-resources.yaml

kubectl taint nodes --all node-role.kubernetes.io/master-

sudo kubectl get pods -A
