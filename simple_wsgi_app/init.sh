#!/bin/bash

# 1. Move all files to /home/box/web
sudo mv * ../../

# 2. Install python packages
# sudo pip install -r requirements.txt
# - already installed on the server

# 3. Create nginx config symlink 
sudo ln -sf etc/nginx.conf /etc/nginx/sites-enabled/default

# 4. Create gunicorn app symlink
sudo ln -sf etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf

# 5. Restart gunicorn service
sudo service gunicorn restart

# 6. Restart nginx daemon
sudo /etc/init.d/nginx restart
