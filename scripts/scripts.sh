
#!/bin/bash
set -e

ACCOUNT_ID=385122037205
REGION=us-east-1
REPO_NAME=brain-task-app
IMAGE_URI=$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:latest

echo "Updating k8s deployment with image $IMAGE_URI"

kubectl set image deployment/brain-tasks-app brain-tasks-app=$IMAGE_URI --record
kubectl rollout status deployment/brain-tasks-app
