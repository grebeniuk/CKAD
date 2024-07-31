echo "hello world" > index.html
k create configmap indexmap --from-file=index.html
k create secret my-secret --from-literal=MYPASSWORKD=verysecret
k create deployment mapnginx --image=nginx
k edit dployments.apps mapnginx

k exec mapnginx-765d6958b6-xh9f2 -- cat /usr/share/nginx/html
k exec mapnginx-765d6958b6-xh9f2 -- env
k get deployments.apps mapnginx -o yaml > ./lab11.yaml
