#!/bin/bash

# 1. Installing Gunicorn && Django
sudo pip3 -i requirements.txt

# 2. Copy django project to properly way
sudo cp ask /home/box/web

# 3. Create hard link to our gunicorn configuration
sudo ln -sf /home/box/web/webtechcourse/gunicorn.conf/etc/gunicorn.d/test-django

# 4. Create hard link to our nginx configuration
sudo ln -sf /home/box/web/webtechcourse/nginx.conf/etc/nginx/sites-enabled/default

# 5. Restart nginx && gunicorn daemons
sudo service nginx restart
sudo service gunicorn restart
