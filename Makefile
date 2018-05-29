PYBASE := $(shell python3 -m site --user-base)

docs-install:
	pip3 install --user pipenv
	$(PYBASE)/bin/pipenv install --dev

docs-serve:
	$(PYBASE)/bin/pipenv run mkdocs serve

docs-png:
	find docsite -name "*.png" -exec pngcrush -ow {} \;

docs-build:
	$(PYBASE)/bin/pipenv run mkdocs build --clean