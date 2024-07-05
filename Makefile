.PHONY: install format lint test sec docs

install:
    @poetry install
format:
    @ruff .
    @isort .
lint:
    @ruff . --check
    @isort . --check
    @prospector --with-tool pep-257 --doc-warning
test:
    @pytest -s -x --cov=<project-name> -vv
sec:
    @pip-audit
