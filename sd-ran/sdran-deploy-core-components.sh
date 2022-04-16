#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${RED}deploying atomix-controller 0.6.9 ...${NC}"

helm install atomix-controller atomix/atomix-controller -n kube-system --wait --version 0.6.9

echo -e "${RED}deploying atomix-raft-storage 0.6.9 ...${NC}"

helm install atomix-raft-storage atomix/atomix-raft-storage -n kube-system --wait --version 0.1.25

echo -e "${RED}deploying onos-operator 0.1.25 ...${NC}"

helm install onos-operator onos/onos-operator -n kube-system --wait --version 0.5.2



echo -e "${RED}Creating sdran namsspace ...${NC}"

kubectl create ns sdran 

if test -z ${SDRAN_CHART_DIR} 
then
    echo -e "${RED}please set the path to SDRAN charts, the dir needs to contain  onos-helm-charts repo and sdran-helm-charts repo${NC}"
    exit 1
else 
    echo -e "${RED}working with helm charts in : ${SDRAN_CHART_DIR}${NC}"
fi

path=${SDRAN_CHART_DIR}

echo -e "${RED}deploying onos-topo ...${NC}"
helm install -n sdran onos-topo $path/onos-helm-charts/onos-topo

echo -e "${RED}deploying onos-cli ...${NC}"
helm install -n sdran onos-cli $path/onos-helm-charts/onos-cli

echo -e "${RED}deploying onos-config ...${NC}"
helm install -n sdran onos-config $path/onos-helm-charts/onos-config

echo -e "${RED}deploying onos-e2t ...${NC}"
helm install -n sdran onos-e2t $path/sdran-helm-charts/onos-e2t

echo -e "${RED}deploying onos-uenib ...${NC}"
helm install -n sdran onos-uenib $path/sdran-helm-charts/onos-uenib