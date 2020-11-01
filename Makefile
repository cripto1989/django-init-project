default: start

start:
	docker-compose -f docker-compose.yml up

showmigrations:
	docker-compose exec web bash -c "./manage.py showmigrations"

makemigrations:
	docker-compose exec web bash -c "./manage.py makemigrations"	

migrate:
	docker-compose exec web bash -c "./manage.py migrate"

createsuperuser:
	docker-compose exec web bash -c "./manage.py createsuperuser"

shell_plus:
	docker-compose exec web bash -c "./manage.py shell_plus"
	