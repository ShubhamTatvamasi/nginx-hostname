# nginx-hostname

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/shubhamtatvamasi/nginx-hostname)](https://hub.docker.com/r/shubhamtatvamasi/nginx-hostname)
[![Docker Pulls](https://img.shields.io/docker/pulls/shubhamtatvamasi/nginx-hostname)](https://hub.docker.com/r/shubhamtatvamasi/nginx-hostname)
[![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/shubhamtatvamasi/nginx-hostname/latest)](https://hub.docker.com/r/shubhamtatvamasi/nginx-hostname)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/shubhamtatvamasi/nginx-hostname)](https://hub.docker.com/r/shubhamtatvamasi/nginx-hostname)
---

### Kubernetes

deploy nginx
```bash
kubectl apply -f https://raw.githubusercontent.com/ShubhamTatvamasi/nginx-hostname/master/nginx.yaml
```

check the output from pods
```bash
while sleep 1; do curl $(kubectl get service nginx -o jsonpath={.spec.clusterIP}); done
```

scale deployment to 10 pods
```bash
kubectl scale deployment nginx --replicas=10
```
---

### Docker

start container
```bash
docker run -d -p 80:80 --name nginx shubhamtatvamasi/nginx-hostname
```

get hostname and version
```bash
curl localhost
```

remove container
```bash
docker rm -f nginx
```
