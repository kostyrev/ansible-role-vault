SHELL=/usr/bin/env bash

.PHONY: all setup lint

all: setup

setup: lint

lint:
	@pip install --quiet --user -r requirements.txt
	@pre-commit install

install:
	ansible-playbook -i "localhost," playbook.yml --diff -c local -e "vault_install_only=True"
