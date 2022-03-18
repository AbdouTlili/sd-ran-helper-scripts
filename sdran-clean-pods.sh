helm -n sdran uninstall sd-ran
helm -n kube-system uninstall onos-operator atomix-raft-storage atomix-controller
kubectl delete ns sdran