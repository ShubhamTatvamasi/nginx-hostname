FROM nginx:alpine

RUN echo HOSTNAME: ${HOSTNAME} NGINX_VERSION: ${NGINX_VERSION} > /usr/share/nginx/html/index.html
