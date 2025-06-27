#!/bin/bash

# Copy files to Nginx directory
sudo cp index.html styles.css /var/www/my-project/

# Copy Nginx config
sudo cp nginx.conf /etc/nginx/sites-available/my-project
sudo ln -s /etc/nginx/sites-available/my-project /etc/nginx/sites-enabled/

# Restart Nginx
sudo systemctl reload nginx

echo "Deployment complete!"
