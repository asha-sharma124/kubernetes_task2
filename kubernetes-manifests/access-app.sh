#!/bin/bash

while true; do kubectl port-forward svc/gateway 7070:80 -n piggymetricss; sleep 2; done &

while true; do kubectl port-forward -n argocd service/argocd-server 8443:443; sleep 2; done &

while true; do kubectl port-forward svc/argo-server -n argo 2746:2746; sleep 2; done &
#kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo
#K0-sIzxqw8dzgN44
#kubectl rollout restart deployment argocd-repo-server -n argocd
#kubectl patch configmap argocd-cm -n argocd --type merge --patch '{"data":{"timeout.reconciliation":"10s","application.instanceLabelKey":"argocd.argoproj.io/instance"}}'