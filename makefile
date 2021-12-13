create-venv:
	python3 -m venv .venv
	chmod 755 .venv/bin/activate
	( \
		source .venv/bin/activate; \
		python3 -m pip install -r requirements.txt; \
	)

run-tests:
	chmod 755 .venv/bin/activate
	( \
		source .venv/bin/activate; \
		pytest --cov=source tests; \
	)	


