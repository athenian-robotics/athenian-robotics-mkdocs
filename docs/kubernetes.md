# Kubernetes Notes

* [What is Kubernetes?](https://www.redhat.com/en/topics/containers/what-is-kubernetes)
* [Run Kubernetes Locally](https://github.com/kubernetes/minikube)

## Commands
* kubectl cluster-info
* kubectl get nodes
* kubectl get pods
* kubectl describe pods
* kubectl run kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080
* kubectl get deployments
* kubectl proxy (in a second window)

```bash
minikube start --memory=16384 --cpus=4 --kubernetes-version=v1.16.0

minikube dashboard

cd ~/istio-home
for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done

# Permissive mutual TLS
kubectl apply -f install/kubernetes/istio-demo.yaml
```