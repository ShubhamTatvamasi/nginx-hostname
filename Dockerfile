FROM nginx:1.18.0-alpine

CMD printenv HOSTNAME > /usr/share/nginx/html/index.html && \
    nginx -g 'daemon off;'
