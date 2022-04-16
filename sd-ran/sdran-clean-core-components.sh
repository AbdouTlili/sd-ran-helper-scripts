#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color


echo -e "${RED}cleaning onos-topo ...${NC}"
helm uninstall -n sdran onos-topo 

echo -e "${RED}cleaning onos-cli ...${NC}"
helm uninstall -n sdran onos-cli

echo -e "${RED}cleaning onos-config ...${NC}"
helm uninstall -n sdran onos-config

echo -e "${RED}cleaning onos-e2t ...${NC}"
helm uninstall -n sdran onos-e2t

echo -e "${RED}cleaning onos-uenib ...${NC}"
helm uninstall -n sdran onos-uenib