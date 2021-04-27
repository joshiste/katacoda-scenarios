#!/bin/sh

export HOST_IP="[[HOST_IP]]"
export HOST_SUBDOMAIN="[[HOST_SUBDOMAIN]]"
export KATACODA_HOST="[[KATACODA_HOST]]"
export KATACODA_DOMAIN="[[KATACODA_DOMAIN]]"

launch.sh
./deploy-ingress.sh
./deploy-demo.sh
kubectl create namespace steadybit-agent > /dev/null 2>&1
