# Django Boilerplate

This project aims is to help us to init a django project, following a defined layout of project that give you a easier way to start, following some patterns from [two scoopes of django](https://www.twoscoopspress.com "Two scoops Page").

## Config environ.env
Create or move the file environ.env where you should set all your credentials, the format of your keys should follow the rules from [django-environ](https://github.com/joke2k/django-environ "Django Environ Page").
```
$ mv environ.env.template environ.env
```

## Docker
In order to start running the project, just execute in your terminal:
```
$ docker-compose up
```

All commands about django are executed over the docker: 
```
$ docker-compose run web python manage.py makemigrations
$ docker-compose run web python manage.py showmigrations
$ docker-compose run web python manage.py migrate
```