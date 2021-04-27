#!/bin/sh

kubectl apply -f manifests-demo.yml

echo "The URL to access the demo is http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].[[KATACODA_DOMAIN]]"