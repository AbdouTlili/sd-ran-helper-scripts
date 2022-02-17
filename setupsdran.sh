helm install atomix-controller atomix/atomix-controller -n kube-system --wait --version 0.6.8
helm install atomix-raft-storage atomix/atomix-raft-storage -n kube-system --wait --version 0.1.15
helm install onos-operator onos/onos-operator -n kube-system --wait --version 0.4.14 


echo "deploying sdran chart ..."


kubectl create ns sdran 
helm -n sdran install sd-ran sdran/sd-ran --version 1.3.0
