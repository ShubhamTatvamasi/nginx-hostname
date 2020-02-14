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

curl cluster IP
```bash
NGINX_CLUSTER_IP=$(kubectl get service nginx -o jsonpath={.spec.clusterIP}) && \
  while sleep 1; do curl ${NGINX_CLUSTER_IP}; done
```

curl external IP
```bash
NGINX_EXTERNAL_IP=$(kubectl get nodes -o \
  jsonpath='{.items[0].status.addresses[?(@.type=="ExternalIP")].address}') && \
  while sleep 1; do curl ${NGINX_EXTERNAL_IP}:30080; done
```

scale deployment to 10 pods
```bash
kubectl scale deployment nginx --replicas=10
```

delete deployment and service
```bash
kubectl delete -f https://raw.githubusercontent.com/ShubhamTatvamasi/nginx-hostname/master/nginx.yaml
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
