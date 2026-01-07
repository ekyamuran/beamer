# TS Microservice

- Uses GitHub actions workflow to generate an image and push to GitHub container registry
- argocd has the application definition
- Helm charts used for the deployment of the templates

## Create microservice

## Create Dockerfile 

## Push to registry (GitHub Registry)

### Docker commands

docker images

docker build --no-cache -t express-ts-app .

docker run -p 3000:3000 --name express-test express-ts-app
docker run -d -p 3000:3000 --name express-test express-ts-app

docker ps

http://localhost:3000


# Accesing conatiner in DockerDesktop - Accesing with port forwarding

$ kubectl get svc
NAME            TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
beamer-beamer   ClusterIP   10.96.115.212   <none>        3000/TCP   3h
guestbook-ui    ClusterIP   10.96.208.73    <none>        80/TCP     23h
kubernetes      ClusterIP   10.96.0.1       <none>        443/TCP    8d

### to conect to the service

kubectl port-forward svc/beamer-beamer 3000:3000
http://localhost:3000

### to conect to the argo cd:

kubectl port-forward svc/argocd-server -n argocd 8080:80
https://localhost:8080/

#### TODO

- Check automatic sync

