#!/bin/bash

# 1. Move all files to /home/box/web
sudo mv * ../../

# 2. Install python packages
# sudo pip install -r requirements.txt
# - already installed on the server

# 3. Create nginx config symlink 
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default

# 4. Create gunicorn app symlink
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test

# 5. Restart nginx && gunicorn daemons
sudo service nginx restart
sudo service gunicorn restart
