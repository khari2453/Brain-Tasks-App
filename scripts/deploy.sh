#!/bin/bash
set -e

# Apply all Kubernetes manifests
kubectl apply -f /tmp/k8s-manifests/
