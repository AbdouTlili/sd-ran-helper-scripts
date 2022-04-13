#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${RED}resetting k8s cluster ...${NC}"
yes | sudo kubeadm reset 
echo -e "${RED}resetting k8s cluster DONE !${NC}"

echo -e "${RED}Cleaning iptables ...${NC}"
sudo iptables -F

echo -e "${RED}DONE ...${NC}"