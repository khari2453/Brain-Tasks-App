#!/bin/bash
set -e

echo "ValidateService: Checking pod status..."
kubectl get pods -n default

echo "ValidateService completed."
