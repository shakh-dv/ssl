FROM certbot/certbot:v1.27.0 as cert-bot
COPY ssl.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM nginx:1.21.6 as nginx
COPY configuration/default.conf /etc/nginx/conf.d/default.conf
COPY configuration/nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]