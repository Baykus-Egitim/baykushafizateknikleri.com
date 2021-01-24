  
server {
    root /root/sites/baykushafizateknikleri.com;
    index index.html;
    server_name baykushafizateknikleri.com www.baykushafizateknikleri.com;
    location / {
            # First attempt to serve request as file, then
            # as directory, then fall back to displaying a 404.
            try_files $uri $uri/ =404;
    }



    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/baykushafizateknikleri.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/baykushafizateknikleri.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot


}  
server {
    if ($host = www.baykushafizateknikleri.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    if ($host = baykushafizateknikleri.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    server_name baykushafizateknikleri.com www.baykushafizateknikleri.com;
    listen 80;
    return 404; # managed by Certbot




}