#!/bin/sh

echo ""
echo "Deploying demo application..."
echo ""

kubectl apply -f manifests-demo.yml >> demo.log 2>&1

echo ""
echo "Waiting for the demo application to become ready..."
echo ""

kubectl wait --namespace steadybit-demo --for=condition=ready pod --all --timeout=120s

echo ""
echo "Setup finished. Ready for Step 2.🚀"
echo ""
echo "The URL to access the demo is https://${HOST_SUBDOMAIN}-80-${KATACODA_HOST}.${KATACODA_DOMAIN}"
