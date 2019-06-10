#!/bin/bash
helm repo add monocular https://helm.github.io/monocular
helm install monocular/monocular -f custom.yaml --namespace=monocular --name=monocular --set "chartsvc.replicas=1,ui.replicaCount=1,ingress.enabled=false"
#mongodb.persistence.enabled=true
