#!/bin/bash

# Folders
CONFIG_FOLDER=config 
SETTINGS_FOLDER=settings
APP_FOLDER=project_content
# Parameters
MAIN_APP=main
VIRTUALENV_PATH=./
PREFIX_ENVIRON=environ_
DJANGO_VERSSION=2.0

# Setting django project name, creating virtualenv and project folder.
read -p 'Project Name: ' PROJECTNAME
virtualenv $VIRTUALENV_PATH"$PREFIX_ENVIRON$PROJECTNAME"
sleep 10
source ./environ_$PROJECTNAME/bin/activate
pip install django==$DJANGO_VERSSION
django-admin startproject $PROJECTNAME

if [ -d "$PROJECTNAME" ]; then
cd $PROJECTNAME
# Creating environ.env file
cat > environ.env <<EOF
SECRET_KEY=
DEBUG=True
DATABASE=
EOF

# Creating readme file and clone gitignore file
touch README.md
wget https://github.com/cripto1989/DjangoBoilerplate/blob/master/.gitignore

# Apss
mkdir $APP_FOLDER
read -n1 -p "Create the first app(called $MAIN_APP)? [y,n] " doit 
case $doit in  
  y|Y) 
    mkdir ./$APP_FOLDER/$MAIN_APP
    python manage.py startapp $MAIN_APP ./$APP_FOLDER/$MAIN_APP
esac
mkdir ./$APP_FOLDER/templates
mkdir ./$APP_FOLDER/media
mkdir ./$APP_FOLDER/static
mkdir ./$APP_FOLDER/static/img
mkdir ./$APP_FOLDER/static/css
mkdir ./$APP_FOLDER/static/js

# Config folder
mkdir $CONFIG_FOLDER && cd $CONFIG_FOLDER
mkdir $SETTINGS_FOLDER && cd $SETTINGS_FOLDER
touch __init__.py
cat > test.py <<EOF
from .base import *
EOF
cat > development.py <<EOF
from .base import *
EOF
cat > production.py <<EOF
from .base import *
EOF
cd ..
cd ..
mv $PROJECTNAME/__init__.py $CONFIG_FOLDER/ 
mv $PROJECTNAME/urls.py $CONFIG_FOLDER/
mv $PROJECTNAME/wsgi.py $CONFIG_FOLDER/
mv $PROJECTNAME/settings.py $CONFIG_FOLDER/$SETTINGS_FOLDER/base.py
rm -R $PROJECTNAME

fi