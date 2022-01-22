.DEFAULT_GOAL := help
.PHONY: help

help:  ##List the Targets
	@LC_ALL=C $(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'




create-venv: ##Create Virtual Enviornment
	python3 -m venv .venv
	chmod 755 .venv/bin/activate
	( \
		source .venv/bin/activate; \
		python3 -m pip install -r requirements.txt; \
	)

run-tests:  ##Run Unit Tests
	chmod 755 .venv/bin/activate
	( \
		source .venv/bin/activate; \
		pytest --cov=source tests; \
	)	


