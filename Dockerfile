FROM nginx:alpine

CMD echo ${HOSTNAME} > /usr/share/nginx/html/index.html && \
    nginx -g 'daemon off;'
