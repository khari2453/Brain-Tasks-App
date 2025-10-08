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
  

| Category	| Tools/Services |	Purpose |
|----------|----------------|---------|
| Containerization	| ECR |	Build container images, store them, and deploy |
| Codebuild	| Jenkins |	Automate build push, and deployment process |
| Codedeploy	| Kubernetes | AWS EKS	Deploy and manage app containers in production |
| Codepipeline	| Kubernetes | AWS EKS	Deploy and manage app containers in production |
| Monitoring	| Prometheus Grafana (or alternative)	| Track app and cluster health |
| Cloud Provider	| AWS	| Host infrastructure (EC2, EKS, VPC, IAM) |

# Step - 1
<img width="225" height="225" alt="image" src="https://github.com/user-attachments/assets/989eef2b-5449-4638-8a4b-b2ddac8344b6" />

# Createing ECR
We need to create empty ECR registry
<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/1802df57-3114-4c24-a827-2f178bcf4568" />


# Step - 2

<img width="300" height="168" alt="image" src="https://github.com/user-attachments/assets/7fae01b4-c1b7-4889-97ba-c82887c7a093" />

Createing EKS cluster by using Cloudshell.

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/09c95b70-3428-4a21-be59-b89ad06cecfd" />


<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/b9b88b96-52bd-4f86-bd66-c7775ee6e78f" />

## Two nodes up running

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/8c7bb015-05c3-44a2-ba02-5e0f00ed35ff" />


# Step - 3
<img width="306" height="165" alt="image" src="https://github.com/user-attachments/assets/1fc7f420-2a00-479f-81fc-54c85b8de0cf" />

Createing code build by using buildspec.yaml file . In this we mentioned push the image to ECR registry by using aws account id , region and repo name and we configured EKS cluster.

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/8823c4b7-ff27-43d5-a1a3-88be4bed6351" />

# verifying the success stage

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/004ef126-c3e1-469a-8077-41955c3f5d90" />

# Step - 4

<img width="320" height="158" alt="image" src="https://github.com/user-attachments/assets/fa30133b-8dce-417f-b803-ea9d0fe08e06" />


# Codedeploye in EKS cluster via codepipeline using codedeploye role to the EKS cluster .

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/690655ae-70b5-4740-8e48-dc75060469ba" />

`Configuration to Codepipeline steps to deploy EKS`

<img width="1366" height="1942" alt="image" src="https://github.com/user-attachments/assets/9bf00776-00e3-4b90-8efc-76b209ed88c5" />



# Step - 5


<img width="284" height="177" alt="image" src="https://github.com/user-attachments/assets/b3593705-aa93-4edc-acc7-0256004320f0" />

# Cloudwatch has been enable on above aws service for using we track the update status of the service .

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/1b33ff88-338f-4b7f-b627-11a666cfda67" />


# Step - 6

# Workflows
`If the developer changes any code change in github . it will codebuild and codedeploy. this configuration setup done on codepipeline`


# Step - 7 

We used github for the version control system in the porject repo we created webhooks for the jekins to auto trigger if there is any code changes jenkins pipeline will trigger auto metically and code deploy to the EKS Cluster .
<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/b5dbedd7-12fa-41a6-8241-8c3fc4eb8648" />

# Step - 8
We Created K8s yml for deploy and service . `in that Service to used port forward from container port 80 to 3000 `

# Step - 9
By pushing the code changes in VCS it trigger automatically pipeline .
<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/d5b9990d-9bfe-4aef-886e-c40f4c098989" />

# Step - 10

If the above pipeline is succefull . it will deploy automatically in EKS cluster by verfiying using the commands are 

<img width="1254" height="141" alt="image" src="https://github.com/user-attachments/assets/8be2c21c-eabb-458b-ab3f-ced60f9dbd82" />

# Step - 11
On the svc it will provide the external ip using this our application is run on succesfully .

<img width="1355" height="675" alt="image" src="https://github.com/user-attachments/assets/20547e64-bd16-46d8-a45e-0a962efd8436" />

# Step - 12
We created on more server for Monitoring tools are prometheus and grafana .
installed steps are 

<img width="659" height="218" alt="image" src="https://github.com/user-attachments/assets/7ca9d37c-8cfa-4c16-bf30-fe258c37972c" />

Prometheus can be run on port no 9090 we need to open the port on the server

<img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/0d4b17fb-fe15-41b2-92fa-641404404488" />

we installed alert manager . if any issue faceing the cluster alert manager will trigger the congifure email .

<img width="730" height="372" alt="image" src="https://github.com/user-attachments/assets/016cec3f-52ac-4edd-bc0c-bc6de89a9042" />

We need to change the prometheus.yml in that we changed the alert manager name and host ip address for our EKS cluster.

<img width="1052" height="535" alt="image" src="https://github.com/user-attachments/assets/971b7467-6ff6-4e25-899c-426f6ff66e5a" />

# Step - 13
Installing grafana for better visualization tool

  - wget https://dl.grafana.com/grafana/release/12.2.0/grafana_12.2.0_17949786146_linux_amd64.tar.gz
  - tar -zxvf grafana_12.2.0_17949786146_linux_amd64.tar.gz~
  - cd grafana-12.2.0/
  - cd bin
  - ./grafana-server &

    `Grafana runs on the port no 3000` we need to open the port no 3000 on the server .

    <img width="1366" height="641" alt="image" src="https://github.com/user-attachments/assets/f6084750-c888-4fc2-9de6-b86140aea47e" />

# step - 14 
Git commands
git add .
git commit -m "final commit "
git push origin main

 **End-to-End Flow Recap:** `First, the developer pushes the static app to GitHub. GitHub triggers Jenkins automatically. Jenkins builds the Docker image, pushes it to DockerHub, and deploys it to Kubernetes on AWS EKS. The LoadBalancer exposes the app to the internet so users can access it, and monitoring ensures the app stays healthy. The whole process is automated, consistent, and production-ready. That’s the power of CI/CD, containerization, and Kubernetes working together .`

