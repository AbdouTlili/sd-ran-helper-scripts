#!/bin/bash
helm repo add cord https://charts.opencord.org
helm repo add atomix https://charts.atomix.io
helm repo add onos https://charts.onosproject.org
helm repo add sdran https://sdrancharts.onosproject.org
helm repo update