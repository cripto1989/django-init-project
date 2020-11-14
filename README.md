<p align="center">
  <img src="documentation/python.jpeg">
</p>

# Django Init Project

This project aims is to help us to init a django project, following a defined layout of project that give you a easier way to start, following some patterns from [two scoopes of django](https://www.twoscoopspress.com "Two scoops Page").


### Config environ.env
Create or move the file environ.env where you should set all your credentials, the format of your keys should follow the rules from [docker-environment-variables](https://docs.docker.com/compose/env-file/ "Docker environment variables").
```
$ mv .env.template .env
```

### Commands
In order to start running the project, just execute in your terminal:
```
$ docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
```

Or use whatever command within Makefile for instance `make start`, `make showmigrations`, `make createsuperuser`, please take a look the Makefile to see all available commands. 

### Pycharm configuration
Selecting the interprete from Docker:

```
File >> Settings >> Project >> Project Interprete >> Config Icon >> Add >> Docker Compose
```

Create a new server

```
Run >> Edit configurations >> Add new configurations >> host 0.0.0.0 >> Apply >> Run
```
