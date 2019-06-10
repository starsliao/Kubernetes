#!/bin/bash
kubectl -n traefik delete secret traefik-cert
kubectl -n traefik create secret generic traefik-cert --from-file=1.pem --from-file=1.key
#htpasswd -c webauth admin
kubectl -n traefik delete secret websecret
kubectl -n traefik create secret generic websecret --from-file webauth
