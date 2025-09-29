#!/bin/bash
set -e

echo "AfterInstall: Setting permissions if needed..."
# Example: chmod for scripts
chmod +x /tmp/k8s-manifests/*.sh || true

echo "AfterInstall completed."
