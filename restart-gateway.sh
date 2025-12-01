
#!/bin/bash

fuser -k 7070/tcp 2>/dev/null

sleep 2

kubectl port-forward svc/gateway 7070:80 -n piggymetricss

