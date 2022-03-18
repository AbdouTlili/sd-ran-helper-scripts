
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "${RED}resetting k8s cluster ...${NC}"
yes | sudo kubeadm reset 
echo "${RED}resetting k8s cluster DONE !${NC}"

echo "${RED}Cleaning iptables ...${NC}"
sudo iptables -F

echo "${RED}DONE ...${NC}"