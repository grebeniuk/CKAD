echo "welcome to the old version" > index.html
kubectl create cm old-config --from-file=index.html
echo "selcom to the new version" > index.html
kubectl create cm new-config --from-file=index.html
k create deply old-deploy --image=nginx:1.14 --replicas=3 --dry-run=client -o yaml > old-dep.yaml  
k create -f old-deploy.yaml
# add label type=canary
vim old-deploy.yaml
cp old-deploy.yaml new-deploy.yaml
vim new-deploy.yaml

k expose deployment old-deploy --selector=type=canary
k get svc
k get endpoints
minikube ssh
curl svc ip...

k scale deploy new-deploy --replicas=3
k scale deploy old-deploy --replicas=0
