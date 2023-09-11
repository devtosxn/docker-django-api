build:
	docker-compose -f docker-compose.yml up --build -d --remove-orphans
up:
	docker-compose -f docker-compose.yml up -d
	
down:
	docker-compose -f docker-compose.yml down
down_volumes:
	docker-compose -f docker-compose.yml down -v

show_logs:
	docker-compose -f docker-compose.yml logs

createsuperuser:
	docker-compose -f docker-compose.yml run --rm api python3 manage.py createsuperuser

makemigrations:
	docker-compose -f docker-compose.yml run --rm api python3 manage.py makemigrations

migrate:
	docker-compose -f docker-compose.yml run --rm api python3 manage.py migrate

test:
	docker-compose -f docker-compose.yml exec api pytest $(TEST_PATH)
