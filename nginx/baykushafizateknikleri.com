  
server {
    root /root/sites/baykushafizateknikleri.com;
    index index.html;
    server_name baykushafizateknikleri.com www.baykushafizateknikleri.com;
    location / {
            # First attempt to serve request as file, then
            # as directory, then fall back to displaying a 404.
            try_files $uri $uri/ =404;
    }

}