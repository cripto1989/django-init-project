# Django Boilerplate
The main purpose of this projects is to create a simple project layout using shell scripting as a language for Django projects.

Clone the django.sh file:

```
wget https://raw.githubusercontent.com/cripto1989/DjangoBoilerplate/master/django.sh
```

You have to add permission to django.sh file:
```
chmod +x django.sh
```

For create a empty project, execute:
```
./django.sh
```

Yoy will have to set the name of the project, and this will create 2 folders: environ_project and project, the first one is the environ folder and the second one is all the project.

For this moment you have to change this values, in next files:

config/base.py
```python
WSGI_APPLICATION = 'config.wsgi.application'
ROOT_URLCONF = 'config.urls'
```

config/wsgi.py
```python
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "config.settings")
```
