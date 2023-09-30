#!/bin/sh
if ! test -f /etc/letsencrypt/live/ssl.anydev.online/privkey.pem; then
    certbot certonly --agree-tos --non-interactive --renew-by-default --email absamatovs7@gmail.com --standalone --preferred-challenges http -d ssl.anydev.online
else
    certbot certonly --standalone --force-renew -d ssl.anydev.online
fi
