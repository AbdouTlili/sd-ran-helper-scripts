#!/bin/bash

if test -z ${SDRAN_CHART_DIR} 
then
    echo "please set the path to SDRAN charts, the dir needs to contain  onos-helm-charts repo and sdran-helm-charts repo"
    exit 1
else 
    echo "working with helm charts in : ${SDRAN_CHART_DIR}"
fi

path=${SDRAN_CHART_DIR}

helm install -n sdran onos-topo $path/onos-helm-charts/onos-topo

helm install -n sdran onos-cli $path/onos-helm-charts/onos-cli

helm install -n sdran onos-config $path/onos-helm-charts/onos-config

helm install -n sdran onos-e2t $path/sdran-helm-charts/onos-e2t

helm install -n sdran onos-uenib $path/sdran-helm-charts/onos-uenib