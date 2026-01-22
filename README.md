# 🚀 End-to-End DevOps Project: Containerized Web App (Minikube)

## 📌 Overview
This project demonstrates an **end-to-end DevOps workflow** for a static multi-page web application using **GitHub, Docker, AWS EC2, Docker Hub, and Kubernetes (Minikube)**.

The workflow includes **source code management, Docker image creation, cloud validation, container registry usage, Kubernetes deployment using namespaces, service exposure, and horizontal scaling**.

This project is suitable for **junior to intermediate DevOps / CloudOps engineers** and ideal for **GitHub & LinkedIn portfolio showcase**.

---

## 🧰 Tech Stack
- **Version Control**: Git, GitHub  
- **Application**: HTML, CSS, JavaScript  
- **Containerization**: Docker  
- **Cloud VM**: AWS EC2 (Docker validation)  
- **Container Registry**: Docker Hub  
- **Orchestration**: Kubernetes (Minikube)  

---

## 📂 Repository Structure
```
.
├── Dockerfile
├── README.md
│
├── ctk-repo/
│   ├── index.html
│   ├── about.html
│   ├── contact.html
│   ├── style.css
│   └── script.css
│
└── kubernetes/
    ├── namespace.yml
    ├── deployment.yml
    └── service.yml
```

---

## 🔄 Project Workflow (with Commands)

### 1️⃣ Source Code Management (GitHub)
```bash
git init
git add .
git commit -m "Initial commit: static multi-page web app"
git branch -M main
git remote add origin <GITHUB_REPO_URL>
git push -u origin main
```

---

### 2️⃣ Docker Build & Local Testing
```bash
docker build -t devops-webapp:v1 .
docker run -d -p 8080:80 devops-webapp:v1
```

Access in browser:
```
http://localhost:8080
```

---

### 3️⃣ Docker Validation on AWS EC2
```bash
sudo yum install docker -y
sudo systemctl start docker
sudo usermod -aG docker ec2-user

docker run -d -p 80:80 devops-webapp:v1
```

---

### 4️⃣ Push Docker Image to Docker Hub
```bash
docker tag devops-webapp:v1 <dockerhub-username>/devops-webapp:v1
docker login
docker push <dockerhub-username>/devops-webapp:v1
```

---

### 5️⃣ Minikube Cluster Setup
```bash
minikube start
kubectl get nodes
```

---

### 6️⃣ Kubernetes Namespace Creation
```bash
kubectl apply -f kubernetes/namespace.yml
kubectl get namespaces
```

---

### 7️⃣ Kubernetes Deployment
```bash
kubectl apply -f kubernetes/deployment.yml
kubectl get deployments -n <namespace-name>
kubectl get pods -n <namespace-name>
```

---

### 8️⃣ Kubernetes Service & Access
```bash
kubectl apply -f kubernetes/service.yml
kubectl port-forward -n <namespace-name> service/webapp-service 8080:80
```

Access:
```
http://localhost:8080
```

---

### 9️⃣ Scaling the Application
```bash
kubectl scale deployment webapp-deployment \
  --replicas=4 \
  -n <namespace-name>

kubectl get pods -n <namespace-name>
```

---

## 🧱 Architecture Flow
```
Developer
   ↓
GitHub Repository
   ↓
Docker Build
   ↓
Docker Hub
   ↓
Minikube (Kubernetes)
   ↓
Namespace
   ↓
Pods (Replicas)
   ↓
Service / Port Forwarding
```

---

## 🎯 Key Skills Demonstrated
- Git-based version control  
- Docker image lifecycle management  
- Multi-page static web app containerization  
- Kubernetes namespaces, deployments & services  
- Horizontal pod scaling  

---

## 🚀 Future Enhancements
- CI/CD using GitHub Actions  
- Kubernetes Ingress Controller  
- Helm charts  
- Migration to AWS EKS  
- Monitoring with Prometheus & Grafana  

---

## 👤 Author
**Rajive Sharma**  
DevOps / CloudOps Enthusiast  

---

⭐ If you find this project useful, feel free to star the repository!
