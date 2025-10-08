# Brain-Tasks-App

`Brain Tasks website is basically created in React library and lightweight to simplify the complex app .`

**Console final output**

<img width="1356" height="644" alt="image" src="https://github.com/user-attachments/assets/9e4a5d27-58a0-4481-8208-b28d0afe2eb1" />

# Prerequisite for the website to run
- Amazon Ec2 server
- Amazon Elastic Container Registry
- Kubernetes Cluster
- CodeBuild
- CodeDeploy
- CodePipeline

  # Source for the tools
  

| Tools/Services |	Purpose |
|----------------|---------|
| ECR |	Build container images, store them, and deploy |
| Codebuild	| Automate build push, and deployment process |
| Codedeploy	| AWS EKS	Deploy and manage app containers in production |
| Codepipeline	| CICD Process |
| Cloudwatch	| Track app and cluster health |
| Cloud Provider	| AWS	| Host infrastructure (EC2, EKS, VPC, IAM) |

# Step - 1
<img width="225" height="225" alt="image" src="https://github.com/user-attachments/assets/989eef2b-5449-4638-8a4b-b2ddac8344b6" />

# Creating ECR
We need to create empty ECR registry
<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/1802df57-3114-4c24-a827-2f178bcf4568" />


# Step - 2

<img width="300" height="168" alt="image" src="https://github.com/user-attachments/assets/7fae01b4-c1b7-4889-97ba-c82887c7a093" />

Creating EKS cluster by using Cloudshell.

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/09c95b70-3428-4a21-be59-b89ad06cecfd" />


<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/b9b88b96-52bd-4f86-bd66-c7775ee6e78f" />

## Two nodes up running

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/8c7bb015-05c3-44a2-ba02-5e0f00ed35ff" />


# Step - 3
<img width="306" height="165" alt="image" src="https://github.com/user-attachments/assets/1fc7f420-2a00-479f-81fc-54c85b8de0cf" />

**AWS CodeBuild is a fully managed build service that compiles source code, runs tests, and produces deployable artifacts**
Createing code build . In this we mentioned push the image to ECR registry by using aws account id , region and repo name and we configured EKS cluster by using buildspec.yaml.

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/8823c4b7-ff27-43d5-a1a3-88be4bed6351" />

# verifying the success stage

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/004ef126-c3e1-469a-8077-41955c3f5d90" />

# Step - 4

<img width="320" height="158" alt="image" src="https://github.com/user-attachments/assets/fa30133b-8dce-417f-b803-ea9d0fe08e06" />


# Codedeploye in EKS cluster via codepipeline using codedeploye role to the EKS cluster .

**AWS CodePipeline automates your entire CI/CD process — from code commit to build, test, and deploy — through a single continuous delivery pipeline.**

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/690655ae-70b5-4740-8e48-dc75060469ba" />

`Configuration to Codepipeline steps to deploy EKS`

<img width="1366" height="1942" alt="image" src="https://github.com/user-attachments/assets/9bf00776-00e3-4b90-8efc-76b209ed88c5" />



# Step - 5


<img width="284" height="177" alt="image" src="https://github.com/user-attachments/assets/b3593705-aa93-4edc-acc7-0256004320f0" />

# Cloudwatch has been enable on above aws service for using we track the update status of the service .

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/1b33ff88-338f-4b7f-b627-11a666cfda67" />


# Step - 6

# Output

After trigger has been successfull . The app has been deployed in EKS . We checked on the EKS by using kubectl commands `kubectl get pods ,kubectl get svc`

# By accessing using kubectl svc

<img width="1115" height="123" alt="image" src="https://github.com/user-attachments/assets/38de949c-a7a8-430c-94cf-95995d926f49" />

**Browser**

<img width="1356" height="644" alt="image" src="https://github.com/user-attachments/assets/9e4a5d27-58a0-4481-8208-b28d0afe2eb1" />

# Workflows
`If the developer changes any code change in github . it will codebuild and codedeploy. this configuration setup done on codepipeline`
