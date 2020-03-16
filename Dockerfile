FROM nginx:alpine

CMD printenv HOSTNAME > /usr/share/nginx/html/index.html && \
    nginx -g 'daemon off;'
