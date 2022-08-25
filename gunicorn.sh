#!/bin/bash

source jenkins-env/bin/activate

cd /var/lib/jenkins/workspace/django-cicd/app

python3 manage.py makemigrations

python3 manage.py migrate



echo "migration done"

cd /var/lib/jenkins/workspace/django-cicd/

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/


echo $PWD
echo $USER

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "gunicorn has been started"

sudo systemctl restart gunicorn

sudo systemctl status gunicorn
