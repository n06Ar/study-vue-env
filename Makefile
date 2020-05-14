SERVICE = node
COMMAND = /bin/bash

.PHONY: up down exec run open
up:
	docker-compose up -d --build
down:
	docker-compose down
run:
	docker-compose run --rm ${SERVICE} ${COMMAND}
exec:
	docker-compose exec ${SERVICE} ${COMMAND}
open:
	open http://127.0.0.1:1234
