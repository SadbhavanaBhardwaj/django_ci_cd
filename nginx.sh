#!/bin/bash

sudo cp -rf app.conf /etc/ngnix/sites-available/app
chmod 710  /var/lib/jenkins/workspace/django-cicd/
sudo ln -s /etc/ngnix/sites-available/app /etc/ngnix/sites-enabled

sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx

