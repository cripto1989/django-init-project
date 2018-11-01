#!/bin/bash
# Folders
CONFIG_FOLDER=config
SETTINGS_FOLDER=settings
APP_FOLDER=project_content
MAIN_APP=main_app

read -p 'Project Name: ' projectname
django-admin startproject $projectname
cd $projectname

# Creating environ file
cat > environ.env <<EOF
SECRET_KEY=
DEBUG=True
DATABASE=

EOF

# Creating readme file
touch README.md

# Apss
mkdir $APP_FOLDER
read -n1 -p "Create the first app(called main)? [y,n]" doit 
case $doit in  
  y|Y) 
    mkdir ./$APP_FOLDER/$MAIN_APP
    python manage.py startapp $MAIN_APP ./$APP_FOLDER/$MAIN_APP
    echo yes ;; 
  n|N) 
    echo no ;; 
  *) 
    echo Incorrect option ;; 
esac

# 
mkdir $CONFIG_FOLDER && cd $CONFIG_FOLDER
mkdir $SETTINGS_FOLDER && cd $SETTINGS_FOLDER
touch base.py
touch test.py
touch development.py
touch production.py
cd ..
cd ..


echo Projecto terminado correctamente 