#!/bin/bash
# Folders Name
CONFIG_FOLDER=config
SETTINGS_FOLDER=settings
APP_FOLDER=project_content
MAIN_APP=main_app
# Create project
read -p 'Project Name: ' projectname
django-admin startproject $projectname
cd $projectname
# Creating environ.env file
cat > environ.env <<EOF
SECRET_KEY=
DEBUG=True
DATABASE=
EOF

# Creating readme file
touch README.md
wget https://github.com/cripto1989/DjangoBoilerplate/blob/master/gitignore

# Apss
mkdir $APP_FOLDER
read -n1 -p "Create the first app(called $MAIN_APP)? [y,n] " doit 
case $doit in  
  y|Y) 
    mkdir ./$APP_FOLDER/$MAIN_APP
    python manage.py startapp $MAIN_APP ./$APP_FOLDER/$MAIN_APP
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