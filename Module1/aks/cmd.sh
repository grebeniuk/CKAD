kubectl create deploy myfirstapp --image=nginx --replicas=2
kubectl get all
kubectl api-resources | less
az aks nodepool scale --name agentpool --cluster-name agre_aks_test --resource-group CKAD  --node-count 0