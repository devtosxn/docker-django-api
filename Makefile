build:
	docker-compose -f docker-compose-staging.yml build
build-dev:
	docker-compose -f docker-compose.yml build

up:
	docker-compose -f docker-compose-staging.yml up --build
up-dev:
	docker-compose -f docker-compose.yml up
	
down:
	docker-compose -f docker-compose-staging.yml down
down-dev:
	docker-compose -f docker-compose.yml down

down_volumes:
	docker-compose -f docker-compose-staging.yml down -v
down_volumes-dev:
	docker-compose -f docker-compose.yml down -v

show_logs:
	docker-compose -f docker-compose-staging.yml logs
show_logs-dev:
	docker-compose -f docker-compose.yml logs

createsuperuser:
	docker-compose -f docker-compose-staging.yml run --rm api python3 manage.py createsuperuser
createsuperuser-dev:
	docker-compose -f docker-compose.yml run --rm api python3 manage.py createsuperuser

makemigrations:
	docker-compose -f docker-compose-staging.yml run --rm api python3 manage.py makemigrations
makemigrations-dev:
	docker-compose -f docker-compose.yml run --rm api python3 manage.py makemigrations

migrate:
	docker-compose -f docker-compose-staging.yml run --rm api python3 manage.py migrate
migrate-dev:
	docker-compose -f docker-compose.yml run --rm api python3 manage.py migrate

test:
	docker-compose -f docker-compose.yml exec api pytest $(TEST_PATH)
