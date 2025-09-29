
#!/bin/bash
set -e

ACCOUNT_ID=385122037205
REGION=us-east-1
REPO_NAME=brain-task-app
IMAGE_URI=385122037205.dkr.ecr.us-east-1.amazonaws.com/brain-task-app:latest

echo "Updating k8s deployment with image $IMAGE_URI"

kubectl set image deployment/brain-tasks-app brain-tasks-app=$IMAGE_URI --record
kubectl rollout status deployment/brain-tasks-app
