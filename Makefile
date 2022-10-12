PYTHON=python3
PYFLAGS=-W ignore::DeprecationWarning
VERSION=`python setup.py --version`

INTERFACE='localhost'

i   ?= '127.0.0.1'

.PHONY: up
up: down
	INTERFACE=$(i) docker-compose up -d

.PHONY: down
down:
	@docker-compose down

.PHONY: stop
stop:
	@docker-compose stop

.PHONY: logs
logs:
	@docker-compose logs -f

.PHONY: bash
bash:
	@docker exec -ti freepbx-app bash
