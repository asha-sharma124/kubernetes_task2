#!/bin/bash
NODE_IP=$(kubectl get nodes new-cluster-worker -o jsonpath='{.status.addresses[0].address}')
NODE_PORT=$(kubectl get svc -n ingress-nginx ingress-nginx-controller -o jsonpath='{.spec.ports[0].nodePort}')

echo "Access your PiggyMetrics app at:"
echo "http://${NODE_IP}:${NODE_PORT}"
echo ""
echo "Or update /etc/hosts with:"
echo "sudo sed -i 's/127.0.0.1 piggymetrics.local/${NODE_IP} piggymetrics.local/' /etc/hosts"
echo "Then access: http://piggymetrics.local:${NODE_PORT}"
