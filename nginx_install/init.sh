#!/bin/bash

# Expected that this repository git cloned to /home/box/web/

# 1. Move all files from cloned repository to /home/box/web
sudo mv /home/box/web/webtechcourse/nginx_install/* /home/box/web/

# 2. Make symbolic link to configuration && rewrite default conf
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default

# 3. Restart nginx daemon
sudo /etc/init.d/nginx restart
