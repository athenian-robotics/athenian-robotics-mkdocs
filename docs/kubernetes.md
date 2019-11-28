# Kubernetes Notes

## Links
* [What is Kubernetes?](https://www.redhat.com/en/topics/containers/what-is-kubernetes)
* [Run Kubernetes Locally](https://github.com/kubernetes/minikube)
* [Creating a Deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
* [Service Discovery](http://kubernetesbyexample.com/sd/)
* [Kubernetes YAML Syntax](https://medium.com/better-programming/understanding-kubernetes-yaml-syntax-83359d33f9c2)

## Commands
* kubectl cluster-info
* kubectl get nodes
* kubectl get pods
* kubectl describe pods
* kubectl run kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080
* kubectl get deployments
* kubectl proxy (in a second window)
* kubectl logs pod_name                 # View logs
* kubectl edit deployment/admin-deploy  # Edit a deployment
* kubectl api-versions                  # Supported API versions

## Context info
```bash
kubectl config get-contexts
kubectl config use-context context_name
kubectl config -h
```

## Connect to a Pod
```bash
kubectl exec -it pod_name -- /bin/bash
kubectl exec pod_name -c shell -i -t -- /bin/bash
```

## Install istio
https://istio.io/docs/setup/install/kubernetes/
```bash
cd istio-1.3.3
for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done
kubectl apply -f install/kubernetes/istio-demo.yaml
```

## Install kiali
https://stackoverflow.com/questions/23620827/envsubst-command-not-found-on-mac-os-x-10-8
```bash 
bash <(curl -L https://git.io/getLatestKialiOperator) --accessible-namespaces '**'

kubectl expose deployment kiali-operator --type=NodePort --port=8081
```

## Setup minikube
```bash
minikube start --memory=4096 --disk-size=30g --kubernetes-version=v1.16.2
minikube start --memory=16384 --cpus=4 --kubernetes-version=v1.16.2
minikube dashboard
minikube stop
minikube delete

eval $(minikube docker-env)
minikube service admin-service
```

```bash 
kubectl create deployment etcd-admin --image=pambrose/etcd-admin:1.0.17
kubectl expose deployment etcd-admin --type=LoadBalancer --port=8080
kubectl scale deployment etcd-admin --replicas=3

kubectl expose deployment etcd-admin --type=NodePort --port=8080
kubectl expose deployment etcd-admin --type=LoadBalancer --port=8080

kubectl delete deployment etcd-admin
kubectl delete service etcd-admin

kubectl scale deployment etcd-admin --replicas=3
```