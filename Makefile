.PHONY: install test lint clean build

install:
	poetry install

test:
	poetry run pytest

lint:
	poetry run flake8
	poetry run black --check .
	poetry run mypy src

clean:
	rm -rf dist/
	rm -rf *.egg-info
	find . -type d -name __pycache__ -exec rm -rf {} +

build:
	poetry build