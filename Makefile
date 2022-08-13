.PHONY: download-poetry
download-poetry:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

.PHONY: install
install:
	poetry install
	poetry run pre-commit install

.PHONY: requirements
requirements:
	poetry export --without-hashes -o requirements.txt

.PHONY: requirements-dev
requirements-dev:
	poetry export --without-hashes --dev -o requirements-dev.txt
