DC = docker compose
EXEC = docker exec -it
ENV = --env-file env/.env
DB_CONTAINER = rental-db

storage-up:
	$(DC) $(ENV) up -d db

storage-down:
	$(DC) $(ENV) down

storage-restart:
	$(DC) $(ENV) restart db

storage-logs:
	$(DC) $(ENV) logs -f db

storage-shell:
	$(EXEC) $(DB_CONTAINER) sh -c 'psql -U $$POSTGRES_USER -d $$POSTGRES_DB'

storage-bash:
	$(EXEC) $(DB_CONTAINER) bash