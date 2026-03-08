# 🚀 End-to-End DevOps CI/CD Pipeline Project

This project demonstrates a **complete DevOps automation pipeline** that provisions infrastructure, builds containerized applications, deploys them automatically, and monitors logs using modern DevOps tools.

The pipeline integrates Infrastructure as Code, configuration management, CI/CD automation, containerization, and centralized logging.

---

# 📌 Project Overview

This project automates the entire application lifecycle:

1. Developer pushes code to GitHub
2. GitHub webhook triggers Jenkins pipeline
3. Jenkins executes CI/CD pipeline
4. Terraform provisions infrastructure
5. Docker builds the application image
6. Docker image is pushed to DockerHub
7. Ansible deploys the application container
8. Logs are collected and sent to Elasticsearch
9. Kibana visualizes logs through dashboards

---

# 🧰 Tech Stack

| Category                 | Tool          |
| ------------------------ | ------------- |
| Source Control           | GitHub        |
| CI/CD                    | Jenkins       |
| Infrastructure as Code   | Terraform     |
| Configuration Management | Ansible       |
| Containerization         | Docker        |
| Log Storage              | Elasticsearch |
| Log Visualization        | Kibana        |

---

# 🏗️ Architecture

```
Developer
   │
   ▼
GitHub Repository
   │
   ▼
Jenkins Pipeline
   │
   ├── Terraform → Provision Infrastructure
   │
   ├── Docker → Build Application Image
   │
   ├── DockerHub → Store Image
   │
   ├── Ansible → Configure & Deploy Application
   │
   ▼
Application Container
   │
   ├── Filebeat → Collect Logs
   │
   ▼
Elasticsearch
   │
   ▼
Kibana Dashboard
```

---

# ⚙️ CI/CD Pipeline Workflow

The Jenkins pipeline performs the following automated stages:

1. Clean Docker environment
2. Initialize Terraform
3. Apply Terraform infrastructure
4. Build Docker application image
5. Tag Docker image
6. Authenticate with DockerHub
7. Push image to DockerHub
8. Run Ansible playbook to deploy application

---

# 📂 Project Structure

```
devops-end-to-end-project
│
├── app
│   ├── Dockerfile
│   └── server.js
│
├── terraform
│   └── main.tf
│
├── ansible
│   ├── inventory
│   └── playbook.yml
│
├── Jenkinsfile
│
├── screenshots
│   ├── jenkins-pipeline.png
│   ├── kibana-dashboard.png
│   └── terraform-apply.png
│
└── README.md
```

---

# 🚀 Setup Instructions

## 1️⃣ Clone the Repository

```
git clone https://github.com/yourusername/devops-end-to-end-project.git
cd devops-end-to-end-project
```

---

## 2️⃣ Configure Jenkins Pipeline

1. Install Jenkins
2. Create a new pipeline job
3. Connect the GitHub repository
4. Enable GitHub webhook trigger
5. Add DockerHub credentials in Jenkins

---

## 3️⃣ Run Terraform

```
cd terraform
terraform init
terraform apply
```

This will create:

* Docker network
* Elasticsearch container
* Kibana container

---

## 4️⃣ Build Docker Application

```
docker build -t devops-app .
```

---

## 5️⃣ Deploy Application using Ansible

```
ansible-playbook -i ansible/inventory ansible/playbook.yml
```

---

# 📊 Log Monitoring

Application logs are shipped to **Elasticsearch** and visualized in **Kibana dashboards**.

Access Kibana:

```
http://localhost:5601
```

---

# 📸 Screenshots

## Jenkins Pipeline

(Add pipeline screenshot here)

## Kibana Dashboard

(Add Kibana screenshot here)

## Terraform Infrastructure

(Add Terraform output screenshot here)

---

# ⭐ Key Features

✔ Automated CI/CD pipeline
✔ Infrastructure provisioning using Terraform
✔ Configuration management with Ansible
✔ Containerized application deployment
✔ GitHub webhook automation
✔ Centralized logging with ELK stack

---

# 🔮 Future Improvements

* Add Prometheus and Grafana monitoring
* Deploy application using Kubernetes
* Implement blue-green deployments
* Add security scanning in CI pipeline

---

# 👨‍💻 Author

Akshat Mehra
DevOps Enthusiast
