# Brain-Tasks-App
- **Createaing the IAM role for codebuild**
- Role Name {codebuild-brain-task-app-service-role}
- permissions { AdministratorAccess ,AmazonElasticContainerRegistryPublicFullAccess ,AmazonElasticContainerRegistryPublicPowerUser ,AmazonElasticContainerRegistryPublicReadOnly }
- Policy { CodeBuildBasePolicy-brain-task-app-us-east-1 ,CodeBuildCodeConnectionsSourceCredentialsPolicy-brain-task-app-us-east-1-385122037205 ,CodeBuildCodeConnectionsSourceCredentialsPolicy-brain-task-codebuild-us-east-1-385122037205 }
  Policy is required for authenticate with ECR.

