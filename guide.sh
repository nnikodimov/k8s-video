. ./demo-magic.sh

clear

DEMO_PROMPT="livefire@k8s-master$"


pe "kubectl create ns livefire"
pe "kubectl get namespaces"
pe "kubectl config set-context kubernetes-admin@kubernetes --namespace livefire"
pe "clear"
pe "vimcat clusterip-example.yaml"
pe "clear"
pe "kubectl apply -f clusterip-example.yaml"
pe "kubectl get pods -o wide"
pe "kubectl get deployments"
pe "kubectl describe deployments livefire"
pe "clear"
pe "kubectl get replicasets"
pe "kubectl describe replicasets"
pe "clear"
pe "kubectl expose deployment livefire --type=ClusterIP --name=livefire-clusterip-service"
pe "kubectl get services livefire-clusterip-service"
pe "kubectl describe services livefire-clusterip-service"
pe "clear"
pe "kubectl apply -f mgmtpod.yaml"
pe "kubectl get pods -o wide"
pe "clear"
pe "kubectl exec -it mgmtpod curl http://livefire-clusterip-service"
pe "kubectl exec -it mgmtpod curl http://livefire-clusterip-service"
