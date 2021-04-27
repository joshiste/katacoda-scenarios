#!/bin/sh

echo ""
echo "Deploying ingress..."
echo ""

kubectl create namespace ingress-nginx >> ingress.log 2>&1
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx >> ingress.log 2>&1
helm repo update >> ingress.log 2>&1
helm install --set controller.service.externalIPs={${HOST_IP}} ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx >> ingress.log 2>&1

echo ""
echo "Waiting for the ingress to become ready..."
echo ""
kubectl wait --namespace ingress-nginx --for=condition=ready pod --selector=app.kubernetes.io/component=controller --timeout=120s