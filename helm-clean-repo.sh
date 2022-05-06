#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color


echo -e "${RED}starting the installation of SDRAN requirements in kube-system ...${NC}"
helm repo remove atomix
helm repo remove onos
helm repo remove sdran
helm repo remove cord
