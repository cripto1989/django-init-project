### Django Boilerplate

This project aims is to help us to init a django project, following a defined layout of project that give you a easier way to start a quickly project.

Start cloning the project.
```
$ git clone https://github.com/cripto1989/DjangoBoilerplate
```
#### Pipenv
```
$ pipenv shell
```

```
$ pipenv install -r requirements/local.txt
```

**NOTE**: If you don't use pipenv you will have to create a virtualenv manually.

#### Config environ.env
Create/Change the file environ.env where you should set all your credentials.
```
$ mv environ.env.template environ.env
```

Generate a new secret key to the project. [Secret Key Django Generator](https://www.miniwebtool.com/django-secret-key-generator/) and paste it in SECRET_KEY.

Set your database credentials in the DATABASE_URL.

#### Run your new project

Yoy will be able to execute a migrate and runserver commands.

