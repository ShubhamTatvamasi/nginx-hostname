FROM nginx:alpine

CMD echo HOSTNAME: ${HOSTNAME} NGINX_VERSION: ${NGINX_VERSION} > \
    /usr/share/nginx/html/index.html && \
    nginx -g 'daemon off;'
