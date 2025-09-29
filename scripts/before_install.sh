#!/bin/bash
set -e

echo "BeforeInstall: Cleaning old application files..."

# Optional: remove old manifests if any
rm -rf /tmp/k8s-manifests/*

echo "BeforeInstall completed."
