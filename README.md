# nautilus

## Docker Image
### Install
```
```
### Frequently used commands
```
$ docker version
$ docker images
$ docker version
$ docker login gitlab-registry.nautilus.optiputer.net
$ docker image rm 3b8
$ docker container rm 8e00
$ docker run -it ubuntu:16.04 /bin/bash
```

### build and push image (Dockerfile should be in current folder)
```
$ docker build -t gitlab-registry.nautilus.optiputer.net/jiacheng/nautilus:test .
$ docker push gitlab-registry.nautilus.optiputer.net/jiacheng/nautilus:test
```

## Jupyter notebook
on server  
```
jupyter-notebook --allow-root --ip='0.0.0.0'
```

on your laptop/PC
```
$ kubectl port-forward gpu-pod-example 8888:8888
```

