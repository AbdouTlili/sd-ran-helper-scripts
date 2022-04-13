#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${RED}starting the installation of SDRAN requirements in kube-system ...${NC}"

echo -e "${RED}installing atomix using helm ...${NC}"
helm install atomix-controller atomix/atomix-controller -n kube-system --wait --version 0.6.9
echo -e "${RED}Done installing atomix-controller ...${NC}"


echo -e "${RED}installing atomix using helm ...${NC}"
helm install atomix-raft-storage atomix/atomix-raft-storage -n kube-system --wait --version 0.1.25
echo -e "${RED}Done installing atomix-raft-storage ...${NC}"


echo -e "${RED}installing atomix using helm ...${NC}"
helm install onos-operator onos/onos-operator -n kube-system --wait --version 0.5.2
echo -e "${RED}Done installing onos-operator ...${NC}"

echo
echo
echo -e "${RED}deploying sdran chart ...${NC}"


kubectl create ns sdran 
helm -n sdran install sd-ran sdran/sd-ran --version 1.4.2
echo
echo -e "${RED} sdran setup completed.. \"run kubectl get pods -A\" to ensure that all pods are running correctly ${NC}"
