#!/bin/bash

# This shell script file let us run a django project using Gunicorn
# This could be at within the folder project

NAME="Clivo" # Name of the application
DJANGODIR=/path/of/project/ # Django project directory
LOGFILE=/opt/project/gunicorn.log
LOGDIR=$(dirname $LOGFILE)
USER=centos # the user to run as
GROUP=centos # the group to run as
ADDRESS=127.0.0.1:8000
NUM_WORKERS=3 # how many worker processes should Gunicorn spawn
DJANGO_SETTINGS_MODULE=project.settings # which settings file should Django use
DJANGO_WSGI_MODULE=project.wsgi # WSGI module name

echo "Starting $NAME as `whoami`"

# Activate the virtual environment
# cd $DJANGODIR
source /path/virtualenv/bin/activate
export DJANGO_SETTINGS_MODULE=$DJANGO_SETTINGS_MODULE
export PYTHONPATH=$DJANGODIR:$PYTHONPATH

# Start your Django Unicorn
# Programs meant to be run under supervisor should not daemonize themselves (do not use --daemon)
exec gunicorn ${DJANGO_WSGI_MODULE}:application \
    --workers $NUM_WORKERS \
    --bind=$ADDRESS \
    --user=$USER --group=$GROUP \
    --log-level=debug \
    --log-file=$LOGFILE 2>>$LOGFILE
