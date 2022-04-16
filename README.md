## a bunch of scripts to automate stuff because I hate repeating 
- setup a k8s cluster with calico net (cluster-setup-calico.sh)
- clean a k8s cluster (cluster-clean.sh) 
- clean a previous installation of kubeovn since it changes ip tables and stuff (kubeovn-clean.sh)
- clean sdran related helm repos (helm-clean-repo.sh)
### sdran components related scripts : 
the sd-ran dir contains a script for deploying sdran core components.
One important thing to do is to set the environment variable **SDRAN_CHART_DIR** to a dir that 
contains both : 
- https://github.com/onosproject/sdran-helm-charts
- https://github.com/onosproject/onos-helm-charts

    


//TODO: add ip to calico script

