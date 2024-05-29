
### tao local image
docker save csdl:lc1 | (eval $(minikube docker-env) && docker load)
docker save api:lc1 | (eval $(minikube docker-env) && docker load)
docker save web:lc1 | (eval $(minikube docker-env) && docker load)
### kubectl apply commands in order
    cd ~/Desktop/KubernetesShop/PJ-kubernetes-components/

    kubectl apply -f secret.yaml
    kubectl apply -f csdl.yaml
    kubectl apply -f configmap.yaml 
    kubectl apply -f api.yaml
    minikube service api-service
    kubectl apply -f web.yaml
    minikube service web-service

### kubectl get commands

    kubectl get pod
    kubectl get pod --watch
    kubectl get pod -o wide
    kubectl get service
    kubectl get secret
    kubectl get all | grep csdl

### kubectl debugging commands

    kubectl describe pod csdl-deployment-xxxxxx
    kubectl describe service api-service
    kubectl logs csdl-deployment-xxxxxx

### give a URL to external service in minikube

    minikube service api-service
