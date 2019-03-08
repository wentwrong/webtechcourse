sudo mv /home/box/web/nginx_install/* /home/box/web/
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
