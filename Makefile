POSTGRES_USER=django
POSTGRES_DB=mydb

default: start

start:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up

build:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml build

showmigrations:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web bash -c "./manage.py showmigrations"

makemigrations:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web bash -c "./manage.py makemigrations"	

migrate:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web bash -c "./manage.py migrate"

createsuperuser:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web bash -c "./manage.py createsuperuser"

shell_plus:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web bash -c "./manage.py shell_plus"

web:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web /bin/bash

db:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec /bin/bash

psql:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec db sh -c "psql -d $(POSTGRES_DB) -U $(POSTGRES_USER)"
	