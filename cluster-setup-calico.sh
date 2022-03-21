#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "${RED}init cluster with pod-network cidr 192.168.0.0/16 ...${NC}"

yes | sudo kubeadm init --pod-network-cidr=192.168.0.0/16

yes |mkdir -p $HOME/.kube
yes |sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
yes |sudo chown $(id -u):$(id -g) $HOME/.kube/config


echo "${RED}creating tigera-operator ...${NC}"

kubectl create -f https://projectcalico.docs.tigera.io/manifests/tigera-operator.yaml

echo "${RED}creating calico resources ...${NC}"

kubectl create -f https://projectcalico.docs.tigera.io/manifests/custom-resources.yaml

echo "${RED}tainting master ...${NC}"

kubectl taint nodes --all node-role.kubernetes.io/master-

echo "${RED}DONE ! Happy Kubing :) ...${NC}"

sudo kubectl get pods -A
