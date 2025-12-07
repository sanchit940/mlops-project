# 🩺 Diabetes Prediction Model – First MLOps Project (FastAPI + Docker + Distroless + Kubernetes)


This project demonstrates how to build a **complete end-to-end MLOps pipeline** using a simple and practical use case:  
**Predicting whether a person is diabetic based on medical attributes.**


- ✅ Model Training with Scikit-learn  
- ✅ API Deployment using FastAPI  
- ✅ Docker Containerization (Distroless Image)  
- ✅ Multi-Arch Image Build using Docker Buildx  
- ✅ Kubernetes Deployment & Service  

---

## 📊 Problem Statement

Predict whether a person is diabetic using the following medical parameters:

- Pregnancies  
- Glucose  
- Blood Pressure  
- BMI  
- Age  

The model is trained using a **Random Forest Classifier** on the  
**Pima Indians Diabetes Dataset**.

---

## Quick Start Guide

### Clone the Repository

```bash
git clone https://github.com/sanchit940/mlops-project.git
cd mlops-project
```

### Create Virtual Environment
```
python3 -m venv .mlops
source .mlops/bin/activate

```


### Install Dependencies

```
pip install -r requirements.txt
```

 ### 🧠 Train the Model

```
python train.py

This will generate:

diabetes_model.pkl

```
  ### 🚀 Run the API Locally
```
uvicorn main:app --reload
```

 ### Open in browser:

http://127.0.0.1:8000


### 🐳 Dockerize the API (Distroless Production Image)
```
🔧 Build Multi-Architecture Image
docker buildx build --platform linux/amd64,linux/arm64 -t docker-username/ml-ops-distroless:latest
```
 ### Push the image
 ```
 docker push docker-username/ml-ops-distroless:latest
 ```

### ▶️ Run the Container
 ```
docker run -d -p 8000:8000 sanchit021/ml-ops-distroless:latest
```

### Access API at:

http://localhost:8000/docs

### ☸️ Deploy to Kubernetes
```
kubectl apply -f manifests/
```

### Check resources:
```
kubectl get pods
kubectl get svc
```


---
*Originally inspired by [iam-veeramalla/first-mlops-project](https://github.com/iam-veeramalla/first-mlops-project)*
