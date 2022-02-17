helm repo remove atomix
helm repo remove onos
helm repo remove sdran
helm repo remove cord


helm repo add cord https://charts.opencord.org
helm repo add atomix https://charts.atomix.io
helm repo add onos https://charts.onosproject.org
helm repo add sdran --username "$repo_user" --password "$repo_password" https://sdrancharts.onosproject.org
helm repo update
