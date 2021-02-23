# nautilus

## Anaconda
```

conda env export --name torch > env.yml

```

## kubectl
```
kubectl -n svcl-underwater-rl exec jiacheng -it bash
kubectl port-forward jiacheng 8080:8080
kubectl port-forward jiacheng 8888:8888
kubectl -n svcl-underwater-rl create -f .\gpu_pod.yaml
kubectl get jobs
kubectl delete job test
kubectl logs test-h2mqt
```

## code-server
```
code-server-3.0.1-linux-x86_64/code-server --auth none
```

## Github
```
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY

```
## Docker
### Install
```
```
### Frequently used commands
```
$ docker version
$ docker images
$ docker login gitlab-registry.nautilus.optiputer.net
$ docker image rm 3b8
$ docker container rm 8e00
$ docker run -it ubuntu:16.04 /bin/bash

$ docker container prune
$ docker image prune

$ docker container ps

```

### build and push image (Dockerfile should be in current folder)
```
docker build -t gitlab-registry.nautilus.optiputer.net/jiacheng/docker-images:sgb .
docker push gitlab-registry.nautilus.optiputer.net/jiacheng/docker-images:sgb
```

## Jupyter notebook
on server  
```
jupyter-notebook --allow-root --ip='0.0.0.0' --NotebookApp.token='' --NotebookApp.password='' --notebook-dir=/data

```
local
```
$ kubectl port-forward gpu-pod-example 8888:8888
```


