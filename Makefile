DEV=docker-compose -f docker-compose.yml -f docker-compose.dev.yml

POSTGRES_USER=django
POSTGRES_DB=mydb

TESTFILES?="tests/unit"
TEST_PARAMS?=--no-migrations --reuse-db

default: start

start:
	${DEV} up

build:
	${DEV} build

showmigrations:
	${DEV} exec web bash -c "./manage.py showmigrations"

makemigrations:
	${DEV} exec web bash -c "./manage.py makemigrations"	

migrate:
	${DEV} exec web bash -c "./manage.py migrate"

test:
	${DEV} exec web bash -c "python3 -m pytest --disable-warnings ${TEST_PARAMS} ${TESTFILES}"

createsuperuser:
	${DEV} exec web bash -c "./manage.py createsuperuser"

shell_plus:
	${DEV} exec web bash -c "./manage.py shell_plus"

web:
	${DEV} exec web /bin/bash

db:
	${DEV} exec /bin/bash

psql:
	${DEV} exec db sh -c "psql -d $(POSTGRES_DB) -U $(POSTGRES_USER)"
	