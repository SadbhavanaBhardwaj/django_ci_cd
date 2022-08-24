#!/bin/bash

sudo cp -rf app.conf /etc/ngnix/conf.d

chmod 710  /var/lib/jenkins/workspace/django-cicd/

sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx

