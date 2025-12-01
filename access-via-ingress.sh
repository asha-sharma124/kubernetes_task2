#!/bin/bash
echo "Starting port-forward to access PiggyMetrics via Ingress..."
echo "Access your app at: http://piggymetrics.local"
echo "Press Ctrl+C to stop"
kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 80:80
