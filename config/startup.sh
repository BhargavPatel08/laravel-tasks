bootstrap#!/bin/bash

cd /home/site/wwwroot

# Install Laravel dependencies
composer install

# Generate key if not already set
php artisan key:generate

# Run migrations (optional)
php artisan migrate --force

# Fix Nginx config
cp /home/site/wwwroot/default /etc/nginx/sites-available/default

# Keep the container alive
service nginx reload
sleep infinity
