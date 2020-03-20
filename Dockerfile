FROM nginx:1.17.9-alpine

CMD printenv HOSTNAME > /usr/share/nginx/html/index.html && \
    nginx -g 'daemon off;'
